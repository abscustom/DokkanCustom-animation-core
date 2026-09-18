--1028320:LR_孫悟飯(ビースト)_超必殺技：雷靭烈波
--sp_effect_a4_00024
--sp2684

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 162667; --オーラ立ち〜煙から現れる ef_001
SP_02  = 162669; --振りかぶって〜敵と交差して稲妻 ef_002

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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- オーラ立ち〜煙から現れる
-------------------------------------------------
MAX_FRAME_0 = 594;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- オーラ立ち〜煙から現れる(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--セルマックス用の敵位置調整値
adjust_a = -300;
adjust_b = -10;
adjust_c = 100;
adjust_d = -100;
adjust_e = -10;

--敵の動き1
setDisp( spep_0 + 104 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 214 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 104 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 110 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 134 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 104 + OFFSET_X, 1, -5.8, -5.8 + adjust_a, 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -5.8, -5.8 + adjust_a, 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -1.8, 7.3 + adjust_a, 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -1.8, 7.3 + adjust_a, 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -5, 8.1 + adjust_a, 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -5, 8.1 + adjust_a, 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -58.5, 52.9 + adjust_a, 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -58.5, 52.9 + adjust_a, 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -29.4, 7.4 + adjust_a, 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -29.4, 7.4 + adjust_a, 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -27.6, 7 + adjust_a, 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -27.6, 7 + adjust_a, 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -29.8, 6.7 + adjust_a, 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -29.8, 6.7 + adjust_a, 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 182.4, 52.2 + adjust_a, 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 182.4, 52.2 + adjust_a, 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 193.5, 54.8 + adjust_a, 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 193.5, 54.8 + adjust_a, 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 206.7, 59.4 + adjust_a, 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 206.7, 59.4 + adjust_a, 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 204.6, 49 + adjust_a, 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 204.6, 49 + adjust_a, 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 220.5, 60 + adjust_a, 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 220.5, 60 + adjust_a, 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 220.7, 54.4 + adjust_a, 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 220.7, 54.4 + adjust_a, 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 221, 48.8 + adjust_a, 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 221, 48.8 + adjust_a, 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 221.7, 54.7 + adjust_a, 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 221.7, 54.7 + adjust_a, 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 212, 81.1 + adjust_d, 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 212, 81.1 + adjust_d, 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 438, 67.7 + adjust_d, 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 438, 67.7 + adjust_d, 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 436.1, 64.2 + adjust_d, 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 436.1, 64.2 + adjust_d, 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 236.1, 31.4 + adjust_b, 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 236.1, 31.4 + adjust_b, 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 185.6, 35.3 + adjust_b, 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 185.6, 35.3 + adjust_b, 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 141.2, 25 + adjust_b, 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 141.2, 25 + adjust_b, 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 130.9, 28.3 + adjust_b, 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 130.9, 28.3 + adjust_b, 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 130.3, 27.9 + adjust_b, 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 130.3, 27.9 + adjust_b, 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 75.6, 27.4 + adjust_b, 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 75.6, 27.4 + adjust_b, 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 75.1, 25.9 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 75.1, 25.9 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 74.5, 25.3 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 74.5, 25.3 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 74, 24.7 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 74, 24.7 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 73.5, 28.5 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 73.5, 28.5 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 70.9, 29.3 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 70.9, 29.3 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 74.9, 28.8 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 74.9, 28.8 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 63.2, -11.8 + adjust_e, 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 63.2, -11.8 + adjust_e, 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 53.3, 25.6 + adjust_e, 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 53.3, 25.6 + adjust_e, 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 59.4, 11.2 + adjust_e, 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 59.4, 11.2 + adjust_e, 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 60.3, 11.3 + adjust_e, 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 60.3, 11.3 + adjust_e, 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 69.2, 19.1 + adjust_e, 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 69.2, 19.1 + adjust_e, 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 58.6, 16.2 + adjust_e, 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 58.6, 16.2 + adjust_e, 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 58.6, 17.3 + adjust_e, 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 58.6, 17.3 + adjust_e, 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 58.6, 17.2 + adjust_e, 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 58.6, 17.2 + adjust_e, 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 54.6, 25 + adjust_e, 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 54.6, 25 + adjust_e, 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 54.8, 25 + adjust_e, 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 54.8, 25 + adjust_e, 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 55, 12.7 + adjust_e, 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 55, 12.7 + adjust_e, 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 59.2, 14.9 + adjust_e, 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 59.2, 14.9 + adjust_e, 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 57.2, 11.7 + adjust_e, 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 57.2, 11.7 + adjust_e, 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 55.1, 20.5 + adjust_e, 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 55.1, 20.5 + adjust_e, 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 53.3, 18.9 + adjust_e, 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 53.3, 18.9 + adjust_e, 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 51.9, 16.8 + adjust_e, 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 51.9, 16.8 + adjust_e, 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 53.6, 11.2 + adjust_e, 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 53.6, 11.2 + adjust_e, 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 55.4, 13.7 + adjust_e, 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 55.4, 13.7 + adjust_e, 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 49.8, 19.5 + adjust_e, 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 49.8, 19.5 + adjust_e, 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 51.5, 16.4 + adjust_e, 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 51.5, 16.4 + adjust_e, 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 54.4, 16 + adjust_e, 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 54.4, 16 + adjust_e, 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 58.7, 13.2 + adjust_e, 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 58.7, 13.2 + adjust_e, 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 53.7, 11.7 + adjust_e, 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 53.7, 11.7 + adjust_e, 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 43.1, 11.6 + adjust_e, 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 43.1, 11.6 + adjust_e, 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 43, 11.7 + adjust_e, 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 43, 11.7 + adjust_e, 0 );

setScaleKey( spep_0 + 104 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 0.41, 0.41 );

setRotateKey( spep_0 + 104 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 109 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 110 + OFFSET_X, 1, -50 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, -50 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -5 );

--敵の動き2
setDisp( spep_0 + 314 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 494 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 314 + OFFSET_X, 1, 105 );

changeAnime( spep_0 + 360 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 438 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 470 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 314 + OFFSET_X, 1, -666.9, 140 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -666.9, 140 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -399.2, 132.6 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -399.2, 132.6 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -153.5, 123.6 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -153.5, 123.6 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 17.3, 115.3 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 17.3, 115.3 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 114.9, 111 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 114.9, 111 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 169.9, 108.3 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 169.9, 108.3 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 200.8, 106.4 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 200.8, 106.4 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 217.5, 105 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 217.5, 105 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 194.3, 103.8 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 194.3, 103.8 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 186, 103 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 186, 103 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 164.1, 86 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 164.1, 86 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 154.5, 78.3 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 154.5, 78.3 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 148, 72.9 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 148, 72.9 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 143.1, 68.7 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 143.1, 68.7 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 139.2, 65.2 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 139.2, 65.2 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 135.9, 62.2 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 135.9, 62.2 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 133.1, 59.5 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 133.1, 59.5 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 130.7, 57.1 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 130.7, 57.1 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 128.4, 54.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 128.4, 54.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 126.3, 52.7 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 126.3, 52.7 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 124.1, 50.6 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 124.1, 50.6 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 122.1, 49.1 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 122.1, 49.1 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -117.8 + adjust_c, 50.9 + adjust_d, 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -117.8 + adjust_c, 50.9 + adjust_d, 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -127.9 + adjust_c, 72.8 + adjust_d, 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -127.9 + adjust_c, 72.8 + adjust_d, 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -93.8 + adjust_c, 69.1 + adjust_d, 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -93.8 + adjust_c, 69.1 + adjust_d, 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -134.1 + adjust_c, 31.1 + adjust_d, 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -134.1 + adjust_c, 31.1 + adjust_d, 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -112.2 + adjust_c, 53.1 + adjust_d, 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -112.2 + adjust_c, 53.1 + adjust_d, 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -201.9, 233.2 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -201.9, 233.2 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -291.9, 404.3 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -291.9, 404.3 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -499.1, 668.2 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -499.1, 668.2 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -716.6, 928.4 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -716.6, 928.4 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -628.7, 803.4 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -628.7, 803.4 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -554.2, 713.7 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -554.2, 713.7 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -486, 622.6 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -486, 622.6 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -429.4, 546.3 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -429.4, 546.3 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -381.9, 482.5 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -381.9, 482.5 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -342.2, 429.1 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -342.2, 429.1 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -308.9, 384.3 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -308.9, 384.3 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -280.6, 346.2 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -280.6, 346.2 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -256.2, 313.3 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -256.2, 313.3 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -234.8, 284.5 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -234.8, 284.5 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -215.8, 259 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -215.8, 259 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -198.7, 236 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -198.7, 236 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -183.1, 215 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -183.1, 215 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -168.8, 195.7 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -168.8, 195.7 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -155.5, 177.8 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -155.5, 177.8 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -142.9, 160.9 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -142.9, 160.9 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -131.1, 145 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -131.1, 145 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -119.8, 129.8 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -119.8, 129.8 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -108.9, 115.2 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -108.9, 115.2 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -98.5, 101.1 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -98.5, 101.1 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -94.7, 96.7 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -94.7, 96.7 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -90.9, 92.2 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -90.9, 92.2 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -87.1, 87.8 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -87.1, 87.8 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -83.4, 83.3 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -83.4, 83.3 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -79.6, 78.9 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -79.6, 78.9 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -75.8, 74.5 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, -75.8, 74.5 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, -74.2, 26.8 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, -74.2, 26.8 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, -115.4, -9.1 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -115.4, -9.1 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, -201.2, -167.2 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, -201.2, -167.2 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, -253, -322.1 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, -253, -322.1 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, -296.1, -388.7 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, -296.1, -388.7 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, -300.5, -453.9 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, -300.5, -453.9 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -317.6, -495.7 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -317.6, -495.7 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -326.5, -527.4 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, -326.5, -527.4 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, -339.4, -551.8 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, -339.4, -551.8 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -345.8, -566.6 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -345.8, -566.6 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -350.5, -587.9 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, -350.5, -587.9 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, -352.3, -598.5 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -352.3, -598.5 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -358.6, -606 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -358.6, -606 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -363.6, -606.9 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -363.6, -606.9 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -366.1, -613.8 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -366.1, -613.8 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, -366.3, -614.5 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, -366.3, -614.5 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 288, 334 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 288, 334 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 211.7, 211.1 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 211.7, 211.1 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 159, 125.9 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 159, 125.9 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 127.4, 74.9 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 127.4, 74.9 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 108, 43.6 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 108, 43.6 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 95.7, 23.8 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 95.7, 23.8 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 87.8, 11.1 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 87.8, 11.1 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 82.9, 3.1 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 82.9, 3.1 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 79.9, -1.6 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 79.9, -1.6 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 78.5, -3.7 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 78.5, -3.7 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 64.2, -30 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 64.2, -30 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 21.1, -109.2 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 21.1, -109.2 , 0 );

setScaleKey( spep_0 + 314 + OFFSET_X, 1, 8.53, 8.53 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 8.53, 8.53 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 6.35, 6.35 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 6.35, 6.35 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 439 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 441 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 442 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 443 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 444 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 445 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 447 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 448 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 449 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 450 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 453 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 454 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 0.68, 0.68 );

setRotateKey( spep_0 + 314 + OFFSET_X, 1, 40.1 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, 40.1 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, 36.4 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, 36.4 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, 29.2 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, 25.6 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, 25.6 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, 22 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, 22 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, 11.2 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, 11.2 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, 4.4 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, 4.4 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_0 + 343 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_0 + 347 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 357 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_0 + 359 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, 31 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, 31 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, 31.1 );
setRotateKey( spep_0 + 377 + OFFSET_X, 1, 31.1 );
setRotateKey( spep_0 + 378 + OFFSET_X, 1, 31 );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, 31 );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, -44 );
setRotateKey( spep_0 + 469 + OFFSET_X, 1, -44 );
setRotateKey( spep_0 + 470 + OFFSET_X, 1, -90 );
setRotateKey( spep_0 + 471 + OFFSET_X, 1, -90 );
setRotateKey( spep_0 + 472 + OFFSET_X, 1, -93.6 );
setRotateKey( spep_0 + 473 + OFFSET_X, 1, -93.6 );
setRotateKey( spep_0 + 474 + OFFSET_X, 1, -96.1 );
setRotateKey( spep_0 + 475 + OFFSET_X, 1, -96.1 );
setRotateKey( spep_0 + 476 + OFFSET_X, 1, -97.6 );
setRotateKey( spep_0 + 477 + OFFSET_X, 1, -97.6 );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, -98.6 );
setRotateKey( spep_0 + 479 + OFFSET_X, 1, -98.6 );
setRotateKey( spep_0 + 480 + OFFSET_X, 1, -99.2 );
setRotateKey( spep_0 + 481 + OFFSET_X, 1, -99.2 );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, -99.5 );
setRotateKey( spep_0 + 483 + OFFSET_X, 1, -99.5 );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, -99.8 );
setRotateKey( spep_0 + 485 + OFFSET_X, 1, -99.8 );
setRotateKey( spep_0 + 486 + OFFSET_X, 1, -99.9 );
setRotateKey( spep_0 + 487 + OFFSET_X, 1, -99.9 );
setRotateKey( spep_0 + 488 + OFFSET_X, 1, -100 );
setRotateKey( spep_0 + 489 + OFFSET_X, 1, -100 );
setRotateKey( spep_0 + 490 + OFFSET_X, 1, -101.2 );
setRotateKey( spep_0 + 491 + OFFSET_X, 1, -101.2 );
setRotateKey( spep_0 + 492 + OFFSET_X, 1, -104.8 );
setRotateKey( spep_0 + 494 + OFFSET_X, 1, -104.8 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 98, 0, 18, -1);
setPitch( spep_0 + 0, SE001, -1200 );
setTimeStretch( SE001, 0.2, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1147, "",spep_0 + 96, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 78 );
setPitch( spep_0 + 0, SE002, -1200 );
setTimeStretch( SE002, 0.2, 30, 4 );
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 50 );
setPitch( spep_0 + 0, SE003, -800 );
setTimeStretch( SE003, 0.47, 30, 4 );
SE005 = playSeVer2( spep_0 + 14, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE005, 50 );
setPitch( spep_0 + 14, SE005, -800 );
setTimeStretch( SE005, 0.47, 30, 4 );
SE006 = playSeVer2( spep_0 + 38, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 38, SE006, 50 );
setPitch( spep_0 + 38, SE006, -800 );
setTimeStretch( SE006, 0.47, 30, 4 );
SE007 = playSeVer2( spep_0 + 62, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE007, 50 );
setPitch( spep_0 + 62, SE007, -800 );
setTimeStretch( SE007, 0.47, 30, 4 );

