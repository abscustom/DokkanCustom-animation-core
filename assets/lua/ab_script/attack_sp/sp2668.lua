-- 1028470: UR_クリリン＆人造人間18号_夫婦コンビネーション
-- sp_effect_a1_00427
-- sp2668

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 162635;  -- 18号が気弾を構える～クリリンと18号合流 ef_001
SP_01b = 162636;  -- 18号が気弾を構える～クリリンと18号合流 ef_001b
SP_02 = 162638;  -- クリリンの太陽拳～大爆発 ef_002
SP_02b = 162639;  -- クリリンの太陽拳～大爆発 ef_002b



------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

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

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

------------------------------------------------------
-- 18号が気弾を構える～クリリンと18号合流 ef_001
------------------------------------------------------
MAX_FRAME_0 = 516;

-- ** エフェクト等 ** --
SP_001 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  -- 18号が気弾を構える～クリリンと18号合流 ef_001
setEffMoveKey( spep_0 + 0, SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_001, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_001, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_001, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_001, 0 );
setEffAlphaKey( spep_0 + 0, SP_001, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_001, 255 );
--[[
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 ); -- 18号が気弾を構える～クリリンと18号合流 ef_001b
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );
]]
-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 432;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,55, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 55, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 180 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 60 + OFFSET_X, 1, 18 );
changeAnime( spep_0 + 138 + OFFSET_X, 1, 16 );

setMoveKey( spep_0 + 60 + OFFSET_X, 1, 97.1, 92.1 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, 97.1, 92.1 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, 98, 92.1 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 98, 92.1 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 98.8, 92.1 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 98.8, 92.1 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 99.7, 92.1 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 99.7, 92.1 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 100.5, 92.1 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 100.5, 92.1 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 101.4, 92.1 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 101.4, 92.1 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 102.2, 92.1 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 102.2, 92.1 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 103.1, 92.1 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 103.1, 92.1 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 103.9, 92.1 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 103.9, 92.1 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 104.8, 92.1 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 104.8, 92.1 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 105.7, 92.1 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 105.7, 92.1 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 106.5, 92.1 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 106.5, 92.1 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 107.4, 92.1 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 107.4, 92.1 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 108.2, 92.1 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 108.2, 92.1 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 109.1, 92.1 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 109.1, 92.1 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 109.9, 92.1 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 109.9, 92.1 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 110.8, 92.1 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 110.8, 92.1 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 111.6, 92.1 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 111.6, 92.1 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 112.5, 92.1 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 112.5, 92.1 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 113.3, 92.1 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 113.3, 92.1 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 114.2, 92.1 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 114.2, 92.1 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 136.5, 74.8 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 136.5, 74.8 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 110.6, 95.4 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 110.6, 95.4 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 93.4, 82.9 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 93.4, 82.9 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 99.6, 108.2 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 99.6, 108.2 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 132.4, 74.4 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 132.4, 74.4 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 104.8, 79.5 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 104.8, 79.5 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 136.5, 74.8 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 136.5, 74.8 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 110.6, 95.4 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 110.6, 95.4 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 93.4, 82.9 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 93.4, 82.9 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 99.6, 108.2 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 99.6, 108.2 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 132.4, 74.4 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 132.4, 74.4 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 104.8, 79.5 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 104.8, 79.5 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 115.2, 90.7 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 115.2, 90.7 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 125.7, 101.9 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 125.7, 101.9 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 119.9, 96.9 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 119.9, 96.9 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 114.2, 92.1 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 114.2, 92.1 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 118, 74 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 118, 74 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 117.9, 73.9 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 117.9, 73.9 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 117.6, 73.8 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 117.6, 73.8 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 117.2, 73.6 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 117.2, 73.6 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 116.7, 73.3 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 116.7, 73.3 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 116, 72.9 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 116, 72.9 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 114.9, 72.3 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 114.9, 72.3 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 113.5, 71.5 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 113.5, 71.5 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 111.7, 70.4 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 111.7, 70.4 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 109.5, 69.1 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 109.5, 69.1 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 106.9, 67.5 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 106.9, 67.5 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 103.8, 65.6 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 103.8, 65.6 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 100.1, 63.3 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 100.1, 63.3 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 95.7, 60.4 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 95.7, 60.4 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 90.4, 57 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 90.4, 57 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 84.1, 52.9 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 84.1, 52.9 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 76.4, 47.7 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 76.4, 47.7 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 67, 41.2 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 67, 41.2 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 54.8, 32.7 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 54.8, 32.7 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 37.9, 20.7 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 37.9, 20.7 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 9.9, 0 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 9.9, 0 , 0 );

setScaleKey( spep_0 + 60 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 0.97, 0.97 );

setRotateKey( spep_0 + 60 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, 18 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, 18 );

