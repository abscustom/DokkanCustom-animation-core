-- 1030480: LR_超サイヤ人ベジータ(天使)+超サイヤ人孫悟空(天使)_超必殺技：ファイナルバーストキャノン
-- sp_effect_a2_00255
-- sp2807

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 163523;  -- 開幕～カットイン ef_001
--SP_001b = 163524;  -- 開幕～カットイン ef_001b
SP_002 = 163526;  -- 気弾連射～フィニッシュまで ef_002
--SP_002b = 163527;  -- 気弾連射～フィニッシュまで ef_002b

-- 敵側
--SP_001r = 163525;  -- 開幕～カットイン ef_001r
--SP_002r = 163528;  -- 気弾連射～フィニッシュまで ef_002r

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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕～カットイン ef_001
------------------------------------------------------

setupMovie(0 , SP_001, 0, 1);
MAX_FRAME_0 = 514;
-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );  -- 開幕～カットイン ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 98 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 196 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 98 + OFFSET_X , 1, 104 );
changeAnime( spep_0 + 112 + OFFSET_X , 1, 106 );
changeAnime( spep_0 + 182 + OFFSET_X , 1, 107 );

setMoveKey( spep_0 + 98 + OFFSET_X , 1, 126, 8 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X , 1, 126, 8 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X , 1, 116.4, 11.9 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X , 1, 116.4, 11.9 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X , 1, 104.1, 15.7 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X , 1, 104.1, 15.7 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X , 1, 89, 19.5 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X , 1, 89, 19.5 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X , 1, 71.1, 23.3 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X , 1, 71.1, 23.3 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X , 1, 50.4, 27.1 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X , 1, 50.4, 27.1 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X , 1, 27, 31 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X , 1, 27, 31 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X , 1, 31, 25 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X , 1, 31, 25 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X , 1, 21, 38 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X , 1, 21, 38 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X , 1, 77, 38 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X , 1, 77, 38 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X , 1, 68.8, 43.6 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X , 1, 68.8, 43.6 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X , 1, 71.6, 11.2 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X , 1, 71.6, 11.2 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X , 1, 62.6, 25.2 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X , 1, 62.6, 25.2 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X , 1, 62.5, -8.4 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X , 1, 62.5, -8.4 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X , 1, 53.3, 8.6 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X , 1, 53.3, 8.6 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X , 1, 59.2, -3.4 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X , 1, 59.2, -3.4 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X , 1, 54, -1.5 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X , 1, 54, -1.5 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X , 1, 50.8, -5.5 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X , 1, 50.8, -5.5 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X , 1, 49.6, -7.5 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X , 1, 49.6, -7.5 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X , 1, 48.4, -9.6 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X , 1, 48.4, -9.6 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X , 1, 47.2, -11.6 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X , 1, 47.2, -11.6 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X , 1, 46.1, -13.6 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X , 1, 46.1, -13.6 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X , 1, 44.9, -15.7 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X , 1, 44.9, -15.7 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X , 1, 43.7, -17.7 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X , 1, 43.7, -17.7 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X , 1, 42.7, -19.8 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X , 1, 42.7, -19.8 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X , 1, 41.7, -22 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X , 1, 41.7, -22 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X , 1, 40.7, -24.1 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X , 1, 40.7, -24.1 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X , 1, 39.7, -26.3 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X , 1, 39.7, -26.3 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X , 1, 38.7, -28.4 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X , 1, 38.7, -28.4 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X , 1, 37.7, -30.6 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X , 1, 37.7, -30.6 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X , 1, 36.8, -32.7 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X , 1, 36.8, -32.7 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X , 1, 35.8, -34.9 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X , 1, 35.8, -34.9 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X , 1, 34.8, -37 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X , 1, 34.8, -37 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X , 1, 33.8, -39.2 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X , 1, 33.8, -39.2 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X , 1, 32.8, -41.3 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X , 1, 32.8, -41.3 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X , 1, 31.8, -43.4 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X , 1, 31.8, -43.4 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X , 1, 30.8, -45.6 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X , 1, 30.8, -45.6 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X , 1, 29.8, -47.7 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X , 1, 29.8, -47.7 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X , 1, 28.8, -49.9 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X , 1, 28.8, -49.9 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X , 1, 27.8, -52 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X , 1, 27.8, -52 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X , 1, 26.8, -54.2 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X , 1, 26.8, -54.2 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X , 1, 25.9, -56.3 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X , 1, 25.9, -56.3 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X , 1, -290.9, -792.7 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X , 1, -290.9, -792.7 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X , 1, -345.1, -885.8 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X , 1, -345.1, -885.8 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X , 1, -399.2, -979 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X , 1, -399.2, -979 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X , 1, -453.4, -1072.1 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X , 1, -453.4, -1072.1 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X , 1, -507.5, -1165.2 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X , 1, -507.5, -1165.2 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X , 1, -561.6, -1258.3 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X , 1, -561.6, -1258.3 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X , 1, -615.6, -1351.5 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X , 1, -615.6, -1351.5 , 0 );

setScaleKey( spep_0 + 98 + OFFSET_X , 1, 1.8, 1.8 );
setScaleKey( spep_0 + 111 + OFFSET_X , 1, 1.8, 1.8 );
setScaleKey( spep_0 + 112 + OFFSET_X , 1, 2, 2 );
setScaleKey( spep_0 + 181 + OFFSET_X , 1, 2, 2 );
setScaleKey( spep_0 + 182 + OFFSET_X , 1, 2.06, 2.06 );
setScaleKey( spep_0 + 183 + OFFSET_X , 1, 2.06, 2.06 );
setScaleKey( spep_0 + 184 + OFFSET_X , 1, 2.42, 2.42 );
setScaleKey( spep_0 + 185 + OFFSET_X , 1, 2.42, 2.42 );
setScaleKey( spep_0 + 186 + OFFSET_X , 1, 2.79, 2.79 );
setScaleKey( spep_0 + 187 + OFFSET_X , 1, 2.79, 2.79 );
setScaleKey( spep_0 + 188 + OFFSET_X , 1, 3.15, 3.15 );
setScaleKey( spep_0 + 189 + OFFSET_X , 1, 3.15, 3.15 );
setScaleKey( spep_0 + 190 + OFFSET_X , 1, 3.51, 3.51 );
setScaleKey( spep_0 + 191 + OFFSET_X , 1, 3.51, 3.51 );
setScaleKey( spep_0 + 192 + OFFSET_X , 1, 3.87, 3.87 );
setScaleKey( spep_0 + 193 + OFFSET_X , 1, 3.87, 3.87 );
setScaleKey( spep_0 + 194 + OFFSET_X , 1, 4.23, 4.23 );
setScaleKey( spep_0 + 196 + OFFSET_X , 1, 4.23, 4.23 );