--瞬間移動
SE008 = playSeVer2( spep_0 + 68, 1109, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 68, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE009, 76 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 92; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE00X, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
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
--蹴り
SE010 = playSeVer2( spep_0 + 98, 1003, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 102, 1359, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 102, 1414, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 106, 1187, "", 0, 0, 0, -1);

--画面遷移
SE014 = playSeVer2( spep_0 + 134, 1232, "", 0, 0, 0, -1);

--地面割れる
SE015 = playSeVer2( spep_0 + 154, 1067, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 154, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 154, SE016, 84 );
setPitch( spep_0 + 154, SE016, -800 );
setTimeStretch( SE016, 0.47, 30, 4 );
SE017 = playSeVer2( spep_0 + 156, 1068, "", 0, 0, 0, -1);

--顔アップ
SE018 = playSeVer2( spep_0 + 200, 1356, "",spep_0 + 360, 12, 18, -1);
setStartTimeMs( SE018,  400 );
setPitch( spep_0 + 200, SE018, 500 );
setTimeStretch( SE018, 1.33, 30, 4 );
SE019 = playSeVer2( spep_0 + 202, 1314, "",spep_0 + 366, 0, 24, -1);
SE020 = playSeVer2( spep_0 + 208, 1116, "",spep_0 + 254, 0, 18, -1);
SE021 = playSeVer2( spep_0 + 254, 1117, "", 0, 0, 0, -1);

--敵飛んでいく
SE022 = playSeVer2( spep_0 + 310, 1027, "", 0, 0, 0, -1);

--瞬間移動
SE023 = playSeVer2( spep_0 + 332, 1109, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 332, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 332, SE024, 63 );

--蹴り上げる
SE025 = playSeVer2( spep_0 + 350, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 350, SE025, 184 );
SE026 = playSeVer2( spep_0 + 354, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 354, SE026, 82 );
SE027 = playSeVer2( spep_0 + 356, 1110, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 358, 1187, "", 0, 0, 0, -1);

--瞬間移動
SE029 = playSeVer2( spep_0 + 410, 1109, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 410, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 410, SE030, 50 );

--蹴り落とす
SE031 = playSeVer2( spep_0 + 426, 1187, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 426, 1120, "", 0, 0, 0, -1);

--敵落ちていく
SE033 = playSeVer2( spep_0 + 440, 1121, "",spep_0 + 512, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 440, SE033, 63 );
SE034 = playSeVer2( spep_0 + 440, 1183, "",spep_0 + 512, 0, 16, -1);

--地面激突
SE035 = playSeVer2( spep_0 + 488, 1024, "",spep_0 + 604, 0, 10, -1);
SE036 = playSeVer2( spep_0 + 488, 1159, "",spep_0 + 604, 0, 10, -1);

--悟飯向かってくる
SE037 = playSeVer2( spep_0 + 558, 1182, "",spep_0 + 608, 0, 8, -1);
SE038 = playSeVer2( spep_0 + 558, 1117, "",spep_0 + 608, 0, 10, -1);
SE039 = playSeVer2( spep_0 + 562, 1277, "",spep_0 + 608, 0, 8, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --594f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0) + 2;

-- ** 音 ** --
--構え
SE041 = playSeVer2( spep_1 + 88, 1116, "",spep_1 + 136, 0, 22, -1);
SE042 = playSeVer2( spep_1 + 90, 1004, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_1 + 90, 1147, "",spep_1 + 178, 0, 30, -1);
setPitch( spep_1 + 90, SE043, -800 );
setTimeStretch( SE043, 0.47, 30, 4 );

entryFade(spep_1 + 92, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-------------------------------------------------
-- 振りかぶって〜敵と交差して稲妻
-------------------------------------------------
MAX_FRAME_2 = 306;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 振りかぶって〜敵と交差して稲妻(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 72 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 176 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 72 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 72 + OFFSET_X, 1, 198.2, 3.6 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 198.2, 3.6 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 172.7, -13.9 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 172.7, -13.9 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 176.7, -26.1 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 176.7, -26.1 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 188.1, 11 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 188.1, 11 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 203.6, -9.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 203.6, -9.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 198.2, 0.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 198.2, 0.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 198.2, 3.6 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 198.2, 3.6 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 198.2, 7.6 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 198.2, 7.6 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 198.2, 3 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 198.2, 3 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 196.2, 1.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 196.2, 1.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 196.7, 3.7 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 196.7, 3.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 199.2, -0.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 199.2, -0.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 194.7, 5.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 194.7, 5.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 198.2, 3.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 198.2, 3.6 , 0 );

setScaleKey( spep_2 + 72 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.78, 0.78 );

setRotateKey( spep_2 + 72 + OFFSET_X, 1, 46.4 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 46.4 );

-- ** 音 ** --
--飛び込んでくる
SE044 = playSeVer2( spep_2 + 24, 1182, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 24, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE045, 133 );
SE046 = playSeVer2( spep_2 + 24, 9, "",spep_2 + 58, 0, 16, -1);

--敵ヒット
SE047 = playSeVer2( spep_2 + 38, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 38, SE047, 107 );
SE048 = playSeVer2( spep_2 + 44, 1114, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE048, 120 );
SE049 = playSeVer2( spep_2 + 44, 1126, "",spep_2 + 150, 0, 72, -1);
setSeVolumeByWorkId( spep_2 + 44, SE049, 88 );
SE050 = playSeVer2( spep_2 + 44, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE050, 120 );

--イナヅマ立ち上がる
SE051 = playSeVer2( spep_2 + 76, 1231, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 76, 1440, "", 0, 0, 0, -1);
setPitch( spep_2 + 76, SE052, 500 );
setTimeStretch( SE052, 1.33, 30, 4 );
SE053 = playSeVer2( spep_2 + 100, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE053, 82 );
SE054 = playSeVer2( spep_2 + 100, 1256, "", 0, 0, 0, -1);

--爆発
SE055 = playSeVer2( spep_2 + 150, 1069, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 168, 1159, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 180, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
hideKoScreen();
fadeKoLabel(1,0.5)
dealDamage( spep_2 + 178); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  --306f -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- オーラ立ち〜煙から現れる
-------------------------------------------------
MAX_FRAME_0 = 594;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- オーラ立ち〜煙から現れる(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 45, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--セルマックス用の敵位置調整値
adjust_a = -300;
adjust_b = -10;
adjust_c = 100;
adjust_d = -100;
adjust_e = -10;

--敵の動き1
setDisp( spep_0 + 104 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 214 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 104 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 110 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 134 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 104 + OFFSET_X, 1, 5.8, -5.8 + adjust_a, 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 5.8, -5.8 + adjust_a, 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 1.8, 7.3 + adjust_a, 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 1.8, 7.3 + adjust_a, 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 5, 8.1 + adjust_a, 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 5, 8.1 + adjust_a, 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 58.5, 52.9 + adjust_a, 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 58.5, 52.9 + adjust_a, 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 29.4, 7.4 + adjust_a, 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 29.4, 7.4 + adjust_a, 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 27.6, 7 + adjust_a, 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 27.6, 7 + adjust_a, 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 29.8, 6.7 + adjust_a, 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 29.8, 6.7 + adjust_a, 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -182.4, 52.2 + adjust_a, 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -182.4, 52.2 + adjust_a, 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -193.5, 54.8 + adjust_a, 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -193.5, 54.8 + adjust_a, 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -206.7, 59.4 + adjust_a, 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -206.7, 59.4 + adjust_a, 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -204.6, 49 + adjust_a, 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -204.6, 49 + adjust_a, 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -220.5, 60 + adjust_a, 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -220.5, 60 + adjust_a, 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -220.7, 54.4 + adjust_a, 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -220.7, 54.4 + adjust_a, 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -221, 48.8 + adjust_a, 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -221, 48.8 + adjust_a, 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -221.7, 54.7 + adjust_a, 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -221.7, 54.7 + adjust_a, 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -212, 81.1 + adjust_d, 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -212, 81.1 + adjust_d, 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -438, 67.7 + adjust_d, 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -438, 67.7 + adjust_d, 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -436.1, 64.2 + adjust_d, 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -436.1, 64.2 + adjust_d, 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -236.1, 31.4 + adjust_b, 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -236.1, 31.4 + adjust_b, 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -185.6, 35.3 + adjust_b, 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -185.6, 35.3 + adjust_b, 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -141.2, 25 + adjust_b, 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -141.2, 25 + adjust_b, 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -130.9, 28.3 + adjust_b, 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -130.9, 28.3 + adjust_b, 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -130.3, 27.9 + adjust_b, 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -130.3, 27.9 + adjust_b, 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -75.6, 27.4 + adjust_b, 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -75.6, 27.4 + adjust_b, 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -75.1, 25.9 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -75.1, 25.9 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -74.5, 25.3 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -74.5, 25.3 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -74, 24.7 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -74, 24.7 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -73.5, 28.5 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -73.5, 28.5 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -70.9, 29.3 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -70.9, 29.3 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -74.9, 28.8 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -74.9, 28.8 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -63.2, -11.8 + adjust_e, 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -63.2, -11.8 + adjust_e, 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -53.3, 25.6 + adjust_e, 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -53.3, 25.6 + adjust_e, 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -59.4, 11.2 + adjust_e, 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -59.4, 11.2 + adjust_e, 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -60.3, 11.3 + adjust_e, 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -60.3, 11.3 + adjust_e, 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -69.2, 19.1 + adjust_e, 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -69.2, 19.1 + adjust_e, 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -58.6, 16.2 + adjust_e, 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -58.6, 16.2 + adjust_e, 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -58.6, 17.3 + adjust_e, 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -58.6, 17.3 + adjust_e, 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -58.6, 17.2 + adjust_e, 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -58.6, 17.2 + adjust_e, 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -54.6, 25 + adjust_e, 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -54.6, 25 + adjust_e, 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -54.8, 25 + adjust_e, 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -54.8, 25 + adjust_e, 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -55, 12.7 + adjust_e, 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -55, 12.7 + adjust_e, 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -59.2, 14.9 + adjust_e, 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -59.2, 14.9 + adjust_e, 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -57.2, 11.7 + adjust_e, 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -57.2, 11.7 + adjust_e, 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -55.1, 20.5 + adjust_e, 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -55.1, 20.5 + adjust_e, 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -53.3, 18.9 + adjust_e, 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -53.3, 18.9 + adjust_e, 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -51.9, 16.8 + adjust_e, 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -51.9, 16.8 + adjust_e, 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -53.6, 11.2 + adjust_e, 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -53.6, 11.2 + adjust_e, 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -55.4, 13.7 + adjust_e, 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -55.4, 13.7 + adjust_e, 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -49.8, 19.5 + adjust_e, 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -49.8, 19.5 + adjust_e, 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -51.5, 16.4 + adjust_e, 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -51.5, 16.4 + adjust_e, 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -54.4, 16 + adjust_e, 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -54.4, 16 + adjust_e, 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -58.7, 13.2 + adjust_e, 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -58.7, 13.2 + adjust_e, 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -53.7, 11.7 + adjust_e, 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -53.7, 11.7 + adjust_e, 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -43.1, 11.6 + adjust_e, 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -43.1, 11.6 + adjust_e, 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -43, 11.7 + adjust_e, 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -43, 11.7 + adjust_e, 0 );

setScaleKey( spep_0 + 104 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 4.8, 4.8 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 0.41, 0.41 );

setRotateKey( spep_0 + 104 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 109 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 110 + OFFSET_X, 1, 50 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, 50 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, 5 );

--敵の動き2
setDisp( spep_0 + 314 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 494 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 314 + OFFSET_X, 1, 5 );

changeAnime( spep_0 + 360 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 438 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 470 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 314 + OFFSET_X, 1, 666.9, 140 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 666.9, 140 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 399.2, 132.6 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 399.2, 132.6 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 153.5, 123.6 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 153.5, 123.6 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -17.3, 115.3 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -17.3, 115.3 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -114.9, 111 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -114.9, 111 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -169.9, 108.3 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -169.9, 108.3 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -200.8, 106.4 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -200.8, 106.4 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -217.5, 105 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -217.5, 105 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -194.3, 103.8 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -194.3, 103.8 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -186, 103 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -186, 103 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -164.1, 86 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -164.1, 86 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -154.5, 78.3 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -154.5, 78.3 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -148, 72.9 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -148, 72.9 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -143.1, 68.7 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -143.1, 68.7 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -139.2, 65.2 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -139.2, 65.2 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -135.9, 62.2 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -135.9, 62.2 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -133.1, 59.5 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -133.1, 59.5 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -130.7, 57.1 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -130.7, 57.1 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -128.4, 54.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -128.4, 54.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -126.3, 52.7 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -126.3, 52.7 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -124.1, 50.6 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -124.1, 50.6 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -122.1, 49.1 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -122.1, 49.1 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 117.8 + adjust_c, 50.9 + adjust_d, 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 117.8 + adjust_c, 50.9 + adjust_d, 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 127.9 + adjust_c, 72.8 + adjust_d, 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 127.9 + adjust_c, 72.8 + adjust_d, 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 93.8 + adjust_c, 69.1 + adjust_d, 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 93.8 + adjust_c, 69.1 + adjust_d, 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 134.1 + adjust_c, 31.1 + adjust_d, 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 134.1 + adjust_c, 31.1 + adjust_d, 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 112.2 + adjust_c, 53.1 + adjust_d, 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 112.2 + adjust_c, 53.1 + adjust_d, 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 201.9, 233.2 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 201.9, 233.2 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 291.9, 404.3 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 291.9, 404.3 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 499.1, 668.2 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 499.1, 668.2 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 716.6, 928.4 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 716.6, 928.4 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 628.7, 803.4 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 628.7, 803.4 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 554.2, 713.7 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 554.2, 713.7 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 486, 622.6 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 486, 622.6 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 429.4, 546.3 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 429.4, 546.3 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 381.9, 482.5 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 381.9, 482.5 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 342.2, 429.1 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 342.2, 429.1 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 308.9, 384.3 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 308.9, 384.3 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 280.6, 346.2 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 280.6, 346.2 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 256.2, 313.3 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 256.2, 313.3 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 234.8, 284.5 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 234.8, 284.5 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 215.8, 259 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 215.8, 259 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 198.7, 236 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 198.7, 236 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 183.1, 215 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 183.1, 215 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 168.8, 195.7 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 168.8, 195.7 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 155.5, 177.8 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 155.5, 177.8 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 142.9, 160.9 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 142.9, 160.9 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 131.1, 145 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 131.1, 145 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 119.8, 129.8 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 119.8, 129.8 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 108.9, 115.2 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 108.9, 115.2 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 98.5, 101.1 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 98.5, 101.1 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 94.7, 96.7 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 94.7, 96.7 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 90.9, 92.2 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 90.9, 92.2 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 87.1, 87.8 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 87.1, 87.8 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 83.4, 83.3 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 83.4, 83.3 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 79.6, 78.9 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 79.6, 78.9 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 75.8, 74.5 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 75.8, 74.5 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 74.2, 26.8 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 74.2, 26.8 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 115.4, -9.1 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 115.4, -9.1 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 201.2, -167.2 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 201.2, -167.2 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 253, -322.1 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 253, -322.1 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 296.1, -388.7 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 296.1, -388.7 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 300.5, -453.9 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 300.5, -453.9 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 317.6, -495.7 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 317.6, -495.7 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 326.5, -527.4 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 326.5, -527.4 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 339.4, -551.8 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 339.4, -551.8 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 345.8, -566.6 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 345.8, -566.6 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 350.5, -587.9 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 350.5, -587.9 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 352.3, -598.5 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 352.3, -598.5 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 358.6, -606 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 358.6, -606 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 363.6, -606.9 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 363.6, -606.9 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 366.1, -613.8 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 366.1, -613.8 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 366.3, -614.5 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 366.3, -614.5 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, -288, 334 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -288, 334 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -211.7, 211.1 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, -211.7, 211.1 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -159, 125.9 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -159, 125.9 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -127.4, 74.9 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -127.4, 74.9 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -108, 43.6 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -108, 43.6 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -95.7, 23.8 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -95.7, 23.8 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -87.8, 11.1 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, -87.8, 11.1 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -82.9, 3.1 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, -82.9, 3.1 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, -79.9, -1.6 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, -79.9, -1.6 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, -78.5, -3.7 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, -78.5, -3.7 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, -64.2, -30 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, -64.2, -30 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, -21.1, -109.2 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, -21.1, -109.2 , 0 );

setScaleKey( spep_0 + 314 + OFFSET_X, 1, 8.53, 8.53 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 8.53, 8.53 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 6.35, 6.35 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 6.35, 6.35 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 4.37, 4.37 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 439 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 441 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 442 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 443 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 444 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 445 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 447 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 448 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 449 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 450 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 453 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 454 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 458 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 468 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 469 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 470 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 494 + OFFSET_X, 1, 0.68, 0.68 );

setRotateKey( spep_0 + 314 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, -36.4 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, -36.4 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, -32.8 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, -29.2 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, -29.2 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, -22 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, -22 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, -18.4 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, -18.4 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, -7.1 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, -7.1 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, -4.4 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, -4.4 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_0 + 343 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_0 + 347 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 357 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 358 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_0 + 359 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_0 + 360 + OFFSET_X, 1, -31 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, -31 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, -31.1 );
setRotateKey( spep_0 + 377 + OFFSET_X, 1, -31.1 );
setRotateKey( spep_0 + 378 + OFFSET_X, 1, -31 );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, -31 );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, 44 );
setRotateKey( spep_0 + 469 + OFFSET_X, 1, 44 );
setRotateKey( spep_0 + 470 + OFFSET_X, 1, 90 );
setRotateKey( spep_0 + 471 + OFFSET_X, 1, 90 );
setRotateKey( spep_0 + 472 + OFFSET_X, 1, 93.6 );
setRotateKey( spep_0 + 473 + OFFSET_X, 1, 93.6 );
setRotateKey( spep_0 + 474 + OFFSET_X, 1, 96.1 );
setRotateKey( spep_0 + 475 + OFFSET_X, 1, 96.1 );
setRotateKey( spep_0 + 476 + OFFSET_X, 1, 97.6 );
setRotateKey( spep_0 + 477 + OFFSET_X, 1, 97.6 );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, 98.6 );
setRotateKey( spep_0 + 479 + OFFSET_X, 1, 98.6 );
setRotateKey( spep_0 + 480 + OFFSET_X, 1, 99.2 );
setRotateKey( spep_0 + 481 + OFFSET_X, 1, 99.2 );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, 99.5 );
setRotateKey( spep_0 + 483 + OFFSET_X, 1, 99.5 );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, 99.8 );
setRotateKey( spep_0 + 485 + OFFSET_X, 1, 99.8 );
setRotateKey( spep_0 + 486 + OFFSET_X, 1, 99.9 );
setRotateKey( spep_0 + 487 + OFFSET_X, 1, 99.9 );
setRotateKey( spep_0 + 488 + OFFSET_X, 1, 100 );
setRotateKey( spep_0 + 489 + OFFSET_X, 1, 100 );
setRotateKey( spep_0 + 490 + OFFSET_X, 1, 101.2 );
setRotateKey( spep_0 + 491 + OFFSET_X, 1, 101.2 );
setRotateKey( spep_0 + 492 + OFFSET_X, 1, 104.8 );
setRotateKey( spep_0 + 494 + OFFSET_X, 1, 104.8 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 98, 0, 18, -1);
setPitch( spep_0 + 0, SE001, -1200 );
setTimeStretch( SE001, 0.2, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1147, "",spep_0 + 96, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 78 );
setPitch( spep_0 + 0, SE002, -1200 );
setTimeStretch( SE002, 0.2, 30, 4 );
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 50 );
setPitch( spep_0 + 0, SE003, -800 );
setTimeStretch( SE003, 0.47, 30, 4 );
SE005 = playSeVer2( spep_0 + 14, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE005, 50 );
setPitch( spep_0 + 14, SE005, -800 );
setTimeStretch( SE005, 0.47, 30, 4 );
SE006 = playSeVer2( spep_0 + 38, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 38, SE006, 50 );
setPitch( spep_0 + 38, SE006, -800 );
setTimeStretch( SE006, 0.47, 30, 4 );
SE007 = playSeVer2( spep_0 + 62, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE007, 50 );
setPitch( spep_0 + 62, SE007, -800 );
setTimeStretch( SE007, 0.47, 30, 4 );