setBlendColor( spep_0 + 60 + OFFSET_X, 1, 3, 0, 0, 0, 0.4);
setBlendColor( spep_0 + 179 + OFFSET_X, 1, 3, 0, 0, 0, 0.4);
setBlendColor( spep_0 + 180 + OFFSET_X, 1, 3, 0, 0, 0, 0);

-- 敵の動き2
setDisp( spep_0 + 300 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 342 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 328 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 300 + OFFSET_X, 1, 136, 139.9 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 136, 139.9 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 134.6, 136.9 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 134.6, 136.9 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 133.3, 133.8 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 133.3, 133.8 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 131.9, 130.8 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 131.9, 130.8 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 130.5, 127.8 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 130.5, 127.8 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 129.2, 124.8 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 129.2, 124.8 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 127.8, 121.7 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 127.8, 121.7 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 126.4, 118.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 126.4, 118.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 125.1, 115.7 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 125.1, 115.7 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 123.7, 112.7 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 123.7, 112.7 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 122.3, 109.6 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 122.3, 109.6 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 121, 106.6 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 121, 106.6 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 119.6, 103.6 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 119.6, 103.6 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 118.3, 100.5 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 118.3, 100.5 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 78.5, 120.7 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 78.5, 120.7 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 185.2, 68.9 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 185.2, 68.9 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 200.1, 31.9 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 200.1, 31.9 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 296.8, -2.6 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 296.8, -2.6 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 351.4, -86.7 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 351.4, -86.7 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 398.6, -123.7 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 398.6, -123.7 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 490.5, -164.4 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 490.5, -164.4 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 582.3, -205 , 0 );

setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.58, 0.58 );

setRotateKey( spep_0 + 300 + OFFSET_X, 1, 18.2 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, 18.2 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, -21.5 );

setBlendColor( spep_0 + 300 + OFFSET_X, 1, 3, 0, 0, 0, 0.4);
setBlendColor( spep_0 + 301 + OFFSET_X, 1, 3, 0, 0, 0, 0.4);
setBlendColor( spep_0 + 302 + OFFSET_X, 1, 3, 0, 0, 0, 0.37);
setBlendColor( spep_0 + 303 + OFFSET_X, 1, 3, 0, 0, 0, 0.37);
setBlendColor( spep_0 + 304 + OFFSET_X, 1, 3, 0, 0, 0, 0.34);
setBlendColor( spep_0 + 305 + OFFSET_X, 1, 3, 0, 0, 0, 0.34);
setBlendColor( spep_0 + 306 + OFFSET_X, 1, 3, 0, 0, 0, 0.31);
setBlendColor( spep_0 + 307 + OFFSET_X, 1, 3, 0, 0, 0, 0.31);
setBlendColor( spep_0 + 308 + OFFSET_X, 1, 3, 0, 0, 0, 0.27);
setBlendColor( spep_0 + 309 + OFFSET_X, 1, 3, 0, 0, 0, 0.27);
setBlendColor( spep_0 + 310 + OFFSET_X, 1, 3, 0, 0, 0, 0.24);
setBlendColor( spep_0 + 311 + OFFSET_X, 1, 3, 0, 0, 0, 0.24);
setBlendColor( spep_0 + 312 + OFFSET_X, 1, 3, 0, 0, 0, 0.21);
setBlendColor( spep_0 + 313 + OFFSET_X, 1, 3, 0, 0, 0, 0.21);
setBlendColor( spep_0 + 314 + OFFSET_X, 1, 3, 0, 0, 0, 0.18);
setBlendColor( spep_0 + 315 + OFFSET_X, 1, 3, 0, 0, 0, 0.18);
setBlendColor( spep_0 + 316 + OFFSET_X, 1, 3, 0, 0, 0, 0.16);
setBlendColor( spep_0 + 317 + OFFSET_X, 1, 3, 0, 0, 0, 0.16);
setBlendColor( spep_0 + 318 + OFFSET_X, 1, 3, 0, 0, 0, 0.14);
setBlendColor( spep_0 + 319 + OFFSET_X, 1, 3, 0, 0, 0, 0.14);
setBlendColor( spep_0 + 320 + OFFSET_X, 1, 3, 0, 0, 0, 0.12);
setBlendColor( spep_0 + 321 + OFFSET_X, 1, 3, 0, 0, 0, 0.12);
setBlendColor( spep_0 + 322 + OFFSET_X, 1, 3, 0, 0, 0, 0.09);
setBlendColor( spep_0 + 323 + OFFSET_X, 1, 3, 0, 0, 0, 0.09);
setBlendColor( spep_0 + 324 + OFFSET_X, 1, 3, 0, 0, 0, 0.05);
setBlendColor( spep_0 + 325 + OFFSET_X, 1, 3, 0, 0, 0, 0.05);
setBlendColor( spep_0 + 326 + OFFSET_X, 1, 3, 0, 0, 0, 0.03);
setBlendColor( spep_0 + 327 + OFFSET_X, 1, 3, 0, 0, 0, 0.03);
setBlendColor( spep_0 + 328 + OFFSET_X, 1, 3, 0, 0, 0, 0);