setRotateKey( spep_0 + 98 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 117 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 118 + OFFSET_X , 1, 1.2 );
setRotateKey( spep_0 + 119 + OFFSET_X , 1, 1.2 );
setRotateKey( spep_0 + 120 + OFFSET_X , 1, 2.4 );
setRotateKey( spep_0 + 121 + OFFSET_X , 1, 2.4 );
setRotateKey( spep_0 + 122 + OFFSET_X , 1, 3.6 );
setRotateKey( spep_0 + 123 + OFFSET_X , 1, 3.6 );
setRotateKey( spep_0 + 124 + OFFSET_X , 1, 9.8 );
setRotateKey( spep_0 + 125 + OFFSET_X , 1, 9.8 );
setRotateKey( spep_0 + 126 + OFFSET_X , 1, 11 );
setRotateKey( spep_0 + 127 + OFFSET_X , 1, 11 );
setRotateKey( spep_0 + 128 + OFFSET_X , 1, 12.2 );
setRotateKey( spep_0 + 129 + OFFSET_X , 1, 12.2 );
setRotateKey( spep_0 + 130 + OFFSET_X , 1, 13.5 );
setRotateKey( spep_0 + 131 + OFFSET_X , 1, 13.5 );
setRotateKey( spep_0 + 132 + OFFSET_X , 1, 14.7 );
setRotateKey( spep_0 + 133 + OFFSET_X , 1, 14.7 );
setRotateKey( spep_0 + 134 + OFFSET_X , 1, 15.9 );
setRotateKey( spep_0 + 135 + OFFSET_X , 1, 15.9 );
setRotateKey( spep_0 + 136 + OFFSET_X , 1, 17.2 );
setRotateKey( spep_0 + 137 + OFFSET_X , 1, 17.2 );
setRotateKey( spep_0 + 138 + OFFSET_X , 1, 18.4 );
setRotateKey( spep_0 + 139 + OFFSET_X , 1, 18.4 );
setRotateKey( spep_0 + 140 + OFFSET_X , 1, 19.7 );
setRotateKey( spep_0 + 141 + OFFSET_X , 1, 19.7 );
setRotateKey( spep_0 + 142 + OFFSET_X , 1, 20.9 );
setRotateKey( spep_0 + 143 + OFFSET_X , 1, 20.9 );
setRotateKey( spep_0 + 144 + OFFSET_X , 1, 22.1 );
setRotateKey( spep_0 + 145 + OFFSET_X , 1, 22.1 );
setRotateKey( spep_0 + 146 + OFFSET_X , 1, 23 );
setRotateKey( spep_0 + 147 + OFFSET_X , 1, 23 );
setRotateKey( spep_0 + 148 + OFFSET_X , 1, 23.9 );
setRotateKey( spep_0 + 149 + OFFSET_X , 1, 23.9 );
setRotateKey( spep_0 + 150 + OFFSET_X , 1, 24.7 );
setRotateKey( spep_0 + 151 + OFFSET_X , 1, 24.7 );
setRotateKey( spep_0 + 152 + OFFSET_X , 1, 25.6 );
setRotateKey( spep_0 + 153 + OFFSET_X , 1, 25.6 );
setRotateKey( spep_0 + 154 + OFFSET_X , 1, 26.5 );
setRotateKey( spep_0 + 155 + OFFSET_X , 1, 26.5 );
setRotateKey( spep_0 + 156 + OFFSET_X , 1, 27.3 );
setRotateKey( spep_0 + 157 + OFFSET_X , 1, 27.3 );
setRotateKey( spep_0 + 158 + OFFSET_X , 1, 28.2 );
setRotateKey( spep_0 + 159 + OFFSET_X , 1, 28.2 );
setRotateKey( spep_0 + 160 + OFFSET_X , 1, 29.1 );
setRotateKey( spep_0 + 161 + OFFSET_X , 1, 29.1 );
setRotateKey( spep_0 + 162 + OFFSET_X , 1, 29.9 );
setRotateKey( spep_0 + 163 + OFFSET_X , 1, 29.9 );
setRotateKey( spep_0 + 164 + OFFSET_X , 1, 30.8 );
setRotateKey( spep_0 + 165 + OFFSET_X , 1, 30.8 );
setRotateKey( spep_0 + 166 + OFFSET_X , 1, 31.7 );
setRotateKey( spep_0 + 167 + OFFSET_X , 1, 31.7 );
setRotateKey( spep_0 + 168 + OFFSET_X , 1, 32.5 );
setRotateKey( spep_0 + 169 + OFFSET_X , 1, 32.5 );
setRotateKey( spep_0 + 170 + OFFSET_X , 1, 33.4 );
setRotateKey( spep_0 + 171 + OFFSET_X , 1, 33.4 );
setRotateKey( spep_0 + 172 + OFFSET_X , 1, 34.3 );
setRotateKey( spep_0 + 173 + OFFSET_X , 1, 34.3 );
setRotateKey( spep_0 + 174 + OFFSET_X , 1, 35.1 );
setRotateKey( spep_0 + 175 + OFFSET_X , 1, 35.1 );
setRotateKey( spep_0 + 176 + OFFSET_X , 1, 36 );
setRotateKey( spep_0 + 177 + OFFSET_X , 1, 36 );
setRotateKey( spep_0 + 178 + OFFSET_X , 1, 36.9 );
setRotateKey( spep_0 + 179 + OFFSET_X , 1, 36.9 );
setRotateKey( spep_0 + 180 + OFFSET_X , 1, 37.7 );
setRotateKey( spep_0 + 181 + OFFSET_X , 1, 37.7 );
setRotateKey( spep_0 + 182 + OFFSET_X , 1, 120 );
setRotateKey( spep_0 + 196 + OFFSET_X , 1, 120 );

--敵の動き2
setDisp( spep_0 + 236 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 278 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 236 + OFFSET_X , 1, 5 );

setMoveKey( spep_0 + 236 + OFFSET_X , 1, 18.6, 70.9 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X , 1, 18.6, 70.9 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X , 1, 16.4, 71.8 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X , 1, 16.4, 71.8 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X , 1, 5, 76.6 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X , 1, 5, 76.6 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X , 1, -28.9, 90.7 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X , 1, -28.9, 90.7 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X , 1, -51.7, 100.2 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X , 1, -51.7, 100.2 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X , 1, -66, 106.1 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X , 1, -66, 106.1 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X , 1, -76.3, 110.4 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X , 1, -76.3, 110.4 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X , 1, -84, 113.6 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X , 1, -84, 113.6 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X , 1, -90, 116.1 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X , 1, -90, 116.1 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X , 1, -94.7, 118 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X , 1, -94.7, 118 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X , 1, -98.3, 119.5 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X , 1, -98.3, 119.5 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X , 1, -101, 120.7 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X , 1, -101, 120.7 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X , 1, -102.9, 121.5 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X , 1, -102.9, 121.5 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X , 1, -104.2, 122 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X , 1, -104.2, 122 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X , 1, -105, 122.3 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X , 1, -105, 122.3 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X , 1, -105.2, 122.2 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X , 1, -105.2, 122.2 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X , 1, -88.2, 108.2 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X , 1, -88.2, 108.2 , 0 );

setScaleKey( spep_0 + 236 + OFFSET_X , 1, 3.71, 3.71 );
setScaleKey( spep_0 + 237 + OFFSET_X , 1, 3.71, 3.71 );
setScaleKey( spep_0 + 238 + OFFSET_X , 1, 3.66, 3.66 );
setScaleKey( spep_0 + 239 + OFFSET_X , 1, 3.66, 3.66 );
setScaleKey( spep_0 + 240 + OFFSET_X , 1, 3.43, 3.43 );
setScaleKey( spep_0 + 241 + OFFSET_X , 1, 3.43, 3.43 );
setScaleKey( spep_0 + 242 + OFFSET_X , 1, 2.75, 2.75 );
setScaleKey( spep_0 + 243 + OFFSET_X , 1, 2.75, 2.75 );
setScaleKey( spep_0 + 244 + OFFSET_X , 1, 2.28, 2.28 );
setScaleKey( spep_0 + 245 + OFFSET_X , 1, 2.28, 2.28 );
setScaleKey( spep_0 + 246 + OFFSET_X , 1, 1.99, 1.99 );
setScaleKey( spep_0 + 247 + OFFSET_X , 1, 1.99, 1.99 );
setScaleKey( spep_0 + 248 + OFFSET_X , 1, 1.79, 1.79 );
setScaleKey( spep_0 + 249 + OFFSET_X , 1, 1.79, 1.79 );
setScaleKey( spep_0 + 250 + OFFSET_X , 1, 1.63, 1.63 );
setScaleKey( spep_0 + 251 + OFFSET_X , 1, 1.63, 1.63 );
setScaleKey( spep_0 + 252 + OFFSET_X , 1, 1.51, 1.51 );
setScaleKey( spep_0 + 253 + OFFSET_X , 1, 1.51, 1.51 );
setScaleKey( spep_0 + 254 + OFFSET_X , 1, 1.41, 1.41 );
setScaleKey( spep_0 + 255 + OFFSET_X , 1, 1.41, 1.41 );
setScaleKey( spep_0 + 256 + OFFSET_X , 1, 1.34, 1.34 );
setScaleKey( spep_0 + 257 + OFFSET_X , 1, 1.34, 1.34 );
setScaleKey( spep_0 + 258 + OFFSET_X , 1, 1.29, 1.29 );
setScaleKey( spep_0 + 259 + OFFSET_X , 1, 1.29, 1.29 );
setScaleKey( spep_0 + 260 + OFFSET_X , 1, 1.25, 1.25 );
setScaleKey( spep_0 + 261 + OFFSET_X , 1, 1.25, 1.25 );
setScaleKey( spep_0 + 262 + OFFSET_X , 1, 1.22, 1.22 );
setScaleKey( spep_0 + 263 + OFFSET_X , 1, 1.22, 1.22 );
setScaleKey( spep_0 + 264 + OFFSET_X , 1, 1.2, 1.2 );
setScaleKey( spep_0 + 278 + OFFSET_X , 1, 1.2, 1.2 );