--瞬間移動
SE008 = playSeVer2( spep_0 + 68, 1109, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 68, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE009, 76 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 92; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE00X, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
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
--蹴り
SE010 = playSeVer2( spep_0 + 98, 1003, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 102, 1359, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 102, 1414, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 106, 1187, "", 0, 0, 0, -1);

--画面遷移
SE014 = playSeVer2( spep_0 + 134, 1232, "", 0, 0, 0, -1);

--地面割れる
SE015 = playSeVer2( spep_0 + 154, 1067, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 154, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 154, SE016, 84 );
setPitch( spep_0 + 154, SE016, -800 );
setTimeStretch( SE016, 0.47, 30, 4 );
SE017 = playSeVer2( spep_0 + 156, 1068, "", 0, 0, 0, -1);

--顔アップ
SE018 = playSeVer2( spep_0 + 200, 1356, "",spep_0 + 360, 12, 18, -1);
setStartTimeMs( SE018,  400 );
setPitch( spep_0 + 200, SE018, 500 );
setTimeStretch( SE018, 1.33, 30, 4 );
SE019 = playSeVer2( spep_0 + 202, 1314, "",spep_0 + 366, 0, 24, -1);
SE020 = playSeVer2( spep_0 + 208, 1116, "",spep_0 + 254, 0, 18, -1);
SE021 = playSeVer2( spep_0 + 254, 1117, "", 0, 0, 0, -1);

--敵飛んでいく
SE022 = playSeVer2( spep_0 + 310, 1027, "", 0, 0, 0, -1);

--瞬間移動
SE023 = playSeVer2( spep_0 + 332, 1109, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 332, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 332, SE024, 63 );

--蹴り上げる
SE025 = playSeVer2( spep_0 + 350, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 350, SE025, 184 );
SE026 = playSeVer2( spep_0 + 354, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 354, SE026, 82 );
SE027 = playSeVer2( spep_0 + 356, 1110, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 358, 1187, "", 0, 0, 0, -1);

--瞬間移動
SE029 = playSeVer2( spep_0 + 410, 1109, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 410, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 410, SE030, 50 );

--蹴り落とす
SE031 = playSeVer2( spep_0 + 426, 1187, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_0 + 426, 1120, "", 0, 0, 0, -1);

--敵落ちていく
SE033 = playSeVer2( spep_0 + 440, 1121, "",spep_0 + 512, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 440, SE033, 63 );
SE034 = playSeVer2( spep_0 + 440, 1183, "",spep_0 + 512, 0, 16, -1);

--地面激突
SE035 = playSeVer2( spep_0 + 488, 1024, "",spep_0 + 604, 0, 10, -1);
SE036 = playSeVer2( spep_0 + 488, 1159, "",spep_0 + 604, 0, 10, -1);

--悟飯向かってくる
SE037 = playSeVer2( spep_0 + 558, 1182, "",spep_0 + 608, 0, 8, -1);
SE038 = playSeVer2( spep_0 + 558, 1117, "",spep_0 + 608, 0, 10, -1);
SE039 = playSeVer2( spep_0 + 562, 1277, "",spep_0 + 608, 0, 8, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --594f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0) + 2;

-- ** 音 ** --
--構え
SE041 = playSeVer2( spep_1 + 88, 1116, "",spep_1 + 136, 0, 22, -1);
SE042 = playSeVer2( spep_1 + 90, 1004, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_1 + 90, 1147, "",spep_1 + 178, 0, 30, -1);
setPitch( spep_1 + 90, SE043, -800 );
setTimeStretch( SE043, 0.47, 30, 4 );

entryFade(spep_1 + 92, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade

-------------------------------------------------
-- 振りかぶって〜敵と交差して稲妻
-------------------------------------------------
MAX_FRAME_2 = 306;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 振りかぶって〜敵と交差して稲妻(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);


-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_2 + 72 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 176 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 72 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 72 + OFFSET_X, 1, -198.2, 3.6 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -198.2, 3.6 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -172.7, -13.9 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -172.7, -13.9 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -176.7, -26.1 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -176.7, -26.1 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -188.1, 11 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -188.1, 11 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -203.6, -9.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -203.6, -9.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -198.2, 0.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -198.2, 0.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -198.2, 3.6 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -198.2, 3.6 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -198.2, 7.6 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -198.2, 7.6 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -198.2, 3 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -198.2, 3 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -196.2, 1.1 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -196.2, 1.1 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -196.7, 3.7 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -196.7, 3.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -199.2, -0.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -199.2, -0.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -194.7, 5.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -194.7, 5.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -198.2, 3.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -198.2, 3.6 , 0 );

setScaleKey( spep_2 + 72 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.78, 0.78 );

setRotateKey( spep_2 + 72 + OFFSET_X, 1, -46.4 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -46.4 );

-- ** 音 ** --
--飛び込んでくる
SE044 = playSeVer2( spep_2 + 24, 1182, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 24, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE045, 133 );
SE046 = playSeVer2( spep_2 + 24, 9, "",spep_2 + 58, 0, 16, -1);

--敵ヒット
SE047 = playSeVer2( spep_2 + 38, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 38, SE047, 107 );
SE048 = playSeVer2( spep_2 + 44, 1114, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE048, 120 );
SE049 = playSeVer2( spep_2 + 44, 1126, "",spep_2 + 150, 0, 72, -1);
setSeVolumeByWorkId( spep_2 + 44, SE049, 88 );
SE050 = playSeVer2( spep_2 + 44, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE050, 120 );

--イナヅマ立ち上がる
SE051 = playSeVer2( spep_2 + 76, 1231, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 76, 1440, "", 0, 0, 0, -1);
setPitch( spep_2 + 76, SE052, 500 );
setTimeStretch( SE052, 1.33, 30, 4 );
SE053 = playSeVer2( spep_2 + 100, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE053, 82 );
SE054 = playSeVer2( spep_2 + 100, 1256, "", 0, 0, 0, -1);

--爆発
SE055 = playSeVer2( spep_2 + 150, 1069, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_2 + 168, 1159, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 180, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
hideKoScreen();
fadeKoLabel(1,0.5)
dealDamage( spep_2 + 178); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  --306f -4

end