-- ** 音 ** --
--18号気弾溜め
SE001 = playSeVer2( spep_0 + 12, 1265, "",spep_0 + 114, 4, 16, -1);
setStartTimeMs( SE001,  552 );
SE002 = playSeVer2( spep_0 + 2, 1296, "",spep_0 + 102, 0, 16, -1);
SE003 = playSeVer2( spep_0 + 4, 1262, "",spep_0 + 100, 0, 14, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 46;  -- エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
    
pauseAll( SP_dodge, 67);
    
speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end
    
-----------------------------
--回避しなかった場合
-----------------------------
    
-- ** 音 ** --
--18号気弾溜め
SE004 = playSeVer2( spep_0 + 76, 1021, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 76, 1027, "", 0, 0, 0, -1);

--敵ヒット
SE006 = playSeVer2( spep_0 + 94, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE006, 89 );
SE007 = playSeVer2( spep_0 + 98, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE007, 81 );

--敵向かってくる
SE008 = playSeVer2( spep_0 + 140, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE008, 129 );
SE009 = playSeVer2( spep_0 + 140, 1167, "",spep_0 + 202, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 140, SE009, 62 );

--18号アップ
SE010 = playSeVer2( spep_0 + 170, 8, "", 0, 0, 0, -1);

--画面遷移
SE011 = playSeVer2( spep_0 + 226, 44, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 226, 63, "",spep_0 + 302, 0, 16, -1);

--気弾飛んでくる
SE013 = playSeVer2( spep_0 + 264, 1022, "",spep_0 + 340, 0, 10, -1);
SE014 = playSeVer2( spep_0 + 264, 1312, "",spep_0 + 338, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 264, SE014, 67 );
SE015 = playSeVer2( spep_0 + 264, 1177, "",spep_0 + 336, 0, 8, -1);

--敵ヒット２
SE016 = playSeVer2( spep_0 + 320, 1023, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 328, 1011, "", 0, 0, 0, -1);

--画面遷移２
SE018 = playSeVer2( spep_0 + 348, 1232, "", 0, 0, 0, -1);

--クリリン飛んでくる
SE019 = playSeVer2( spep_0 + 388, 63, "",spep_0 + 458, 0, 18, -1);
SE020 = playSeVer2( spep_0 + 388, 1117, "",spep_0 + 466, 18, 16, -1);
setSeVolumeByWorkId( spep_0 + 388, SE020, 84 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 516

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--クリリンズームアウト
SE023 = playSeVer2( spep_1 + 80, 1072, "", 0, 4, 0, -1);
setStartTimeMs( SE023,  233 );

------------------------------------------------------
-- クリリンの太陽拳～大爆発 ef_002
------------------------------------------------------
MAX_FRAME_2 = 504;

-- ** エフェクト等 ** --
SP_002 = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  -- クリリンの太陽拳～大爆発 ef_002
setEffMoveKey( spep_2 + 0, SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_002, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_002, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_002, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_002, 0 );
setEffAlphaKey( spep_2 + 0, SP_002, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_002, 255 );
--[[
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 ); -- クリリンの太陽拳～大爆発 ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );
]]
-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 58 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 90 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 58 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 58 + OFFSET_X, 1, 52.3, -84.4 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 52.3, -84.4 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 52.8, -84.4 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 52.8, -84.4 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 53.2, -84.4 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 53.2, -84.4 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 53.6, -84.4 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 53.6, -84.4 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 54.1, -84.4 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 54.1, -84.4 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 54.5, -84.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 54.5, -84.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 54.9, -84.4 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 54.9, -84.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 55.4, -84.4 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 55.4, -84.4 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 55.8, -84.4 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 55.8, -84.4 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 56.2, -84.4 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 56.2, -84.4 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 56.7, -84.4 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 56.7, -84.4 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 57.1, -84.4 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 57.1, -84.4 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 57.5, -84.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 57.5, -84.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 58, -84.4 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 58, -84.4 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 58.4, -84.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 58.4, -84.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 58.8, -84.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 58.8, -84.4 , 0 );

setScaleKey( spep_2 + 58 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.98, 0.98 );

setRotateKey( spep_2 + 58 + OFFSET_X, 1, -36 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, -36 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, -35 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, -35 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, -34.6 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, -34.1 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, -34.1 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, -33.6 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, -33.6 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -33.4 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -32.9 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -32.7 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -32.7 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -32.4 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -32.4 );