setRotateKey( spep_0 + 236 + OFFSET_X , 1, -11 );
setRotateKey( spep_0 + 278 + OFFSET_X , 1, -11 );

--敵の動き3
setDisp( spep_0 + 430 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 474 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 430 + OFFSET_X , 1, 6 );

setMoveKey( spep_0 + 430 + OFFSET_X , 1, -249.9, 43 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X , 1, -249.9, 43 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X , 1, -249.9, 38 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X , 1, -249.9, 38 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X , 1, -249.9, 48.2 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X , 1, -249.9, 48.2 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X , 1, -249.9, 28 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X , 1, -249.9, 28 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X , 1, -249.9, 58.2 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X , 1, -249.9, 58.2 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X , 1, -249.9, 37 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X , 1, -249.9, 37 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X , 1, -249.9, 58.2 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X , 1, -249.9, 58.2 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X , 1, -249.9, 32.9 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X , 1, -249.9, 32.9 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X , 1, -249.9, 52.2 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X , 1, -249.9, 52.2 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X , 1, -249.9, 35.9 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X , 1, -249.9, 35.9 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X , 1, -249.9, 50.2 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X , 1, -249.9, 50.2 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X , 1, -249.9, 37.9 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X , 1, -249.9, 37.9 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X , 1, -249.9, 42 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X , 1, -249.9, 42 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X , 1, -254.6, 23.8 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X , 1, -254.6, 23.8 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X , 1, -259.3, 5.6 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X , 1, -259.3, 5.6 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X , 1, -264, -12.6 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X , 1, -264, -12.6 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X , 1, -268.6, -31.5 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X , 1, -268.6, -31.5 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X , 1, -272.9, -48 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X , 1, -272.9, -48 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X , 1, -274.9, -58 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X , 1, -274.9, -58 , 0 );

setScaleKey( spep_0 + 430 + OFFSET_X , 1, 1.1, 1.1 );
setScaleKey( spep_0 + 474 + OFFSET_X , 1, 1.1, 1.1 );

setRotateKey( spep_0 + 430 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 474 + OFFSET_X , 1, 0 );

setBlendColor( spep_0 + 430 + OFFSET_X , 1, 5, 1.0, 1.0, 1.0, 0.5 );
setBlendColor( spep_0 + 472 + OFFSET_X , 1, 5, 1.0, 1.0, 1.0, 0.5 );
setBlendColor( spep_0 + 474 + OFFSET_X , 1, 5, 0, 0, 0, 0 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
SE003 = playSeVer2( spep_0 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE003, 63 );
SE004 = playSeVer2( spep_0 + 44, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE004, 63 );

--飛び込んでくる
SE005 = playSeVer2( spep_0 + 44, 1117, "", 0, 0, 0, -1);

--気が弾ける
SE006 = playSeVer2( spep_0 + 58, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE006, 84 );
SE007 = playSeVer2( spep_0 + 58, 1052, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE007, 66 );

--飛び込んでくる
SE008 = playSeVer2( spep_0 + 66, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 76, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 76, SE009, 133 );

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 90;  -- エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE00X, 0);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 10, SE009, 0);

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
-- 回避しなかった場合
-----------------------------

-- ** 音 ** --
--蹴り
SE010 = playSeVer2( spep_0 + 100, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 100, SE010, 182 );
SE011 = playSeVer2( spep_0 + 110, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE011, 90 );
SE012 = playSeVer2( spep_0 + 110, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE012, 90 );

--翻る
SE013 = playSeVer2( spep_0 + 176, 63, "",spep_0 + 250, 0, 30, -1);
SE014 = playSeVer2( spep_0 + 176, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 176, SE014, 73 );

--気弾発射
SE015 = playSeVer2( spep_0 + 232, 1021, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 232, SE015, 138 );
setStartTimeMs( SE015,  367 );
SE016 = playSeVer2( spep_0 + 226, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 226, SE016, 153 );
SE017 = playSeVer2( spep_0 + 226, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 226, SE017, 120 );
SE018 = playSeVer2( spep_0 + 232, 1202, "",spep_0 + 300, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 232, SE018, 120 );

--敵ヒット
SE019 = playSeVer2( spep_0 + 266, 1024, "", 0, 0, 0, -1);

--顔アップ
SE020 = playSeVer2( spep_0 + 296, 1072, "", 0, 0, 0, -1);

--着地
SE021 = playSeVer2( spep_0 + 370, 1192, "",spep_0 + 396, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 370, SE021, 132 );
SE022 = playSeVer2( spep_0 + 372, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 372, SE022, 146 );
SE023 = playSeVer2( spep_0 + 378, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 378, SE023, 150 );

--気弾発射
SE024 = playSeVer2( spep_0 + 394, 1145, "",spep_0 + 540, 4, 18, -1);
setSeVolumeByWorkId( spep_0 + 394, SE024, 74 );
setStartTimeMs( SE024,  267 );
SE025 = playSeVer2( spep_0 + 394, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 394, SE025, 74 );
SE026 = playSeVer2( spep_0 + 394, 1335, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 394, SE026, 133 );
SE027 = playSeVer2( spep_0 + 400, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 400, SE027, 148 );

--敵ヒット
SE028 = playSeVer2( spep_0 + 424, 1067, "",spep_0 + 532, 0, 12, -1);

--ジャンプ
SE029 = playSeVer2( spep_0 + 460, 1207, "",spep_0 + 532, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 460, SE029, 52 );
SE030 = playSeVer2( spep_0 + 464, 44, "",spep_0 + 536, 0, 14, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 514

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 気弾連射～フィニッシュまで ef_002
------------------------------------------------------
MAX_FRAME_2 = 476;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- 気弾連射～フィニッシュまで ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
--SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- 気弾連射～フィニッシュまで ef_002b
--setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
--setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
--setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
--setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
--setEffRotateKey( spep_2 + 0, SP_02b, 0 );
--setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
--setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
--setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 180 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 240 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 180 + OFFSET_X , 1, 5 );

setMoveKey( spep_2 + 180 + OFFSET_X , 1, 55.5, -3.6 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X , 1, 55.5, -3.6 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X , 1, 55.3, -5.4 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X , 1, 55.3, -5.4 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X , 1, 55.1, -6.8 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X , 1, 55.1, -6.8 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X , 1, 55, -8 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X , 1, 55, -8 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X , 1, 54.9, -8.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X , 1, 54.9, -8.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X , 1, 54.8, -9.7 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X , 1, 54.8, -9.7 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X , 1, 54.7, -10.4 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X , 1, 54.7, -10.4 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X , 1, 54.6, -11 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X , 1, 54.6, -11 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X , 1, 54.6, -11.5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X , 1, 54.6, -11.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X , 1, 54.5, -12 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X , 1, 54.5, -12 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X , 1, 54.4, -12.5 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X , 1, 54.4, -12.5 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X , 1, 54.4, -13 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X , 1, 54.4, -13 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X , 1, 54.3, -13.5 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X , 1, 54.3, -13.5 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X , 1, 54.3, -14.1 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X , 1, 54.3, -14.1 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X , 1, 54.2, -14.7 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X , 1, 54.2, -14.7 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X , 1, 54.1, -15.5 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X , 1, 54.1, -15.5 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X , 1, 54, -16.3 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X , 1, 54, -16.3 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X , 1, 53.9, -17.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X , 1, 53.9, -17.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X , 1, 53.7, -18.7 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X , 1, 53.7, -18.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X , 1, 53.5, -20.3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X , 1, 53.5, -20.3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X , 1, 53.3, -22.4 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X , 1, 53.3, -22.4 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X , 1, 52.9, -25.3 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X , 1, 52.9, -25.3 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X , 1, 52.5, -29 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X , 1, 52.5, -29 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X , 1, 51.9, -33.8 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X , 1, 51.9, -33.8 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X , 1, 51.2, -39.7 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X , 1, 51.2, -39.7 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X , 1, 50.4, -46.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X , 1, 50.4, -46.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X , 1, 49.3, -55.5 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X , 1, 49.3, -55.5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X , 1, 48.1, -66.1 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X , 1, 48.1, -66.1 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X , 1, 46.5, -79.6 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X , 1, 46.5, -79.6 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X , 1, 44, -102.8 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X , 1, 44, -102.8 , 0 );

setScaleKey( spep_2 + 180 + OFFSET_X , 1, 0.6, 0.6 );
setScaleKey( spep_2 + 181 + OFFSET_X , 1, 0.6, 0.6 );
setScaleKey( spep_2 + 182 + OFFSET_X , 1, 0.66, 0.66 );
setScaleKey( spep_2 + 183 + OFFSET_X , 1, 0.66, 0.66 );
setScaleKey( spep_2 + 184 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_2 + 185 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_2 + 186 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_2 + 187 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_2 + 188 + OFFSET_X , 1, 0.78, 0.78 );
setScaleKey( spep_2 + 189 + OFFSET_X , 1, 0.78, 0.78 );
setScaleKey( spep_2 + 190 + OFFSET_X , 1, 0.81, 0.81 );
setScaleKey( spep_2 + 191 + OFFSET_X , 1, 0.81, 0.81 );
setScaleKey( spep_2 + 192 + OFFSET_X , 1, 0.83, 0.83 );
setScaleKey( spep_2 + 193 + OFFSET_X , 1, 0.83, 0.83 );
setScaleKey( spep_2 + 194 + OFFSET_X , 1, 0.85, 0.85 );
setScaleKey( spep_2 + 195 + OFFSET_X , 1, 0.85, 0.85 );
setScaleKey( spep_2 + 196 + OFFSET_X , 1, 0.87, 0.87 );
setScaleKey( spep_2 + 197 + OFFSET_X , 1, 0.87, 0.87 );
setScaleKey( spep_2 + 198 + OFFSET_X , 1, 0.89, 0.89 );
setScaleKey( spep_2 + 199 + OFFSET_X , 1, 0.89, 0.89 );
setScaleKey( spep_2 + 200 + OFFSET_X , 1, 0.9, 0.9 );
setScaleKey( spep_2 + 201 + OFFSET_X , 1, 0.9, 0.9 );
setScaleKey( spep_2 + 202 + OFFSET_X , 1, 0.92, 0.92 );
setScaleKey( spep_2 + 203 + OFFSET_X , 1, 0.92, 0.92 );
setScaleKey( spep_2 + 204 + OFFSET_X , 1, 0.94, 0.94 );
setScaleKey( spep_2 + 205 + OFFSET_X , 1, 0.94, 0.94 );
setScaleKey( spep_2 + 206 + OFFSET_X , 1, 0.96, 0.96 );
setScaleKey( spep_2 + 207 + OFFSET_X , 1, 0.96, 0.96 );
setScaleKey( spep_2 + 208 + OFFSET_X , 1, 0.98, 0.98 );
setScaleKey( spep_2 + 209 + OFFSET_X , 1, 0.98, 0.98 );
setScaleKey( spep_2 + 210 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_2 + 211 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_2 + 212 + OFFSET_X , 1, 1.03, 1.03 );
setScaleKey( spep_2 + 213 + OFFSET_X , 1, 1.03, 1.03 );
setScaleKey( spep_2 + 214 + OFFSET_X , 1, 1.07, 1.07 );
setScaleKey( spep_2 + 215 + OFFSET_X , 1, 1.07, 1.07 );
setScaleKey( spep_2 + 216 + OFFSET_X , 1, 1.12, 1.12 );
setScaleKey( spep_2 + 217 + OFFSET_X , 1, 1.12, 1.12 );
setScaleKey( spep_2 + 218 + OFFSET_X , 1, 1.17, 1.17 );
setScaleKey( spep_2 + 219 + OFFSET_X , 1, 1.17, 1.17 );
setScaleKey( spep_2 + 220 + OFFSET_X , 1, 1.24, 1.24 );
setScaleKey( spep_2 + 221 + OFFSET_X , 1, 1.24, 1.24 );
setScaleKey( spep_2 + 222 + OFFSET_X , 1, 1.34, 1.34 );
setScaleKey( spep_2 + 223 + OFFSET_X , 1, 1.34, 1.34 );
setScaleKey( spep_2 + 224 + OFFSET_X , 1, 1.47, 1.47 );
setScaleKey( spep_2 + 225 + OFFSET_X , 1, 1.47, 1.47 );
setScaleKey( spep_2 + 226 + OFFSET_X , 1, 1.63, 1.63 );
setScaleKey( spep_2 + 227 + OFFSET_X , 1, 1.63, 1.63 );
setScaleKey( spep_2 + 228 + OFFSET_X , 1, 1.83, 1.83 );
setScaleKey( spep_2 + 229 + OFFSET_X , 1, 1.83, 1.83 );
setScaleKey( spep_2 + 230 + OFFSET_X , 1, 2.07, 2.07 );
setScaleKey( spep_2 + 231 + OFFSET_X , 1, 2.07, 2.07 );
setScaleKey( spep_2 + 232 + OFFSET_X , 1, 2.37, 2.37 );
setScaleKey( spep_2 + 233 + OFFSET_X , 1, 2.37, 2.37 );
setScaleKey( spep_2 + 234 + OFFSET_X , 1, 2.73, 2.73 );
setScaleKey( spep_2 + 235 + OFFSET_X , 1, 2.73, 2.73 );
setScaleKey( spep_2 + 236 + OFFSET_X , 1, 3.19, 3.19 );
setScaleKey( spep_2 + 237 + OFFSET_X , 1, 3.19, 3.19 );
setScaleKey( spep_2 + 238 + OFFSET_X , 1, 3.99, 3.99 );
setScaleKey( spep_2 + 240 + OFFSET_X , 1, 3.99, 3.99 );

setRotateKey( spep_2 + 180 + OFFSET_X , 1, 38.6 );
setRotateKey( spep_2 + 240 + OFFSET_X , 1, 38.6 );

-- ** 音 ** --
--腕上に
SE032 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 44, 0, 22, -1);

--気弾溜め
SE033 = playSeVer2( spep_2 + 32, 1216, "", 0, 18, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE033, 63 );
setStartTimeMs( SE033,  433 );
SE035 = playSeVer2( spep_2 + 44, 1191, "",spep_2 + 142, 0, 38, -1);
SE036 = playSeVer2( spep_2 + 44, 1157, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 44, 1360, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 44, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE038, 141 );

--腕上に
SE034 = playSeVer2( spep_2 + 16, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 16, SE034, 123 );

--気弾発射
SE039 = playSeVer2( spep_2 + 136, 1212, "",spep_2 + 286, 18, 44, -1);
setSeVolumeByWorkId( spep_2 + 136, SE039, 85 );
setStartTimeMs( SE039,  633 );
SE040 = playSeVer2( spep_2 + 132, 1133, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE040, 85 );
SE041 = playSeVer2( spep_2 + 132, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE041, 85 );
SE042 = playSeVer2( spep_2 + 132, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE042, 85 );
SE043 = playSeVer2( spep_2 + 136, 1177, "",spep_2 + 266, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 136, SE043, 85 );

--光立ち上がる
SE044 = playSeVer2( spep_2 + 236, 1256, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 236, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 236, SE045, 78 );
SE046 = playSeVer2( spep_2 + 244, 1179, "",spep_2 + 302, 0, 26, -1);