-- 敵の動き2
setDisp( spep_2 + 294 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 348 + OFFSET_X, 1, 0 );
--setDisp( spep_2 + 436 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 326 + OFFSET_X, 1, 105 );
--changeAnime( spep_2 + 406 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 294 + OFFSET_X, 1, -15.6, 3.2 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -15.6, 3.2 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -15.5, 3.2 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -15.5, 3.2 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -15.3, 3.2 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -15.3, 3.2 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -14.9, 3.2 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -14.9, 3.2 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -14.3, 3.2 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -14.3, 3.2 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -13.6, 3.2 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -13.6, 3.2 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -12.5, 3.2 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -12.5, 3.2 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -11.2, 3.2 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -11.2, 3.2 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -9.6, 3.2 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -9.6, 3.2 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -7.5, 3.2 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -7.5, 3.2 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -5, 3.2 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -5, 3.2 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -1.9, 3.2 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -1.9, 3.2 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 2, 3.2 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 2, 3.2 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 7, 3.2 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 7, 3.2 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 13.5, 3.2 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 13.5, 3.2 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 22.8, 3.2 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 22.8, 3.2 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -30.7, 33.8 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -30.7, 33.8 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -36.8, -9.7 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -36.8, -9.7 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 21.6, 63.2 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 21.6, 63.2 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 21.6, 22 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 21.6, 22 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 3.1, 79.8 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 3.1, 79.8 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 3.1, 11.6 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 3.1, 11.6 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -24.5, 20.3 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -24.5, 20.3 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 21.6, 59.8 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 21.6, 59.8 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -18.4, 73.9 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -18.4, 73.9 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 30.8, 60.3 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 30.8, 60.3 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 0, 37.6 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 0, 37.6 , 0 );

setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1.2, 1.21 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.2, 1.21 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.26, 1.28 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 1.26, 1.28 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 1.33, 1.36 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 1.33, 1.36 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 1.42, 1.46 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 1.42, 1.46 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 1.53, 1.58 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 1.53, 1.58 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 1.66, 1.73 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 1.66, 1.73 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 1.82, 1.91 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 1.82, 1.91 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 2.02, 2.12 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 2.02, 2.12 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 2.28, 2.39 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 2.28, 2.39 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 2.63, 2.75 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 2.63, 2.75 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.88, 0.88 );

setRotateKey( spep_2 + 294 + OFFSET_X, 1, -22.7 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, -22.7 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, -22.5 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -22 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -21.8 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, -21.8 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -21.2 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -21.2 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -20.9 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -20.9 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 16.5 );


-- ** 音 ** --
--太陽拳
SE024 = playSeVer2( spep_2 + 22, 1289, "",spep_2 + 124, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 22, SE024, 43 );
setPitch( spep_2 + 22, SE024, 500 );
setTimeStretch( SE024, 1.33, 30, 4 );
SE025 = playSeVer2( spep_2 + 22, 1264, "",spep_2 + 126, 0, 32, -1);

--クリリンと18号気弾溜め
SE026 = playSeVer2( spep_2 + 86, 1265, "",spep_2 + 182, 10, 14, -1);
setStartTimeMs( SE026,  567 );
SE027 = playSeVer2( spep_2 + 82, 1296, "",spep_2 + 184, 0, 16, -1);
SE028 = playSeVer2( spep_2 + 94, 1117, "",spep_2 + 166, 0, 24, -1);
SE029 = playSeVer2( spep_2 + 100, 1239, "",spep_2 + 170, 0, 14, -1);
SE030 = playSeVer2( spep_2 + 100, 1240, "",spep_2 + 170, 0, 16, -1);

--気弾発射
SE031 = playSeVer2( spep_2 + 150, 1027, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 164, 1021, "", 0, 0, 0, -1);

--気弾飛んでいく
SE033 = playSeVer2( spep_2 + 186, 1121, "",spep_2 + 338, 0, 12, -1);
SE034 = playSeVer2( spep_2 + 186, 1146, "",spep_2 + 338, 28, 12, -1);
setSeVolumeByWorkId( spep_2 + 186, SE034, 72 );

--気弾飛んでいく２
SE035 = playSeVer2( spep_2 + 280, 1242, "",spep_2 + 336, 16, 10, -1);
setSeVolumeByWorkId( spep_2 + 280, SE035, 126 );
setStartTimeMs( SE035,  1133 );
SE037 = playSeVer2( spep_2 + 270, 1241, "",spep_2 + 338, 0, 10, -1);

--気弾合わさる
SE036 = playSeVer2( spep_2 + 240, 1026, "", 0, 0, 0, -1);

--ラスト爆発
SE038 = playSeVer2( spep_2 + 318, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 318, SE038, 58 );
SE039 = playSeVer2( spep_2 + 318, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 318, SE039, 79 );
SE040 = playSeVer2( spep_2 + 320, 1024, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 340, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 340, SE041, 56 );