--爆発
SE047 = playSeVer2( spep_2 + 290, 1159, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 310, 1188, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 326, 1024, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 320 );
endPhase( spep_2 + MAX_FRAME_2-2);  -- 476

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
spep_0 = 0;

------------------------------------------------------
-- 開幕～カットイン ef_001
------------------------------------------------------

setupMovie(0 , SP_001, 0, 1);
MAX_FRAME_0 = 514;
-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );  -- 開幕～カットイン ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

---- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 );
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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

----顔カットイン
-- SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 98 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 196 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 98 + OFFSET_X , 1, 4 );
changeAnime( spep_0 + 112 + OFFSET_X , 1, 6 );
changeAnime( spep_0 + 182 + OFFSET_X , 1, 7 );

setMoveKey( spep_0 + 98 + OFFSET_X , 1, -126, 8 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X , 1, -126, 8 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X , 1, -116.4, 11.9 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X , 1, -116.4, 11.9 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X , 1, -104.1, 15.7 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X , 1, -104.1, 15.7 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X , 1, -89, 19.5 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X , 1, -89, 19.5 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X , 1, -71.1, 23.3 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X , 1, -71.1, 23.3 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X , 1, -50.4, 27.1 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X , 1, -50.4, 27.1 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X , 1, -27, 31 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X , 1, -27, 31 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X , 1, -31, 25 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X , 1, -31, 25 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X , 1, -21, 38 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X , 1, -21, 38 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X , 1, -77, 38 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X , 1, -77, 38 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X , 1, -68.8, 43.6 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X , 1, -68.8, 43.6 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X , 1, -71.6, 11.2 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X , 1, -71.6, 11.2 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X , 1, -62.6, 25.2 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X , 1, -62.6, 25.2 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X , 1, -62.5, -8.4 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X , 1, -62.5, -8.4 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X , 1, -53.3, 8.6 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X , 1, -53.3, 8.6 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X , 1, -59.2, -3.4 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X , 1, -59.2, -3.4 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X , 1, -54, -1.5 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X , 1, -54, -1.5 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X , 1, -50.8, -5.5 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X , 1, -50.8, -5.5 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X , 1, -49.6, -7.5 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X , 1, -49.6, -7.5 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X , 1, -48.4, -9.6 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X , 1, -48.4, -9.6 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X , 1, -47.2, -11.6 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X , 1, -47.2, -11.6 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X , 1, -46.1, -13.6 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X , 1, -46.1, -13.6 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X , 1, -44.9, -15.7 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X , 1, -44.9, -15.7 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X , 1, -43.7, -17.7 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X , 1, -43.7, -17.7 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X , 1, -42.7, -19.8 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X , 1, -42.7, -19.8 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X , 1, -41.7, -22 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X , 1, -41.7, -22 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X , 1, -40.7, -24.1 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X , 1, -40.7, -24.1 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X , 1, -39.7, -26.3 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X , 1, -39.7, -26.3 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X , 1, -38.7, -28.4 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X , 1, -38.7, -28.4 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X , 1, -37.7, -30.6 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X , 1, -37.7, -30.6 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X , 1, -36.8, -32.7 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X , 1, -36.8, -32.7 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X , 1, -35.8, -34.9 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X , 1, -35.8, -34.9 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X , 1, -34.8, -37 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X , 1, -34.8, -37 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X , 1, -33.8, -39.2 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X , 1, -33.8, -39.2 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X , 1, -32.8, -41.3 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X , 1, -32.8, -41.3 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X , 1, -31.8, -43.4 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X , 1, -31.8, -43.4 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X , 1, -30.8, -45.6 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X , 1, -30.8, -45.6 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X , 1, -29.8, -47.7 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X , 1, -29.8, -47.7 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X , 1, -28.8, -49.9 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X , 1, -28.8, -49.9 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X , 1, -27.8, -52 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X , 1, -27.8, -52 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X , 1, -26.8, -54.2 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X , 1, -26.8, -54.2 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X , 1, -25.9, -56.3 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X , 1, -25.9, -56.3 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X , 1, 290.9, -792.7 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X , 1, 290.9, -792.7 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X , 1, 345.1, -885.8 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X , 1, 345.1, -885.8 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X , 1, 399.2, -979 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X , 1, 399.2, -979 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X , 1, 453.4, -1072.1 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X , 1, 453.4, -1072.1 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X , 1, 507.5, -1165.2 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X , 1, 507.5, -1165.2 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X , 1, 561.6, -1258.3 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X , 1, 561.6, -1258.3 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X , 1, 615.6, -1351.5 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X , 1, 615.6, -1351.5 , 0 );

setScaleKey( spep_0 + 98 + OFFSET_X , 1, 1.8, 1.8 );
setScaleKey( spep_0 + 111 + OFFSET_X , 1, 1.8, 1.8 );
setScaleKey( spep_0 + 112 + OFFSET_X , 1, 2, 2 );
setScaleKey( spep_0 + 181 + OFFSET_X , 1, 2, 2 );
setScaleKey( spep_0 + 182 + OFFSET_X , 1, 2.06, 2.06 );
setScaleKey( spep_0 + 183 + OFFSET_X , 1, 2.06, 2.06 );
setScaleKey( spep_0 + 184 + OFFSET_X , 1, 2.42, 2.42 );
setScaleKey( spep_0 + 185 + OFFSET_X , 1, 2.42, 2.42 );
setScaleKey( spep_0 + 186 + OFFSET_X , 1, 2.79, 2.79 );
setScaleKey( spep_0 + 187 + OFFSET_X , 1, 2.79, 2.79 );
setScaleKey( spep_0 + 188 + OFFSET_X , 1, 3.15, 3.15 );
setScaleKey( spep_0 + 189 + OFFSET_X , 1, 3.15, 3.15 );
setScaleKey( spep_0 + 190 + OFFSET_X , 1, 3.51, 3.51 );
setScaleKey( spep_0 + 191 + OFFSET_X , 1, 3.51, 3.51 );
setScaleKey( spep_0 + 192 + OFFSET_X , 1, 3.87, 3.87 );
setScaleKey( spep_0 + 193 + OFFSET_X , 1, 3.87, 3.87 );
setScaleKey( spep_0 + 194 + OFFSET_X , 1, 4.23, 4.23 );
setScaleKey( spep_0 + 196 + OFFSET_X , 1, 4.23, 4.23 );