-- ** おわり ** --
dealDamage( spep_2 + 400 );
endPhase( spep_2 +  MAX_FRAME_2 - 2);  -- 504

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

------------------------------------------------------
-- 18号が気弾を構える～クリリンと18号合流 ef_001
------------------------------------------------------
MAX_FRAME_0 = 516;

-- ** エフェクト等 ** --
SP_001 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  -- 18号が気弾を構える～クリリンと18号合流 ef_001
setEffMoveKey( spep_0 + 0, SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_001, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_001, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_001, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_001, 0 );
setEffAlphaKey( spep_0 + 0, SP_001, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_001, 255 );
--[[
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 ); -- 18号が気弾を構える～クリリンと18号合流 ef_001b
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );
]]
-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 432;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,55, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 55, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 60 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 180 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 60 + OFFSET_X, 1, 118  );
changeAnime( spep_0 + 138 + OFFSET_X, 1, 116  );

setMoveKey( spep_0 + 60 + OFFSET_X, 1, -97.1, 92.1 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -97.1, 92.1 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -98, 92.1 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -98, 92.1 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -98.8, 92.1 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -98.8, 92.1 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -99.7, 92.1 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -99.7, 92.1 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -100.5, 92.1 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -100.5, 92.1 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -101.4, 92.1 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -101.4, 92.1 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -102.2, 92.1 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -102.2, 92.1 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -103.1, 92.1 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -103.1, 92.1 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -103.9, 92.1 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -103.9, 92.1 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -104.8, 92.1 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -104.8, 92.1 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -105.7, 92.1 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -105.7, 92.1 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -106.5, 92.1 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -106.5, 92.1 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -107.4, 92.1 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -107.4, 92.1 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -108.2, 92.1 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -108.2, 92.1 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -109.1, 92.1 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -109.1, 92.1 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -109.9, 92.1 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -109.9, 92.1 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -110.8, 92.1 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -110.8, 92.1 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -111.6, 92.1 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -111.6, 92.1 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -112.5, 92.1 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -112.5, 92.1 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -113.3, 92.1 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -113.3, 92.1 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -114.2, 92.1 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -114.2, 92.1 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -136.5, 74.8 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -136.5, 74.8 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -110.6, 95.4 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -110.6, 95.4 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -93.4, 82.9 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -93.4, 82.9 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -99.6, 108.2 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -99.6, 108.2 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -132.4, 74.4 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -132.4, 74.4 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -104.8, 79.5 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -104.8, 79.5 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -136.5, 74.8 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -136.5, 74.8 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -110.6, 95.4 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -110.6, 95.4 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -93.4, 82.9 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -93.4, 82.9 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -99.6, 108.2 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -99.6, 108.2 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -132.4, 74.4 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -132.4, 74.4 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -104.8, 79.5 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -104.8, 79.5 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -115.2, 90.7 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -115.2, 90.7 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -125.7, 101.9 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -125.7, 101.9 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -119.9, 96.9 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -119.9, 96.9 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -114.2, 92.1 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -114.2, 92.1 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -118, 74 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -118, 74 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -117.9, 73.9 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -117.9, 73.9 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -117.6, 73.8 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -117.6, 73.8 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -117.2, 73.6 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -117.2, 73.6 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -116.7, 73.3 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -116.7, 73.3 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -116, 72.9 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -116, 72.9 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -114.9, 72.3 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -114.9, 72.3 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -113.5, 71.5 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -113.5, 71.5 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -111.7, 70.4 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -111.7, 70.4 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -109.5, 69.1 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -109.5, 69.1 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -106.9, 67.5 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -106.9, 67.5 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -103.8, 65.6 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -103.8, 65.6 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -100.1, 63.3 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -100.1, 63.3 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -95.7, 60.4 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -95.7, 60.4 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -90.4, 57 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -90.4, 57 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -84.1, 52.9 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -84.1, 52.9 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -76.4, 47.7 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -76.4, 47.7 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -67, 41.2 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -67, 41.2 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -54.8, 32.7 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -54.8, 32.7 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -37.9, 20.7 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -37.9, 20.7 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -9.9, 0 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -9.9, 0 , 0 );

setScaleKey( spep_0 + 60 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 0.97, 0.97 );

setRotateKey( spep_0 + 60 + OFFSET_X, 1, 34.5 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, 34.5 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, -18 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, -18 );

setBlendColor( spep_0 + 60 + OFFSET_X, 1, 3, 0, 0, 0, 0.4);
setBlendColor( spep_0 + 179 + OFFSET_X, 1, 3, 0, 0, 0, 0.4);
setBlendColor( spep_0 + 180 + OFFSET_X, 1, 3, 0, 0, 0, 0);

-- 敵の動き2
setDisp( spep_0 + 300 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 342 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 328 + OFFSET_X, 1,7 );

setMoveKey( spep_0 + 300 + OFFSET_X, 1, -136, 139.9 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -136, 139.9 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -134.6, 136.9 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -134.6, 136.9 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -133.3, 133.8 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -133.3, 133.8 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -131.9, 130.8 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -131.9, 130.8 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -130.5, 127.8 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -130.5, 127.8 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -129.2, 124.8 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -129.2, 124.8 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -127.8, 121.7 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -127.8, 121.7 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -126.4, 118.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -126.4, 118.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -125.1, 115.7 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -125.1, 115.7 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -123.7, 112.7 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -123.7, 112.7 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -122.3, 109.6 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -122.3, 109.6 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -121, 106.6 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -121, 106.6 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -119.6, 103.6 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -119.6, 103.6 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -118.3, 100.5 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -118.3, 100.5 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -78.5, 120.7 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -78.5, 120.7 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -185.2, 68.9 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -185.2, 68.9 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -200.1, 31.9 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -200.1, 31.9 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -296.8, -2.6 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -296.8, -2.6 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -351.4, -86.7 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -351.4, -86.7 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -398.6, -123.7 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -398.6, -123.7 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -490.5, -164.4 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -490.5, -164.4 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -582.3, -205 , 0 );

setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.58, 0.58 );

setRotateKey( spep_0 + 300 + OFFSET_X, 1, -18.2 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, -18.2 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, 21.5 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, 21.5 );

setBlendColor( spep_0 + 300 + OFFSET_X, 1, 3, 0, 0, 0, 0.4);
setBlendColor( spep_0 + 301 + OFFSET_X, 1, 3, 0, 0, 0, 0.4);
setBlendColor( spep_0 + 302 + OFFSET_X, 1, 3, 0, 0, 0, 0.37);
setBlendColor( spep_0 + 303 + OFFSET_X, 1, 3, 0, 0, 0, 0.37);
setBlendColor( spep_0 + 304 + OFFSET_X, 1, 3, 0, 0, 0, 0.34);
setBlendColor( spep_0 + 305 + OFFSET_X, 1, 3, 0, 0, 0, 0.34);
setBlendColor( spep_0 + 306 + OFFSET_X, 1, 3, 0, 0, 0, 0.31);
setBlendColor( spep_0 + 307 + OFFSET_X, 1, 3, 0, 0, 0, 0.31);
setBlendColor( spep_0 + 308 + OFFSET_X, 1, 3, 0, 0, 0, 0.27);
setBlendColor( spep_0 + 309 + OFFSET_X, 1, 3, 0, 0, 0, 0.27);
setBlendColor( spep_0 + 310 + OFFSET_X, 1, 3, 0, 0, 0, 0.24);
setBlendColor( spep_0 + 311 + OFFSET_X, 1, 3, 0, 0, 0, 0.24);
setBlendColor( spep_0 + 312 + OFFSET_X, 1, 3, 0, 0, 0, 0.21);
setBlendColor( spep_0 + 313 + OFFSET_X, 1, 3, 0, 0, 0, 0.21);
setBlendColor( spep_0 + 314 + OFFSET_X, 1, 3, 0, 0, 0, 0.18);
setBlendColor( spep_0 + 315 + OFFSET_X, 1, 3, 0, 0, 0, 0.18);
setBlendColor( spep_0 + 316 + OFFSET_X, 1, 3, 0, 0, 0, 0.16);
setBlendColor( spep_0 + 317 + OFFSET_X, 1, 3, 0, 0, 0, 0.16);
setBlendColor( spep_0 + 318 + OFFSET_X, 1, 3, 0, 0, 0, 0.14);
setBlendColor( spep_0 + 319 + OFFSET_X, 1, 3, 0, 0, 0, 0.14);
setBlendColor( spep_0 + 320 + OFFSET_X, 1, 3, 0, 0, 0, 0.12);
setBlendColor( spep_0 + 321 + OFFSET_X, 1, 3, 0, 0, 0, 0.12);
setBlendColor( spep_0 + 322 + OFFSET_X, 1, 3, 0, 0, 0, 0.09);
setBlendColor( spep_0 + 323 + OFFSET_X, 1, 3, 0, 0, 0, 0.09);
setBlendColor( spep_0 + 324 + OFFSET_X, 1, 3, 0, 0, 0, 0.05);
setBlendColor( spep_0 + 325 + OFFSET_X, 1, 3, 0, 0, 0, 0.05);
setBlendColor( spep_0 + 326 + OFFSET_X, 1, 3, 0, 0, 0, 0.03);
setBlendColor( spep_0 + 327 + OFFSET_X, 1, 3, 0, 0, 0, 0.03);
setBlendColor( spep_0 + 328 + OFFSET_X, 1, 3, 0, 0, 0, 0);