setRotateKey( spep_0 + 98 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 117 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 118 + OFFSET_X , 1, -1.2 );
setRotateKey( spep_0 + 119 + OFFSET_X , 1, -1.2 );
setRotateKey( spep_0 + 120 + OFFSET_X , 1, -2.4 );
setRotateKey( spep_0 + 121 + OFFSET_X , 1, -2.4 );
setRotateKey( spep_0 + 122 + OFFSET_X , 1, -3.6 );
setRotateKey( spep_0 + 123 + OFFSET_X , 1, -3.6 );
setRotateKey( spep_0 + 124 + OFFSET_X , 1, -9.8 );
setRotateKey( spep_0 + 125 + OFFSET_X , 1, -9.8 );
setRotateKey( spep_0 + 126 + OFFSET_X , 1, -11 );
setRotateKey( spep_0 + 127 + OFFSET_X , 1, -11 );
setRotateKey( spep_0 + 128 + OFFSET_X , 1, -12.2 );
setRotateKey( spep_0 + 129 + OFFSET_X , 1, -12.2 );
setRotateKey( spep_0 + 130 + OFFSET_X , 1, -13.5 );
setRotateKey( spep_0 + 131 + OFFSET_X , 1, -13.5 );
setRotateKey( spep_0 + 132 + OFFSET_X , 1, -14.7 );
setRotateKey( spep_0 + 133 + OFFSET_X , 1, -14.7 );
setRotateKey( spep_0 + 134 + OFFSET_X , 1, -15.9 );
setRotateKey( spep_0 + 135 + OFFSET_X , 1, -15.9 );
setRotateKey( spep_0 + 136 + OFFSET_X , 1, -17.2 );
setRotateKey( spep_0 + 137 + OFFSET_X , 1, -17.2 );
setRotateKey( spep_0 + 138 + OFFSET_X , 1, -18.4 );
setRotateKey( spep_0 + 139 + OFFSET_X , 1, -18.4 );
setRotateKey( spep_0 + 140 + OFFSET_X , 1, -19.7 );
setRotateKey( spep_0 + 141 + OFFSET_X , 1, -19.7 );
setRotateKey( spep_0 + 142 + OFFSET_X , 1, -20.9 );
setRotateKey( spep_0 + 143 + OFFSET_X , 1, -20.9 );
setRotateKey( spep_0 + 144 + OFFSET_X , 1, -22.1 );
setRotateKey( spep_0 + 145 + OFFSET_X , 1, -22.1 );
setRotateKey( spep_0 + 146 + OFFSET_X , 1, -23 );
setRotateKey( spep_0 + 147 + OFFSET_X , 1, -23 );
setRotateKey( spep_0 + 148 + OFFSET_X , 1, -23.9 );
setRotateKey( spep_0 + 149 + OFFSET_X , 1, -23.9 );
setRotateKey( spep_0 + 150 + OFFSET_X , 1, -24.7 );
setRotateKey( spep_0 + 151 + OFFSET_X , 1, -24.7 );
setRotateKey( spep_0 + 152 + OFFSET_X , 1, -25.6 );
setRotateKey( spep_0 + 153 + OFFSET_X , 1, -25.6 );
setRotateKey( spep_0 + 154 + OFFSET_X , 1, -26.5 );
setRotateKey( spep_0 + 155 + OFFSET_X , 1, -26.5 );
setRotateKey( spep_0 + 156 + OFFSET_X , 1, -27.3 );
setRotateKey( spep_0 + 157 + OFFSET_X , 1, -27.3 );
setRotateKey( spep_0 + 158 + OFFSET_X , 1, -28.2 );
setRotateKey( spep_0 + 159 + OFFSET_X , 1, -28.2 );
setRotateKey( spep_0 + 160 + OFFSET_X , 1, -29.1 );
setRotateKey( spep_0 + 161 + OFFSET_X , 1, -29.1 );
setRotateKey( spep_0 + 162 + OFFSET_X , 1, -29.9 );
setRotateKey( spep_0 + 163 + OFFSET_X , 1, -29.9 );
setRotateKey( spep_0 + 164 + OFFSET_X , 1, -30.8 );
setRotateKey( spep_0 + 165 + OFFSET_X , 1, -30.8 );
setRotateKey( spep_0 + 166 + OFFSET_X , 1, -31.7 );
setRotateKey( spep_0 + 167 + OFFSET_X , 1, -31.7 );
setRotateKey( spep_0 + 168 + OFFSET_X , 1, -32.5 );
setRotateKey( spep_0 + 169 + OFFSET_X , 1, -32.5 );
setRotateKey( spep_0 + 170 + OFFSET_X , 1, -33.4 );
setRotateKey( spep_0 + 171 + OFFSET_X , 1, -33.4 );
setRotateKey( spep_0 + 172 + OFFSET_X , 1, -34.3 );
setRotateKey( spep_0 + 173 + OFFSET_X , 1, -34.3 );
setRotateKey( spep_0 + 174 + OFFSET_X , 1, -35.1 );
setRotateKey( spep_0 + 175 + OFFSET_X , 1, -35.1 );
setRotateKey( spep_0 + 176 + OFFSET_X , 1, -36 );
setRotateKey( spep_0 + 177 + OFFSET_X , 1, -36 );
setRotateKey( spep_0 + 178 + OFFSET_X , 1, -36.9 );
setRotateKey( spep_0 + 179 + OFFSET_X , 1, -36.9 );
setRotateKey( spep_0 + 180 + OFFSET_X , 1, -37.7 );
setRotateKey( spep_0 + 181 + OFFSET_X , 1, -37.7 );
setRotateKey( spep_0 + 182 + OFFSET_X , 1, -120 );
setRotateKey( spep_0 + 196 + OFFSET_X , 1, -120 );

--敵の動き2
setDisp( spep_0 + 236 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 278 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 236 + OFFSET_X , 1, 105 );

setMoveKey( spep_0 + 236 + OFFSET_X , 1, -18.6, 70.9 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X , 1, -18.6, 70.9 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X , 1, -16.4, 71.8 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X , 1, -16.4, 71.8 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X , 1, -5, 76.6 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X , 1, -5, 76.6 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X , 1, 28.9, 90.7 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X , 1, 28.9, 90.7 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X , 1, 51.7, 100.2 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X , 1, 51.7, 100.2 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X , 1, 66, 106.1 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X , 1, 66, 106.1 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X , 1, 76.3, 110.4 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X , 1, 76.3, 110.4 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X , 1, 84, 113.6 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X , 1, 84, 113.6 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X , 1, 90, 116.1 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X , 1, 90, 116.1 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X , 1, 94.7, 118 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X , 1, 94.7, 118 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X , 1, 98.3, 119.5 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X , 1, 98.3, 119.5 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X , 1, 101, 120.7 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X , 1, 101, 120.7 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X , 1, 102.9, 121.5 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X , 1, 102.9, 121.5 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X , 1, 104.2, 122 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X , 1, 104.2, 122 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X , 1, 105, 122.3 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X , 1, 105, 122.3 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X , 1, 105.2, 122.2 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X , 1, 105.2, 122.2 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X , 1, 88.2, 108.2 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X , 1, 88.2, 108.2 , 0 );

setScaleKey( spep_0 + 236 + OFFSET_X , 1, 3.71, 3.71 );
setScaleKey( spep_0 + 237 + OFFSET_X , 1, 3.71, 3.71 );
setScaleKey( spep_0 + 238 + OFFSET_X , 1, 3.66, 3.66 );
setScaleKey( spep_0 + 239 + OFFSET_X , 1, 3.66, 3.66 );
setScaleKey( spep_0 + 240 + OFFSET_X , 1, 3.43, 3.43 );
setScaleKey( spep_0 + 241 + OFFSET_X , 1, 3.43, 3.43 );
setScaleKey( spep_0 + 242 + OFFSET_X , 1, 2.75, 2.75 );
setScaleKey( spep_0 + 243 + OFFSET_X , 1, 2.75, 2.75 );
setScaleKey( spep_0 + 244 + OFFSET_X , 1, 2.28, 2.28 );
setScaleKey( spep_0 + 245 + OFFSET_X , 1, 2.28, 2.28 );
setScaleKey( spep_0 + 246 + OFFSET_X , 1, 1.99, 1.99 );
setScaleKey( spep_0 + 247 + OFFSET_X , 1, 1.99, 1.99 );
setScaleKey( spep_0 + 248 + OFFSET_X , 1, 1.79, 1.79 );
setScaleKey( spep_0 + 249 + OFFSET_X , 1, 1.79, 1.79 );
setScaleKey( spep_0 + 250 + OFFSET_X , 1, 1.63, 1.63 );
setScaleKey( spep_0 + 251 + OFFSET_X , 1, 1.63, 1.63 );
setScaleKey( spep_0 + 252 + OFFSET_X , 1, 1.51, 1.51 );
setScaleKey( spep_0 + 253 + OFFSET_X , 1, 1.51, 1.51 );
setScaleKey( spep_0 + 254 + OFFSET_X , 1, 1.41, 1.41 );
setScaleKey( spep_0 + 255 + OFFSET_X , 1, 1.41, 1.41 );
setScaleKey( spep_0 + 256 + OFFSET_X , 1, 1.34, 1.34 );
setScaleKey( spep_0 + 257 + OFFSET_X , 1, 1.34, 1.34 );
setScaleKey( spep_0 + 258 + OFFSET_X , 1, 1.29, 1.29 );
setScaleKey( spep_0 + 259 + OFFSET_X , 1, 1.29, 1.29 );
setScaleKey( spep_0 + 260 + OFFSET_X , 1, 1.25, 1.25 );
setScaleKey( spep_0 + 261 + OFFSET_X , 1, 1.25, 1.25 );
setScaleKey( spep_0 + 262 + OFFSET_X , 1, 1.22, 1.22 );
setScaleKey( spep_0 + 263 + OFFSET_X , 1, 1.22, 1.22 );
setScaleKey( spep_0 + 264 + OFFSET_X , 1, 1.2, 1.2 );
setScaleKey( spep_0 + 278 + OFFSET_X , 1, 1.2, 1.2 );