-- ** 音 ** --
--18号気弾溜め
SE001 = playSeVer2( spep_0 + 12, 1265, "",spep_0 + 114, 4, 16, -1);
setStartTimeMs( SE001,  552 );
SE002 = playSeVer2( spep_0 + 2, 1296, "",spep_0 + 102, 0, 16, -1);
SE003 = playSeVer2( spep_0 + 4, 1262, "",spep_0 + 100, 0, 14, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 46;  -- エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
    
pauseAll( SP_dodge, 67);
    
speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end
    
-----------------------------
--回避しなかった場合
-----------------------------
    
-- ** 音 ** --
--18号気弾溜め
SE004 = playSeVer2( spep_0 + 76, 1021, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 76, 1027, "", 0, 0, 0, -1);

--敵ヒット
SE006 = playSeVer2( spep_0 + 94, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 94, SE006, 89 );
SE007 = playSeVer2( spep_0 + 98, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE007, 81 );

--敵向かってくる
SE008 = playSeVer2( spep_0 + 140, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE008, 129 );
SE009 = playSeVer2( spep_0 + 140, 1167, "",spep_0 + 202, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 140, SE009, 62 );

--18号アップ
SE010 = playSeVer2( spep_0 + 170, 8, "", 0, 0, 0, -1);

--画面遷移
SE011 = playSeVer2( spep_0 + 226, 44, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 226, 63, "",spep_0 + 302, 0, 16, -1);

--気弾飛んでくる
SE013 = playSeVer2( spep_0 + 264, 1022, "",spep_0 + 340, 0, 10, -1);
SE014 = playSeVer2( spep_0 + 264, 1312, "",spep_0 + 338, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 264, SE014, 67 );
SE015 = playSeVer2( spep_0 + 264, 1177, "",spep_0 + 336, 0, 8, -1);

--敵ヒット２
SE016 = playSeVer2( spep_0 + 320, 1023, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 328, 1011, "", 0, 0, 0, -1);

--画面遷移２
SE018 = playSeVer2( spep_0 + 348, 1232, "", 0, 0, 0, -1);

--クリリン飛んでくる
SE019 = playSeVer2( spep_0 + 388, 63, "",spep_0 + 458, 0, 18, -1);
SE020 = playSeVer2( spep_0 + 388, 1117, "",spep_0 + 466, 18, 16, -1);
setSeVolumeByWorkId( spep_0 + 388, SE020, 84 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 516

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--クリリンズームアウト
SE023 = playSeVer2( spep_1 + 80, 1072, "", 0, 4, 0, -1);
setStartTimeMs( SE023,  233 );

------------------------------------------------------
-- クリリンの太陽拳～大爆発 ef_002
------------------------------------------------------
MAX_FRAME_2 = 504;

-- ** エフェクト等 ** --
SP_002 = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  -- クリリンの太陽拳～大爆発 ef_002
setEffMoveKey( spep_2 + 0, SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_002, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_002, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_002, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_002, 0 );
setEffAlphaKey( spep_2 + 0, SP_002, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_002, 255 );
--[[
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 ); -- クリリンの太陽拳～大爆発 ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );
]]
-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 58 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 90 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 58 + OFFSET_X, 1,6 );

setMoveKey( spep_2 + 58 + OFFSET_X, 1, -52.3, -84.4 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -52.3, -84.4 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -52.8, -84.4 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -52.8, -84.4 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -53.2, -84.4 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -53.2, -84.4 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -53.6, -84.4 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -53.6, -84.4 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -54.1, -84.4 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -54.1, -84.4 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -54.5, -84.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -54.5, -84.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -54.9, -84.4 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -54.9, -84.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -55.4, -84.4 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -55.4, -84.4 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -55.8, -84.4 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -55.8, -84.4 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -56.2, -84.4 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -56.2, -84.4 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -56.7, -84.4 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -56.7, -84.4 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -57.1, -84.4 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -57.1, -84.4 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -57.5, -84.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -57.5, -84.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -58, -84.4 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -58, -84.4 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -58.4, -84.4 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -58.4, -84.4 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -58.8, -84.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -58.8, -84.4 , 0 );

setScaleKey( spep_2 + 58 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 0.98, 0.98 );

setRotateKey( spep_2 + 58 + OFFSET_X, 1, 36 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, 36 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, 35 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, 35 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, 34.3 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, 34.3 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, 34.1 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, 34.1 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 33.1 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 33.1 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 32.7 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 32.4 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 32.4 );

-- 敵の動き2
setDisp( spep_2 + 294 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 348 + OFFSET_X, 1, 0 );
--setDisp( spep_2 + 436 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 326 + OFFSET_X, 1,5 );
--changeAnime( spep_2 + 406 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 294 + OFFSET_X, 1, 15.6, 3.2 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 15.6, 3.2 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 15.5, 3.2 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 15.5, 3.2 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 15.3, 3.2 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 15.3, 3.2 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 14.9, 3.2 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 14.9, 3.2 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 14.3, 3.2 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 14.3, 3.2 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 13.6, 3.2 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 13.6, 3.2 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 12.5, 3.2 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 12.5, 3.2 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 11.2, 3.2 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 11.2, 3.2 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 9.6, 3.2 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 9.6, 3.2 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 7.5, 3.2 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 7.5, 3.2 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 5, 3.2 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 5, 3.2 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 1.9, 3.2 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 1.9, 3.2 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -2, 3.2 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -2, 3.2 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -7, 3.2 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -7, 3.2 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -13.5, 3.2 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -13.5, 3.2 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -22.8, 3.2 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -22.8, 3.2 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 30.7, 33.8 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 30.7, 33.8 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 36.8, -9.7 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 36.8, -9.7 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -21.6, 63.2 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -21.6, 63.2 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -21.6, 22 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -21.6, 22 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -3.1, 79.8 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -3.1, 79.8 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -3.1, 11.6 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -3.1, 11.6 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 24.5, 20.3 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 24.5, 20.3 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -21.6, 59.8 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -21.6, 59.8 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 18.4, 73.9 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 18.4, 73.9 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -30.8, 60.3 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -30.8, 60.3 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 0, 37.6 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 0, 37.6 , 0 );

setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1.2, 1.21 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.2, 1.21 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.26, 1.28 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 1.26, 1.28 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 1.33, 1.36 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 1.33, 1.36 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 1.42, 1.46 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 1.42, 1.46 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 1.53, 1.58 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 1.53, 1.58 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 1.66, 1.73 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 1.66, 1.73 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 1.82, 1.91 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 1.82, 1.91 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 2.02, 2.12 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 2.02, 2.12 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 2.28, 2.39 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 2.28, 2.39 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 2.63, 2.75 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 2.63, 2.75 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.88, 0.88 );

setRotateKey( spep_2 + 294 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 22.5 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, 22.5 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, 22 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, 21.5 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, 21.5 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 21.4 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 21.4 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 21.2 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 21.2 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, 21.1 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, 21.1 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 20.9 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, 20.9 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -16.5 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -16.5 );


-- ** 音 ** --
--太陽拳
SE024 = playSeVer2( spep_2 + 22, 1289, "",spep_2 + 124, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 22, SE024, 43 );
setPitch( spep_2 + 22, SE024, 500 );
setTimeStretch( SE024, 1.33, 30, 4 );
SE025 = playSeVer2( spep_2 + 22, 1264, "",spep_2 + 126, 0, 32, -1);

--クリリンと18号気弾溜め
SE026 = playSeVer2( spep_2 + 86, 1265, "",spep_2 + 182, 10, 14, -1);
setStartTimeMs( SE026,  567 );
SE027 = playSeVer2( spep_2 + 82, 1296, "",spep_2 + 184, 0, 16, -1);
SE028 = playSeVer2( spep_2 + 94, 1117, "",spep_2 + 166, 0, 24, -1);
SE029 = playSeVer2( spep_2 + 100, 1239, "",spep_2 + 170, 0, 14, -1);
SE030 = playSeVer2( spep_2 + 100, 1240, "",spep_2 + 170, 0, 16, -1);

--気弾発射
SE031 = playSeVer2( spep_2 + 150, 1027, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 164, 1021, "", 0, 0, 0, -1);

--気弾飛んでいく
SE033 = playSeVer2( spep_2 + 186, 1121, "",spep_2 + 338, 0, 12, -1);
SE034 = playSeVer2( spep_2 + 186, 1146, "",spep_2 + 338, 28, 12, -1);
setSeVolumeByWorkId( spep_2 + 186, SE034, 72 );

--気弾飛んでいく２
SE035 = playSeVer2( spep_2 + 280, 1242, "",spep_2 + 336, 16, 10, -1);
setSeVolumeByWorkId( spep_2 + 280, SE035, 126 );
setStartTimeMs( SE035,  1133 );
SE037 = playSeVer2( spep_2 + 270, 1241, "",spep_2 + 338, 0, 10, -1);

--気弾合わさる
SE036 = playSeVer2( spep_2 + 240, 1026, "", 0, 0, 0, -1);

--ラスト爆発
SE038 = playSeVer2( spep_2 + 318, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 318, SE038, 58 );
SE039 = playSeVer2( spep_2 + 318, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 318, SE039, 79 );
SE040 = playSeVer2( spep_2 + 320, 1024, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 340, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 340, SE041, 56 );

-- ** おわり ** --
dealDamage( spep_2 + 400 );
endPhase( spep_2 +  MAX_FRAME_2 - 2);  -- 504

end