setRotateKey( spep_0 + 236 + OFFSET_X , 1, 11 );
setRotateKey( spep_0 + 278 + OFFSET_X , 1, 11 );

--敵の動き3
setDisp( spep_0 + 430 + OFFSET_X , 1, 1 );
setDisp( spep_0 + 474 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 430 + OFFSET_X , 1, 106 );

setMoveKey( spep_0 + 430 + OFFSET_X , 1, 249.9, 43 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X , 1, 249.9, 43 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X , 1, 249.9, 38 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X , 1, 249.9, 38 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X , 1, 249.9, 48.2 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X , 1, 249.9, 48.2 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X , 1, 249.9, 28 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X , 1, 249.9, 28 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X , 1, 249.9, 58.2 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X , 1, 249.9, 58.2 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X , 1, 249.9, 37 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X , 1, 249.9, 37 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X , 1, 249.9, 58.2 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X , 1, 249.9, 58.2 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X , 1, 249.9, 32.9 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X , 1, 249.9, 32.9 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X , 1, 249.9, 52.2 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X , 1, 249.9, 52.2 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X , 1, 249.9, 35.9 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X , 1, 249.9, 35.9 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X , 1, 249.9, 50.2 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X , 1, 249.9, 50.2 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X , 1, 249.9, 37.9 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X , 1, 249.9, 37.9 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X , 1, 249.9, 42 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X , 1, 249.9, 42 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X , 1, 254.6, 23.8 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X , 1, 254.6, 23.8 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X , 1, 259.3, 5.6 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X , 1, 259.3, 5.6 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X , 1, 264, -12.6 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X , 1, 264, -12.6 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X , 1, 268.6, -31.5 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X , 1, 268.6, -31.5 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X , 1, 272.9, -48 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X , 1, 272.9, -48 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X , 1, 274.9, -58 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X , 1, 274.9, -58 , 0 );

setScaleKey( spep_0 + 430 + OFFSET_X , 1, 1.1, 1.1 );
setScaleKey( spep_0 + 474 + OFFSET_X , 1, 1.1, 1.1 );

setRotateKey( spep_0 + 430 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 474 + OFFSET_X , 1, 0 );

setBlendColor( spep_0 + 430 + OFFSET_X , 1, 5, 1.0, 1.0, 1.0, 0.5 );
setBlendColor( spep_0 + 472 + OFFSET_X , 1, 5, 1.0, 1.0, 1.0, 0.5 );
setBlendColor( spep_0 + 474 + OFFSET_X , 1, 5, 0, 0, 0, 0 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
SE003 = playSeVer2( spep_0 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE003, 63 );
SE004 = playSeVer2( spep_0 + 44, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE004, 63 );

--飛び込んでくる
SE005 = playSeVer2( spep_0 + 44, 1117, "", 0, 0, 0, -1);

--気が弾ける
SE006 = playSeVer2( spep_0 + 58, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE006, 84 );
SE007 = playSeVer2( spep_0 + 58, 1052, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE007, 66 );

--飛び込んでくる
SE008 = playSeVer2( spep_0 + 66, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 76, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 76, SE009, 133 );

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 90;  -- エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE00X, 0);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 10, SE009, 0);

    pauseAll( SP_dodge, 67);

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

    dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
    setEffScaleKey( SP_dodge-1, dodge, 1.0, 1.0);

    entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

    endPhase( SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------

-- ** 音 ** --
--蹴り
SE010 = playSeVer2( spep_0 + 100, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 100, SE010, 182 );
SE011 = playSeVer2( spep_0 + 110, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE011, 90 );
SE012 = playSeVer2( spep_0 + 110, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE012, 90 );

--翻る
SE013 = playSeVer2( spep_0 + 176, 63, "",spep_0 + 250, 0, 30, -1);
SE014 = playSeVer2( spep_0 + 176, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 176, SE014, 73 );

--気弾発射
SE015 = playSeVer2( spep_0 + 232, 1021, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 232, SE015, 138 );
setStartTimeMs( SE015,  367 );
SE016 = playSeVer2( spep_0 + 226, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 226, SE016, 153 );
SE017 = playSeVer2( spep_0 + 226, 1016, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 226, SE017, 120 );
SE018 = playSeVer2( spep_0 + 232, 1202, "",spep_0 + 300, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 232, SE018, 120 );

--敵ヒット
SE019 = playSeVer2( spep_0 + 266, 1024, "", 0, 0, 0, -1);

--顔アップ
SE020 = playSeVer2( spep_0 + 296, 1072, "", 0, 0, 0, -1);

--着地
SE021 = playSeVer2( spep_0 + 370, 1192, "",spep_0 + 396, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 370, SE021, 132 );
SE022 = playSeVer2( spep_0 + 372, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 372, SE022, 146 );
SE023 = playSeVer2( spep_0 + 378, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 378, SE023, 150 );

--気弾発射
SE024 = playSeVer2( spep_0 + 394, 1145, "",spep_0 + 540, 4, 18, -1);
setSeVolumeByWorkId( spep_0 + 394, SE024, 74 );
setStartTimeMs( SE024,  267 );
SE025 = playSeVer2( spep_0 + 394, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 394, SE025, 74 );
SE026 = playSeVer2( spep_0 + 394, 1335, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 394, SE026, 133 );
SE027 = playSeVer2( spep_0 + 400, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 400, SE027, 148 );

--敵ヒット
SE028 = playSeVer2( spep_0 + 424, 1067, "",spep_0 + 532, 0, 12, -1);

--ジャンプ
SE029 = playSeVer2( spep_0 + 460, 1207, "",spep_0 + 532, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 460, SE029, 52 );
SE030 = playSeVer2( spep_0 + 464, 44, "",spep_0 + 536, 0, 14, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 514

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 気弾連射～フィニッシュまで ef_002
------------------------------------------------------
MAX_FRAME_2 = 476;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- 気弾連射～フィニッシュまで ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
--SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- 気弾連射～フィニッシュまで ef_002b
--setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
--setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
--setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
--setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
--setEffRotateKey( spep_2 + 0, SP_02b, 0 );
--setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
--setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
--setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 180 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 240 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 180 + OFFSET_X , 1, 105 );

setMoveKey( spep_2 + 180 + OFFSET_X , 1, -55.5, -3.6 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X , 1, -55.5, -3.6 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X , 1, -55.3, -5.4 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X , 1, -55.3, -5.4 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X , 1, -55.1, -6.8 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X , 1, -55.1, -6.8 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X , 1, -55, -8 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X , 1, -55, -8 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X , 1, -54.9, -8.9 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X , 1, -54.9, -8.9 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X , 1, -54.8, -9.7 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X , 1, -54.8, -9.7 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X , 1, -54.7, -10.4 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X , 1, -54.7, -10.4 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X , 1, -54.6, -11 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X , 1, -54.6, -11 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X , 1, -54.6, -11.5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X , 1, -54.6, -11.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X , 1, -54.5, -12 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X , 1, -54.5, -12 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X , 1, -54.4, -12.5 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X , 1, -54.4, -12.5 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X , 1, -54.4, -13 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X , 1, -54.4, -13 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X , 1, -54.3, -13.5 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X , 1, -54.3, -13.5 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X , 1, -54.3, -14.1 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X , 1, -54.3, -14.1 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X , 1, -54.2, -14.7 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X , 1, -54.2, -14.7 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X , 1, -54.1, -15.5 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X , 1, -54.1, -15.5 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X , 1, -54, -16.3 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X , 1, -54, -16.3 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X , 1, -53.9, -17.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X , 1, -53.9, -17.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X , 1, -53.7, -18.7 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X , 1, -53.7, -18.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X , 1, -53.5, -20.3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X , 1, -53.5, -20.3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X , 1, -53.3, -22.4 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X , 1, -53.3, -22.4 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X , 1, -52.9, -25.3 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X , 1, -52.9, -25.3 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X , 1, -52.5, -29 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X , 1, -52.5, -29 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X , 1, -51.9, -33.8 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X , 1, -51.9, -33.8 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X , 1, -51.2, -39.7 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X , 1, -51.2, -39.7 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X , 1, -50.4, -46.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X , 1, -50.4, -46.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X , 1, -49.3, -55.5 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X , 1, -49.3, -55.5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X , 1, -48.1, -66.1 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X , 1, -48.1, -66.1 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X , 1, -46.5, -79.6 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X , 1, -46.5, -79.6 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X , 1, -44, -102.8 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X , 1, -44, -102.8 , 0 );

setScaleKey( spep_2 + 180 + OFFSET_X , 1, 0.6, 0.6 );
setScaleKey( spep_2 + 181 + OFFSET_X , 1, 0.6, 0.6 );
setScaleKey( spep_2 + 182 + OFFSET_X , 1, 0.66, 0.66 );
setScaleKey( spep_2 + 183 + OFFSET_X , 1, 0.66, 0.66 );
setScaleKey( spep_2 + 184 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_2 + 185 + OFFSET_X , 1, 0.71, 0.71 );
setScaleKey( spep_2 + 186 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_2 + 187 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_2 + 188 + OFFSET_X , 1, 0.78, 0.78 );
setScaleKey( spep_2 + 189 + OFFSET_X , 1, 0.78, 0.78 );
setScaleKey( spep_2 + 190 + OFFSET_X , 1, 0.81, 0.81 );
setScaleKey( spep_2 + 191 + OFFSET_X , 1, 0.81, 0.81 );
setScaleKey( spep_2 + 192 + OFFSET_X , 1, 0.83, 0.83 );
setScaleKey( spep_2 + 193 + OFFSET_X , 1, 0.83, 0.83 );
setScaleKey( spep_2 + 194 + OFFSET_X , 1, 0.85, 0.85 );
setScaleKey( spep_2 + 195 + OFFSET_X , 1, 0.85, 0.85 );
setScaleKey( spep_2 + 196 + OFFSET_X , 1, 0.87, 0.87 );
setScaleKey( spep_2 + 197 + OFFSET_X , 1, 0.87, 0.87 );
setScaleKey( spep_2 + 198 + OFFSET_X , 1, 0.89, 0.89 );
setScaleKey( spep_2 + 199 + OFFSET_X , 1, 0.89, 0.89 );
setScaleKey( spep_2 + 200 + OFFSET_X , 1, 0.9, 0.9 );
setScaleKey( spep_2 + 201 + OFFSET_X , 1, 0.9, 0.9 );
setScaleKey( spep_2 + 202 + OFFSET_X , 1, 0.92, 0.92 );
setScaleKey( spep_2 + 203 + OFFSET_X , 1, 0.92, 0.92 );
setScaleKey( spep_2 + 204 + OFFSET_X , 1, 0.94, 0.94 );
setScaleKey( spep_2 + 205 + OFFSET_X , 1, 0.94, 0.94 );
setScaleKey( spep_2 + 206 + OFFSET_X , 1, 0.96, 0.96 );
setScaleKey( spep_2 + 207 + OFFSET_X , 1, 0.96, 0.96 );
setScaleKey( spep_2 + 208 + OFFSET_X , 1, 0.98, 0.98 );
setScaleKey( spep_2 + 209 + OFFSET_X , 1, 0.98, 0.98 );
setScaleKey( spep_2 + 210 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_2 + 211 + OFFSET_X , 1, 1, 1 );
setScaleKey( spep_2 + 212 + OFFSET_X , 1, 1.03, 1.03 );
setScaleKey( spep_2 + 213 + OFFSET_X , 1, 1.03, 1.03 );
setScaleKey( spep_2 + 214 + OFFSET_X , 1, 1.07, 1.07 );
setScaleKey( spep_2 + 215 + OFFSET_X , 1, 1.07, 1.07 );
setScaleKey( spep_2 + 216 + OFFSET_X , 1, 1.12, 1.12 );
setScaleKey( spep_2 + 217 + OFFSET_X , 1, 1.12, 1.12 );
setScaleKey( spep_2 + 218 + OFFSET_X , 1, 1.17, 1.17 );
setScaleKey( spep_2 + 219 + OFFSET_X , 1, 1.17, 1.17 );
setScaleKey( spep_2 + 220 + OFFSET_X , 1, 1.24, 1.24 );
setScaleKey( spep_2 + 221 + OFFSET_X , 1, 1.24, 1.24 );
setScaleKey( spep_2 + 222 + OFFSET_X , 1, 1.34, 1.34 );
setScaleKey( spep_2 + 223 + OFFSET_X , 1, 1.34, 1.34 );
setScaleKey( spep_2 + 224 + OFFSET_X , 1, 1.47, 1.47 );
setScaleKey( spep_2 + 225 + OFFSET_X , 1, 1.47, 1.47 );
setScaleKey( spep_2 + 226 + OFFSET_X , 1, 1.63, 1.63 );
setScaleKey( spep_2 + 227 + OFFSET_X , 1, 1.63, 1.63 );
setScaleKey( spep_2 + 228 + OFFSET_X , 1, 1.83, 1.83 );
setScaleKey( spep_2 + 229 + OFFSET_X , 1, 1.83, 1.83 );
setScaleKey( spep_2 + 230 + OFFSET_X , 1, 2.07, 2.07 );
setScaleKey( spep_2 + 231 + OFFSET_X , 1, 2.07, 2.07 );
setScaleKey( spep_2 + 232 + OFFSET_X , 1, 2.37, 2.37 );
setScaleKey( spep_2 + 233 + OFFSET_X , 1, 2.37, 2.37 );
setScaleKey( spep_2 + 234 + OFFSET_X , 1, 2.73, 2.73 );
setScaleKey( spep_2 + 235 + OFFSET_X , 1, 2.73, 2.73 );
setScaleKey( spep_2 + 236 + OFFSET_X , 1, 3.19, 3.19 );
setScaleKey( spep_2 + 237 + OFFSET_X , 1, 3.19, 3.19 );
setScaleKey( spep_2 + 238 + OFFSET_X , 1, 3.99, 3.99 );
setScaleKey( spep_2 + 240 + OFFSET_X , 1, 3.99, 3.99 );

setRotateKey( spep_2 + 180 + OFFSET_X , 1, -38.6 );
setRotateKey( spep_2 + 240 + OFFSET_X , 1, -38.6 );

-- ** 音 ** --
--腕上に
SE032 = playSeVer2( spep_2 + 0, 1116, "",spep_2 + 44, 0, 22, -1);

--気弾溜め
SE033 = playSeVer2( spep_2 + 32, 1216, "", 0, 18, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE033, 63 );
setStartTimeMs( SE033,  433 );
SE035 = playSeVer2( spep_2 + 44, 1191, "",spep_2 + 142, 0, 38, -1);
SE036 = playSeVer2( spep_2 + 44, 1157, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 44, 1360, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 44, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE038, 141 );

--腕上に
SE034 = playSeVer2( spep_2 + 16, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 16, SE034, 123 );

--気弾発射
SE039 = playSeVer2( spep_2 + 136, 1212, "",spep_2 + 286, 18, 44, -1);
setSeVolumeByWorkId( spep_2 + 136, SE039, 85 );
setStartTimeMs( SE039,  633 );
SE040 = playSeVer2( spep_2 + 132, 1133, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE040, 85 );
SE041 = playSeVer2( spep_2 + 132, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE041, 85 );
SE042 = playSeVer2( spep_2 + 132, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE042, 85 );
SE043 = playSeVer2( spep_2 + 136, 1177, "",spep_2 + 266, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 136, SE043, 85 );

--光立ち上がる
SE044 = playSeVer2( spep_2 + 236, 1256, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 236, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 236, SE045, 78 );
SE046 = playSeVer2( spep_2 + 244, 1179, "",spep_2 + 302, 0, 26, -1);

--爆発
SE047 = playSeVer2( spep_2 + 290, 1159, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 310, 1188, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 326, 1024, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 320 );
endPhase( spep_2 + MAX_FRAME_2-2);  -- 476

end