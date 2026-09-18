--1032880:LR_超サイヤ人4べジータ+超サイヤ人4孫悟空_超必殺技：ファイナルフラッシュ
--sp_effect_a1_00524
--sp2986

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 164419;  -- 最初〜最後まで ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);
setAlphaKey( 0, 1, 255 );

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

ENABLE_AUTO_TIME_STRETCH(0.72);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

-------------------------------------------------
-- 最初〜最後まで
-------------------------------------------------
MAX_FRAME_0 = 950;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 最初〜最後まで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp(spep_0 + 120 + OFFSET_X, 1, 1);
setDisp(spep_0 + 154 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 120 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 134 + OFFSET_X, 1, 17 );
changeAnime( spep_0 + 152 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 120 + OFFSET_X, 1, 65.1, 196.2 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 65.1, 196.2 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 54.4, 198.3 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 54.4, 198.3 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 56.4, 196.7 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 56.4, 196.7 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 54.9, 194.7 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 54.9, 194.7 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 56.4, 197.2 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 56.4, 197.2 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 57.9, 198.3 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 57.9, 198.3 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 55.2, 195.3 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 55.2, 195.3 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 32.2, 206.7 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 32.2, 206.7 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 11.5, 200.8 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 11.5, 200.8 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 1.8, 202.9 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 1.8, 202.9 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -12.7, 210.1 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -12.7, 210.1 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -30.3, 211.6 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -30.3, 211.6 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -28.7, 199.6 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -28.7, 199.6 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -35, 201.8 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -35, 201.8 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -41.1, 210.3 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -41.1, 210.3 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 481.3, 78.1 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 481.3, 78.1 , 0 );

setScaleKey( spep_0 + 120 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 5.7, 5.7 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 5.7, 5.7 );

setRotateKey( spep_0 + 120 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, 1 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_0 + 149 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, 58.6 );
setRotateKey( spep_0 + 154 + OFFSET_X, 1, 58.6 );

--敵の動き2
setDisp(spep_0 + 158 + OFFSET_X, 1, 1);
setDisp(spep_0 + 212 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 158 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 158 + OFFSET_X, 1, -243.4, -47.9 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -243.4, -47.9 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -179.3, -85.6 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -179.3, -85.6 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -181.3, -83.7 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -181.3, -83.7 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -24.1, -61.7 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -24.1, -61.7 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -70.6, 13.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -70.6, 13.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -66.2, 7.1 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -66.2, 7.1 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -50.8, 11 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -50.8, 11 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -47.5, 5.8 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -47.5, 5.8 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -51.5, -12.2 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -51.5, -12.2 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -31.5, -23.8 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -31.5, -23.8 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -24.4, -23.8 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -24.4, -23.8 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -30.9, -31.5 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -30.9, -31.5 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -23, -52.8 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -23, -52.8 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -10, -64.5 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -10, -64.5 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 7.4, -78.7 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 7.4, -78.7 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 14.4, -87.6 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 14.4, -87.6 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 18.3, -84.3 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 18.3, -84.3 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 31.2, -73.4 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 31.2, -73.4 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 35.6, -74 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 35.6, -74 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 36, -66.1 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 36, -66.1 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 36, -60.3 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 36, -60.3 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 29.2, -35.7 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 29.2, -35.7 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 22.5, 7.5 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 22.5, 7.5 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 10.4, 43.7 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 10.4, 43.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 6.3, 82.9 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 6.3, 82.9 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -15, 116.7 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -15, 116.7 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -22, 155.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -22, 155.7 , 0 );

setScaleKey( spep_0 + 158 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 2.2, 2.2 );

setRotateKey( spep_0 + 158 + OFFSET_X, 1, 77.1 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, 77.1 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, 82.2 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, 82.2 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, 100.1 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, 100.1 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, 126.4 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, 126.4 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, 142.3 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, 142.3 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, 163.1 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, 163.1 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, 176 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, 176 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, 172.3 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, 172.3 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, 169.8 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, 169.8 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, 163.8 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, 163.8 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, 158.8 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, 158.8 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, 156.6 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, 156.6 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, 150.9 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, 150.9 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, 146 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, 146 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, 137.1 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, 137.1 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, 130.1 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, 130.1 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, 110.9 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, 110.9 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, 106.6 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, 106.6 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, 104.1 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, 104.1 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, 90.4 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, 90.4 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, 80.1 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, 80.1 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, 69.9 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, 69.9 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, 57.2 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, 57.2 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, 47.3 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, 47.3 );

setBlendColor(spep_0 + 164 + OFFSET_X, 1, 3, 0, 0, 0, 0.4)
setBlendColor(spep_0 + 172 + OFFSET_X, 1, 3, 0, 0, 0, 0.0)
setBlendColor(spep_0 + 182 + OFFSET_X, 1, 3, 0, 0, 0, 0.4)
setBlendColor(spep_0 + 190 + OFFSET_X, 1, 3, 0, 0, 0, 0.0)


--敵の動き3
setDisp(spep_0 + 220 + OFFSET_X, 1, 1);
setDisp(spep_0 + 258 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 220 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 220 + OFFSET_X, 1, -122.4, 254.7 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -122.4, 254.7 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -274.6, 320.3 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -274.6, 320.3 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -166.2, 316.3 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -166.2, 316.3 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -268.7, 169.5 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -268.7, 169.5 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -178.2, 148.7 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -178.2, 148.7 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -219.3, 190.7 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -219.3, 190.7 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -244.4, 196.5 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -244.4, 196.5 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -235.6, 204.7 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -235.6, 204.7 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -236.4, 190.3 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -236.4, 190.3 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -240.3, 187.1 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -240.3, 187.1 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -242, 188 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -242, 188 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -238.8, 202.6 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -238.8, 202.6 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -231.6, 201.7 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -231.6, 201.7 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -229.2, 196.9 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -229.2, 196.9 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -240.5, 193.7 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -240.5, 193.7 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -241.3, 187.3 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -241.3, 187.3 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -242.9, 183.2 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -242.9, 183.2 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -239.7, 186.5 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -239.7, 186.5 , 0 );

setScaleKey( spep_0 + 220 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 0.46, 0.46 );

setRotateKey( spep_0 + 220 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, 48.6 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, 48.6 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, 66.1 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, 66.1 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, 75.7 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, 75.7 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, 86.1 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, 86.1 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, 93.1 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, 93.1 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, 101.1 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, 101.1 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, 107.8 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, 107.8 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, 112.5 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, 112.5 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, 125.2 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, 125.2 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, 130.6 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, 130.6 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, 133.1 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, 133.1 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, 136.3 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, 136.3 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, 139.6 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, 139.6 );

--敵の動き4
setDisp(spep_0 + 262 + OFFSET_X, 1, 1);
setDisp(spep_0 + 270 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 262 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 262 + OFFSET_X, 1, -158.3, 191.1 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -158.3, 191.1 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 41.4, 143.9 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 41.4, 143.9 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 261.1, 82.4 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 261.1, 82.4 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 434.7, 35.6 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 434.7, 35.6 , 0 );

setScaleKey( spep_0 + 262 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 0.52, 0.52 );

setRotateKey( spep_0 + 262 + OFFSET_X, 1, -17.1 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, -17.1 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 16.3 );

--敵の動き5
setDisp(spep_0 + 326 + OFFSET_X, 1, 1);
setDisp(spep_0 + 354 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 326 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 326 + OFFSET_X, 1, -192.1, 230.4 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -192.1, 230.4 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -311.3, 159.9 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -311.3, 159.9 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -335.4, 212.8 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -335.4, 212.8 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -267.5, 137.6 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -267.5, 137.6 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -297.2, 157.8 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -297.2, 157.8 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -306.4, 156.8 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -306.4, 156.8 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -311.4, 145.2 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -311.4, 145.2 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -315.3, 147.5 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -315.3, 147.5 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -316.7, 150.1 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -316.7, 150.1 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -310.8, 146.1 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -310.8, 146.1 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -311.4, 151.4 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -311.4, 151.4 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -299.9, 139.8 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -299.9, 139.8 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -307.8, 145.1 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -307.8, 145.1 , 0 );

setScaleKey( spep_0 + 326 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.24, 0.24 );

setRotateKey( spep_0 + 326 + OFFSET_X, 1, -65.9 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, -65.9 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, -123.1 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, -123.1 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, -162.3 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, -162.3 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, -174.3 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, -174.3 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, -193.7 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, -193.7 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -196 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, -196 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, -202.7 );
setRotateKey( spep_0 + 343 + OFFSET_X, 1, -202.7 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, -203.4 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, -203.4 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, -199 );
setRotateKey( spep_0 + 351 + OFFSET_X, 1, -199 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, -202.9 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, -202.9 );

--敵の動き6
setDisp(spep_0 + 366 + OFFSET_X, 1, 1);
setDisp(spep_0 + 382 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 366 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 366 + OFFSET_X, 1, 52.5, 110.9 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 52.5, 110.9 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 48.1, 112.4 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 48.1, 112.4 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 44.2, 127.6 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 44.2, 127.6 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 40.3, 128.9 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 40.3, 128.9 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 42.8, 135.1 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 42.8, 135.1 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 36.3, 149.3 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 36.3, 149.3 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 35.8, 149.3 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 35.8, 149.3 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 35.8, 151.9 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 35.8, 151.9 , 0 );

setScaleKey( spep_0 + 366 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 0.39, 0.39 );

setRotateKey( spep_0 + 366 + OFFSET_X, 1, -328 );
setRotateKey( spep_0 + 367 + OFFSET_X, 1, -328 );
setRotateKey( spep_0 + 368 + OFFSET_X, 1, -323.3 );
setRotateKey( spep_0 + 369 + OFFSET_X, 1, -323.3 );
setRotateKey( spep_0 + 370 + OFFSET_X, 1, -320.5 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, -320.5 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, -315.8 );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, -315.8 );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, -312.5 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, -312.5 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, -314 );
setRotateKey( spep_0 + 377 + OFFSET_X, 1, -314 );
setRotateKey( spep_0 + 378 + OFFSET_X, 1, -304.1 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, -304.1 );

setBlendColor(spep_0 + 374 + OFFSET_X, 1, 3, 0, 0, 0, 0.4)

--敵の動き7
setDisp(spep_0 + 390 + OFFSET_X, 1, 1);
setDisp(spep_0 + 422 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 390 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 390 + OFFSET_X, 1, 24.9, 243 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 24.9, 243 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -12.1, 268.1 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -12.1, 268.1 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 46.7, 229.1 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 46.7, 229.1 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 54.7, 267.5 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 54.7, 267.5 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 11.7, 231.8 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 11.7, 231.8 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 27, 245.7 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 27, 245.7 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 11.7, 254.3 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 11.7, 254.3 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 15.7, 249 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 15.7, 249 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 19.7, 247.6 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 19.7, 247.6 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 21.7, 254.3 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 21.7, 254.3 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 15.1, 247 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 15.1, 247 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 25.6, 248.3 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 25.6, 248.3 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 14.4, 250.3 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 14.4, 250.3 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 21, 254.3 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 21, 254.3 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 21, 245.7 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 21, 245.7 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 18.4, 251 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 18.4, 251 , 0 );

setScaleKey( spep_0 + 390 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 0.79, 0.79 );

setRotateKey( spep_0 + 390 + OFFSET_X, 1, -345.2 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, -345.2 );

setBlendColor(spep_0 + 390 + OFFSET_X, 1, 3, 0, 0, 0, 0.5)

--敵の動き8
setDisp(spep_0 + 448 + OFFSET_X, 1, 1);
setDisp(spep_0 + 466 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 448 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 464 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 448 + OFFSET_X, 1, 143, 214 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 143, 214 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 148, 210.7 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 148, 210.7 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 144.7, 217.5 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 144.7, 217.5 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 165.6, 205.1 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 165.6, 205.1 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 189.9, 181 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 189.9, 181 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 178.5, 172.1 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 178.5, 172.1 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 189.8, 165.8 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 189.8, 165.8 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 197.5, 170.9 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 197.5, 170.9 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 303, 179.4 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 303, 179.4 , 0 );

setScaleKey( spep_0 + 448 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 449 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 450 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 453 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 454 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 4.78, 4.78 );

setRotateKey( spep_0 + 448 + OFFSET_X, 1, -381.2 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, -381.2 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, -376.9 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, -376.9 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, -377.5 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, -377.5 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, -371.7 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, -371.7 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, -366.9 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, -366.9 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, -366.2 );
setRotateKey( spep_0 + 459 + OFFSET_X, 1, -366.2 );
setRotateKey( spep_0 + 460 + OFFSET_X, 1, -362 );
setRotateKey( spep_0 + 463 + OFFSET_X, 1, -362 );
setRotateKey( spep_0 + 464 + OFFSET_X, 1, -392.6 );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, -392.6 );


--敵の動き9
setDisp(spep_0 + 478 + OFFSET_X, 1, 1);
setDisp(spep_0 + 482 + OFFSET_X, 1, 0);

setMoveKey( spep_0 + 478 + OFFSET_X, 1, 355.2, 338.5 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 355.2, 338.5 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 367.6, 967.5 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 367.6, 967.5 , 0 );

setScaleKey( spep_0 + 478 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 4.78, 4.78 );

setRotateKey( spep_0 + 478 + OFFSET_X, 1, -392.6 );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, -392.6 );

setBlendColor(spep_0 + 482 + OFFSET_X, 1, 3, 0, 0, 0, 0.0 )


--敵の動き10
setDisp(spep_0 + 664 + OFFSET_X, 1, 1);
setDisp(spep_0 + 672 + OFFSET_X, 1, 0);

setMoveKey( spep_0 + 664 + OFFSET_X, 1, 85.3, 68.4 , 0 );
setMoveKey( spep_0 + 665 + OFFSET_X, 1, 85.3, 68.4 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_X, 1, 101.3, 60.3 , 0 );
setMoveKey( spep_0 + 667 + OFFSET_X, 1, 101.3, 60.3 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, 117.4, 52.2 , 0 );
setMoveKey( spep_0 + 669 + OFFSET_X, 1, 117.4, 52.2 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, 133.5, 44.1 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, 133.5, 44.1 , 0 );

setScaleKey( spep_0 + 664 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 672 + OFFSET_X, 1, 2.77, 2.77 );

setRotateKey( spep_0 + 664 + OFFSET_X, 1, -342.3 );
setRotateKey( spep_0 + 665 + OFFSET_X, 1, -342.3 );
setRotateKey( spep_0 + 666 + OFFSET_X, 1, -341 );
setRotateKey( spep_0 + 667 + OFFSET_X, 1, -341 );
setRotateKey( spep_0 + 668 + OFFSET_X, 1, -339.8 );
setRotateKey( spep_0 + 669 + OFFSET_X, 1, -339.8 );
setRotateKey( spep_0 + 670 + OFFSET_X, 1, -338.6 );
setRotateKey( spep_0 + 672 + OFFSET_X, 1, -338.6 );

--敵の動き11
setDisp(spep_0 + 680 + OFFSET_X, 1, 1);
setDisp(spep_0 + 694 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 680 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 680 + OFFSET_X, 1, 221.3, 40.7 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, 221.3, 40.7 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, 236.5, 37.7 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_X, 1, 236.5, 37.7 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, 247.4, 3.4 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, 247.4, 3.4 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, 256.7, -3.7 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, 256.7, -3.7 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, 268.1, -5.4 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, 268.1, -5.4 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, 264, 1.1 , 0 );
setMoveKey( spep_0 + 691 + OFFSET_X, 1, 264, 1.1 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, 273.9, 5.9 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, 273.9, 5.9 , 0 );

setScaleKey( spep_0 + 680 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 694 + OFFSET_X, 1, 2.77, 2.77 );

setRotateKey( spep_0 + 680 + OFFSET_X, 1, -324.8 );
setRotateKey( spep_0 + 681 + OFFSET_X, 1, -324.8 );
setRotateKey( spep_0 + 682 + OFFSET_X, 1, -324.4 );
setRotateKey( spep_0 + 683 + OFFSET_X, 1, -324.4 );
setRotateKey( spep_0 + 684 + OFFSET_X, 1, -323.4 );
setRotateKey( spep_0 + 685 + OFFSET_X, 1, -323.4 );
setRotateKey( spep_0 + 686 + OFFSET_X, 1, -324.7 );
setRotateKey( spep_0 + 691 + OFFSET_X, 1, -324.7 );
setRotateKey( spep_0 + 692 + OFFSET_X, 1, -326.9 );
setRotateKey( spep_0 + 694 + OFFSET_X, 1, -326.9 );

--敵の動き12
setDisp(spep_0 + 718 + OFFSET_X, 1, 1);
setDisp(spep_0 + 846 + OFFSET_X, 1, 0);
setDisp(spep_0 + 848 + OFFSET_X, 1, 1);
setDisp(spep_0 + 850 + OFFSET_X, 1, 0);
setDisp(spep_0 + 852 + OFFSET_X, 1, 1);
setDisp(spep_0 + 874 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 718 + OFFSET_X, 1, 5 );
changeAnime( spep_0 + 724 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 736 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 742 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 772 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 788 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 796 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 832 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 852 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 718 + OFFSET_X, 1, -494.5, 198.4 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, -494.5, 198.4 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, -305.8, 93.3 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, -305.8, 93.3 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, -63.7, -68.8 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, -63.7, -68.8 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, -71.7, -51.2 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, -71.7, -51.2 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, -41.8, -59.3 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, -41.8, -59.3 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, 4.7, -36.8 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, 4.7, -36.8 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, -3.3, -45.7 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, -3.3, -45.7 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, 13.1, -30.2 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, 13.1, -30.2 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, 42.8, -4.9 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, 42.8, -4.9 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, 47.6, -9.8 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, 47.6, -9.8 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, 77.3, 1.6 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, 77.3, 1.6 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, 85.5, 21.3 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, 85.5, 21.3 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, 78.2, 22.1 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, 78.2, 22.1 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, 78.7, 51.7 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, 78.7, 51.7 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, 53.9, 78.8 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, 53.9, 78.8 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, 43.2, 70.6 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, 43.2, 70.6 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, 30.9, 91 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, 30.9, 91 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, 81.7, 128.6 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, 81.7, 128.6 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, 68.5, 113 , 0 );
setMoveKey( spep_0 + 757 + OFFSET_X, 1, 68.5, 113 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, 68.6, 112.9 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, 68.6, 112.9 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, 81.7, 119.3 , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, 81.7, 119.3 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, 80, 122.6 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, 80, 122.6 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, 87.3, 134 , 0 );
setMoveKey( spep_0 + 765 + OFFSET_X, 1, 87.3, 134 , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, 99.6, 118.4 , 0 );
setMoveKey( spep_0 + 767 + OFFSET_X, 1, 99.6, 118.4 , 0 );
setMoveKey( spep_0 + 768 + OFFSET_X, 1, 108.6, 109.4 , 0 );
setMoveKey( spep_0 + 769 + OFFSET_X, 1, 108.6, 109.4 , 0 );
setMoveKey( spep_0 + 770 + OFFSET_X, 1, 111.1, 102.1 , 0 );
setMoveKey( spep_0 + 771 + OFFSET_X, 1, 111.1, 102.1 , 0 );
setMoveKey( spep_0 + 772 + OFFSET_X, 1, -56.6, 220.4 , 0 );
setMoveKey( spep_0 + 773 + OFFSET_X, 1, -56.6, 220.4 , 0 );
setMoveKey( spep_0 + 774 + OFFSET_X, 1, -36.7, 219.3 , 0 );
setMoveKey( spep_0 + 775 + OFFSET_X, 1, -36.7, 219.3 , 0 );
setMoveKey( spep_0 + 776 + OFFSET_X, 1, -43.9, 231.4 , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, -43.9, 231.4 , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, -47.7, 226.7 , 0 );
setMoveKey( spep_0 + 779 + OFFSET_X, 1, -47.7, 226.7 , 0 );
setMoveKey( spep_0 + 780 + OFFSET_X, 1, -47.7, 220.6 , 0 );
setMoveKey( spep_0 + 783 + OFFSET_X, 1, -47.7, 220.6 , 0 );
setMoveKey( spep_0 + 784 + OFFSET_X, 1, -58.3, 214 , 0 );
setMoveKey( spep_0 + 785 + OFFSET_X, 1, -58.3, 214 , 0 );
setMoveKey( spep_0 + 786 + OFFSET_X, 1, -69.7, 190.3 , 0 );
setMoveKey( spep_0 + 787 + OFFSET_X, 1, -69.7, 190.3 , 0 );
setMoveKey( spep_0 + 788 + OFFSET_X, 1, 32, 132.2 , 0 );
setMoveKey( spep_0 + 789 + OFFSET_X, 1, 32, 132.2 , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, -45, 221.4 , 0 );
setMoveKey( spep_0 + 791 + OFFSET_X, 1, -45, 221.4 , 0 );
setMoveKey( spep_0 + 792 + OFFSET_X, 1, 60.2, 145.2 , 0 );
setMoveKey( spep_0 + 793 + OFFSET_X, 1, 60.2, 145.2 , 0 );
setMoveKey( spep_0 + 794 + OFFSET_X, 1, 19.3, 179.7 , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, 19.3, 179.7 , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, -18.5, 301 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, -18.5, 301 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, -18.1, 175 , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, -18.1, 175 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, 9, 341.1 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, 9, 341.1 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, 22.6, 307.2 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, 22.6, 307.2 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, 22, 336 , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, 22, 336 , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, 27.8, 334.5 , 0 );
setMoveKey( spep_0 + 807 + OFFSET_X, 1, 27.8, 334.5 , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, -212.8, 379.4 , 0 );
setMoveKey( spep_0 + 809 + OFFSET_X, 1, -212.8, 379.4 , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, -218.8, 369.5 , 0 );
setMoveKey( spep_0 + 811 + OFFSET_X, 1, -218.8, 369.5 , 0 );
setMoveKey( spep_0 + 812 + OFFSET_X, 1, -289.2, 355.7 , 0 );
setMoveKey( spep_0 + 813 + OFFSET_X, 1, -289.2, 355.7 , 0 );
setMoveKey( spep_0 + 814 + OFFSET_X, 1, -267.8, 375.1 , 0 );
setMoveKey( spep_0 + 815 + OFFSET_X, 1, -267.8, 375.1 , 0 );
setMoveKey( spep_0 + 816 + OFFSET_X, 1, -367, 334 , 0 );
setMoveKey( spep_0 + 817 + OFFSET_X, 1, -367, 334 , 0 );
setMoveKey( spep_0 + 818 + OFFSET_X, 1, -297.2, 358.9 , 0 );
setMoveKey( spep_0 + 819 + OFFSET_X, 1, -297.2, 358.9 , 0 );
setMoveKey( spep_0 + 820 + OFFSET_X, 1, -346.5, 354.1 , 0 );
setMoveKey( spep_0 + 821 + OFFSET_X, 1, -346.5, 354.1 , 0 );
setMoveKey( spep_0 + 822 + OFFSET_X, 1, -346.3, 358.1 , 0 );
setMoveKey( spep_0 + 823 + OFFSET_X, 1, -346.3, 358.1 , 0 );
setMoveKey( spep_0 + 824 + OFFSET_X, 1, -352.3, 367.4 , 0 );
setMoveKey( spep_0 + 825 + OFFSET_X, 1, -352.3, 367.4 , 0 );
setMoveKey( spep_0 + 826 + OFFSET_X, 1, -345.9, 351 , 0 );
setMoveKey( spep_0 + 827 + OFFSET_X, 1, -345.9, 351 , 0 );
setMoveKey( spep_0 + 828 + OFFSET_X, 1, -318, 309.5 , 0 );
setMoveKey( spep_0 + 829 + OFFSET_X, 1, -318, 309.5 , 0 );
setMoveKey( spep_0 + 830 + OFFSET_X, 1, -262.9, 366.7 , 0 );
setMoveKey( spep_0 + 831 + OFFSET_X, 1, -262.9, 366.7 , 0 );
setMoveKey( spep_0 + 832 + OFFSET_X, 1, -109, 305.9 , 0 );
setMoveKey( spep_0 + 833 + OFFSET_X, 1, -109, 305.9 , 0 );
setMoveKey( spep_0 + 834 + OFFSET_X, 1, -187.5, 409.9 , 0 );
setMoveKey( spep_0 + 835 + OFFSET_X, 1, -187.5, 409.9 , 0 );
setMoveKey( spep_0 + 836 + OFFSET_X, 1, -127, 376.8 , 0 );
setMoveKey( spep_0 + 837 + OFFSET_X, 1, -127, 376.8 , 0 );
setMoveKey( spep_0 + 838 + OFFSET_X, 1, -93.6, 356.5 , 0 );
setMoveKey( spep_0 + 839 + OFFSET_X, 1, -93.6, 356.5 , 0 );
setMoveKey( spep_0 + 840 + OFFSET_X, 1, -87.8, 360.3 , 0 );
setMoveKey( spep_0 + 841 + OFFSET_X, 1, -87.8, 360.3 , 0 );
setMoveKey( spep_0 + 842 + OFFSET_X, 1, -87.6, 362.3 , 0 );
setMoveKey( spep_0 + 843 + OFFSET_X, 1, -87.6, 362.3 , 0 );
setMoveKey( spep_0 + 844 + OFFSET_X, 1, -60, 346.4 , 0 );
setMoveKey( spep_0 + 846 + OFFSET_X, 1, -60, 346.4 , 0 );

setMoveKey( spep_0 + 848 + OFFSET_X, 1, -117.9, 269 , 0 );
setMoveKey( spep_0 + 850 + OFFSET_X, 1, -117.9, 269 , 0 );

setMoveKey( spep_0 + 852 + OFFSET_X, 1, -183.9, 345.5 , 0 );
setMoveKey( spep_0 + 853 + OFFSET_X, 1, -183.9, 345.5 , 0 );
setMoveKey( spep_0 + 854 + OFFSET_X, 1, -342, 214.4 , 0 );
setMoveKey( spep_0 + 855 + OFFSET_X, 1, -342, 214.4 , 0 );
setMoveKey( spep_0 + 856 + OFFSET_X, 1, -302.2, 246 , 0 );
setMoveKey( spep_0 + 857 + OFFSET_X, 1, -302.2, 246 , 0 );
setMoveKey( spep_0 + 858 + OFFSET_X, 1, -374.1, 198.3 , 0 );
setMoveKey( spep_0 + 859 + OFFSET_X, 1, -374.1, 198.3 , 0 );
setMoveKey( spep_0 + 860 + OFFSET_X, 1, -378.8, 204.1 , 0 );
setMoveKey( spep_0 + 861 + OFFSET_X, 1, -378.8, 204.1 , 0 );
setMoveKey( spep_0 + 862 + OFFSET_X, 1, -404.3, 172.7 , 0 );
setMoveKey( spep_0 + 863 + OFFSET_X, 1, -404.3, 172.7 , 0 );
setMoveKey( spep_0 + 864 + OFFSET_X, 1, -408.8, 170.2 , 0 );
setMoveKey( spep_0 + 865 + OFFSET_X, 1, -408.8, 170.2 , 0 );
setMoveKey( spep_0 + 866 + OFFSET_X, 1, -418.1, 163.8 , 0 );
setMoveKey( spep_0 + 867 + OFFSET_X, 1, -418.1, 163.8 , 0 );
setMoveKey( spep_0 + 868 + OFFSET_X, 1, -436.6, 145.8 , 0 );
setMoveKey( spep_0 + 869 + OFFSET_X, 1, -436.6, 145.8 , 0 );
setMoveKey( spep_0 + 870 + OFFSET_X, 1, -434.3, 146.7 , 0 );
setMoveKey( spep_0 + 871 + OFFSET_X, 1, -434.3, 146.7 , 0 );
setMoveKey( spep_0 + 872 + OFFSET_X, 1, -486.4, 192.8 , 0 );
setMoveKey( spep_0 + 874 + OFFSET_X, 1, -486.4, 192.8 , 0 );

setScaleKey( spep_0 + 718 + OFFSET_X, 1, 7.22, 7.22 );
setScaleKey( spep_0 + 721 + OFFSET_X, 1, 7.22, 7.22 );
setScaleKey( spep_0 + 722 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_0 + 723 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 725 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 726 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 731 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 732 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 733 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 734 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 735 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 736 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 741 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 742 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 745 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 746 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 747 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 748 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 753 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 754 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 755 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 756 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 757 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 758 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 759 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 760 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 763 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 764 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 765 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 766 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 769 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 770 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 771 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 772 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 773 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 774 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 777 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 778 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 779 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 780 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 785 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 786 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 787 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 788 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 791 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 792 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 795 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 796 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 803 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 804 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 805 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 806 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 813 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 814 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 823 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 824 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 825 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 826 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 827 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 828 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 829 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 830 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 831 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 832 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 833 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 834 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 835 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 836 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 837 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 838 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 839 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 840 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 841 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 842 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 843 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 844 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 847 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 848 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 850 + OFFSET_X, 1, 1.23, 1.23 );

setScaleKey( spep_0 + 852 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 853 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 854 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 855 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 856 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 857 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 858 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 859 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 860 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 861 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 862 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 863 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 864 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 865 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 866 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 867 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 868 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 871 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 872 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 874 + OFFSET_X, 1, 1.95, 1.95 );

setRotateKey( spep_0 + 718 + OFFSET_X, 1, -302.9 );
setRotateKey( spep_0 + 721 + OFFSET_X, 1, -302.9 );
setRotateKey( spep_0 + 722 + OFFSET_X, 1, -281.7 );
setRotateKey( spep_0 + 723 + OFFSET_X, 1, -281.7 );
setRotateKey( spep_0 + 724 + OFFSET_X, 1, -284.4 );
setRotateKey( spep_0 + 725 + OFFSET_X, 1, -284.4 );
setRotateKey( spep_0 + 726 + OFFSET_X, 1, -285.9 );
setRotateKey( spep_0 + 727 + OFFSET_X, 1, -285.9 );
setRotateKey( spep_0 + 728 + OFFSET_X, 1, -306.8 );
setRotateKey( spep_0 + 729 + OFFSET_X, 1, -306.8 );
setRotateKey( spep_0 + 730 + OFFSET_X, 1, -298.9 );
setRotateKey( spep_0 + 731 + OFFSET_X, 1, -298.9 );
setRotateKey( spep_0 + 732 + OFFSET_X, 1, -297.3 );
setRotateKey( spep_0 + 733 + OFFSET_X, 1, -297.3 );
setRotateKey( spep_0 + 734 + OFFSET_X, 1, -292.1 );
setRotateKey( spep_0 + 735 + OFFSET_X, 1, -292.1 );
setRotateKey( spep_0 + 736 + OFFSET_X, 1, -280.4 );
setRotateKey( spep_0 + 737 + OFFSET_X, 1, -280.4 );
setRotateKey( spep_0 + 738 + OFFSET_X, 1, -281.6 );
setRotateKey( spep_0 + 739 + OFFSET_X, 1, -281.6 );
setRotateKey( spep_0 + 740 + OFFSET_X, 1, -275.9 );
setRotateKey( spep_0 + 741 + OFFSET_X, 1, -275.9 );
setRotateKey( spep_0 + 742 + OFFSET_X, 1, -223.7 );
setRotateKey( spep_0 + 743 + OFFSET_X, 1, -223.7 );
setRotateKey( spep_0 + 744 + OFFSET_X, 1, -222.5 );
setRotateKey( spep_0 + 745 + OFFSET_X, 1, -222.5 );
setRotateKey( spep_0 + 746 + OFFSET_X, 1, -230.7 );
setRotateKey( spep_0 + 747 + OFFSET_X, 1, -230.7 );
setRotateKey( spep_0 + 748 + OFFSET_X, 1, -248.9 );
setRotateKey( spep_0 + 751 + OFFSET_X, 1, -248.9 );
setRotateKey( spep_0 + 752 + OFFSET_X, 1, -258.4 );
setRotateKey( spep_0 + 753 + OFFSET_X, 1, -258.4 );
setRotateKey( spep_0 + 754 + OFFSET_X, 1, -232.9 );
setRotateKey( spep_0 + 757 + OFFSET_X, 1, -232.9 );
setRotateKey( spep_0 + 758 + OFFSET_X, 1, -228.5 );
setRotateKey( spep_0 + 759 + OFFSET_X, 1, -228.5 );
setRotateKey( spep_0 + 760 + OFFSET_X, 1, -214.6 );
setRotateKey( spep_0 + 763 + OFFSET_X, 1, -214.6 );
setRotateKey( spep_0 + 764 + OFFSET_X, 1, -212.9 );
setRotateKey( spep_0 + 765 + OFFSET_X, 1, -212.9 );
setRotateKey( spep_0 + 766 + OFFSET_X, 1, -198.9 );
setRotateKey( spep_0 + 769 + OFFSET_X, 1, -198.9 );
setRotateKey( spep_0 + 770 + OFFSET_X, 1, -192.9 );
setRotateKey( spep_0 + 771 + OFFSET_X, 1, -192.9 );
setRotateKey( spep_0 + 772 + OFFSET_X, 1, -361.9 );
setRotateKey( spep_0 + 773 + OFFSET_X, 1, -361.9 );
setRotateKey( spep_0 + 774 + OFFSET_X, 1, -359.2 );
setRotateKey( spep_0 + 775 + OFFSET_X, 1, -359.2 );
setRotateKey( spep_0 + 776 + OFFSET_X, 1, -366.9 );
setRotateKey( spep_0 + 779 + OFFSET_X, 1, -366.9 );
setRotateKey( spep_0 + 780 + OFFSET_X, 1, -372.9 );
setRotateKey( spep_0 + 783 + OFFSET_X, 1, -372.9 );
setRotateKey( spep_0 + 784 + OFFSET_X, 1, -376.1 );
setRotateKey( spep_0 + 785 + OFFSET_X, 1, -376.1 );
setRotateKey( spep_0 + 786 + OFFSET_X, 1, -397.6 );
setRotateKey( spep_0 + 787 + OFFSET_X, 1, -397.6 );
setRotateKey( spep_0 + 788 + OFFSET_X, 1, -350.6 );
setRotateKey( spep_0 + 789 + OFFSET_X, 1, -350.6 );
setRotateKey( spep_0 + 790 + OFFSET_X, 1, -347.9 );
setRotateKey( spep_0 + 791 + OFFSET_X, 1, -347.9 );
setRotateKey( spep_0 + 792 + OFFSET_X, 1, -347.3 );
setRotateKey( spep_0 + 793 + OFFSET_X, 1, -347.3 );
setRotateKey( spep_0 + 794 + OFFSET_X, 1, -342.4 );
setRotateKey( spep_0 + 795 + OFFSET_X, 1, -342.4 );
setRotateKey( spep_0 + 796 + OFFSET_X, 1, -329 );
setRotateKey( spep_0 + 797 + OFFSET_X, 1, -329 );
setRotateKey( spep_0 + 798 + OFFSET_X, 1, -330.5 );
setRotateKey( spep_0 + 799 + OFFSET_X, 1, -330.5 );
setRotateKey( spep_0 + 800 + OFFSET_X, 1, -335.2 );
setRotateKey( spep_0 + 801 + OFFSET_X, 1, -335.2 );
setRotateKey( spep_0 + 802 + OFFSET_X, 1, -344.4 );
setRotateKey( spep_0 + 803 + OFFSET_X, 1, -344.4 );
setRotateKey( spep_0 + 804 + OFFSET_X, 1, -346.9 );
setRotateKey( spep_0 + 805 + OFFSET_X, 1, -346.9 );
setRotateKey( spep_0 + 806 + OFFSET_X, 1, -347.8 );
setRotateKey( spep_0 + 807 + OFFSET_X, 1, -347.8 );
setRotateKey( spep_0 + 808 + OFFSET_X, 1, -393.2 );
setRotateKey( spep_0 + 809 + OFFSET_X, 1, -393.2 );
setRotateKey( spep_0 + 810 + OFFSET_X, 1, -392.7 );
setRotateKey( spep_0 + 811 + OFFSET_X, 1, -392.7 );
setRotateKey( spep_0 + 812 + OFFSET_X, 1, -383.4 );
setRotateKey( spep_0 + 813 + OFFSET_X, 1, -383.4 );
setRotateKey( spep_0 + 814 + OFFSET_X, 1, -458.1 );
setRotateKey( spep_0 + 815 + OFFSET_X, 1, -458.1 );
setRotateKey( spep_0 + 816 + OFFSET_X, 1, -456.7 );
setRotateKey( spep_0 + 817 + OFFSET_X, 1, -456.7 );
setRotateKey( spep_0 + 818 + OFFSET_X, 1, -457 );
setRotateKey( spep_0 + 819 + OFFSET_X, 1, -457 );
setRotateKey( spep_0 + 820 + OFFSET_X, 1, -453.3 );
setRotateKey( spep_0 + 821 + OFFSET_X, 1, -453.3 );
setRotateKey( spep_0 + 822 + OFFSET_X, 1, -452.8 );
setRotateKey( spep_0 + 823 + OFFSET_X, 1, -452.8 );
setRotateKey( spep_0 + 824 + OFFSET_X, 1, -450.3 );
setRotateKey( spep_0 + 825 + OFFSET_X, 1, -450.3 );
setRotateKey( spep_0 + 826 + OFFSET_X, 1, -448.9 );
setRotateKey( spep_0 + 827 + OFFSET_X, 1, -448.9 );
setRotateKey( spep_0 + 828 + OFFSET_X, 1, -447.4 );
setRotateKey( spep_0 + 829 + OFFSET_X, 1, -447.4 );
setRotateKey( spep_0 + 830 + OFFSET_X, 1, -404.2 );
setRotateKey( spep_0 + 831 + OFFSET_X, 1, -404.2 );
setRotateKey( spep_0 + 832 + OFFSET_X, 1, -386.5 );
setRotateKey( spep_0 + 837 + OFFSET_X, 1, -386.5 );
setRotateKey( spep_0 + 838 + OFFSET_X, 1, -390.5 );
setRotateKey( spep_0 + 839 + OFFSET_X, 1, -390.5 );
setRotateKey( spep_0 + 840 + OFFSET_X, 1, -390.2 );
setRotateKey( spep_0 + 841 + OFFSET_X, 1, -390.2 );
setRotateKey( spep_0 + 842 + OFFSET_X, 1, -393.7 );
setRotateKey( spep_0 + 850 + OFFSET_X, 1, -393.7 );

setRotateKey( spep_0 + 852 + OFFSET_X, 1, -396.3 );
setRotateKey( spep_0 + 874 + OFFSET_X, 1, -396.3 );

setBlendColor(spep_0 + 750 + OFFSET_X, 1, 3, 0, 0, 0, 0.5 )
setBlendColor(spep_0 + 758 + OFFSET_X, 1, 3, 0, 0, 0, 0.0 )


--敵の動き12
setDisp(spep_0 + 892 + OFFSET_X, 1, 1);
setDisp(spep_0 + 918 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 892 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 892 + OFFSET_X, 1, 252.1, -291 , 0 );
setMoveKey( spep_0 + 893 + OFFSET_X, 1, 252.1, -291 , 0 );
setMoveKey( spep_0 + 894 + OFFSET_X, 1, 25, 124.2 , 0 );
setMoveKey( spep_0 + 895 + OFFSET_X, 1, 25, 124.2 , 0 );
setMoveKey( spep_0 + 896 + OFFSET_X, 1, -45.8, 252.4 , 0 );
setMoveKey( spep_0 + 897 + OFFSET_X, 1, -45.8, 252.4 , 0 );
setMoveKey( spep_0 + 898 + OFFSET_X, 1, -49.7, 259.4 , 0 );
setMoveKey( spep_0 + 899 + OFFSET_X, 1, -49.7, 259.4 , 0 );
setMoveKey( spep_0 + 900 + OFFSET_X, 1, -52.8, 265 , 0 );
setMoveKey( spep_0 + 901 + OFFSET_X, 1, -52.8, 265 , 0 );
setMoveKey( spep_0 + 902 + OFFSET_X, 1, -55.3, 269.5 , 0 );
setMoveKey( spep_0 + 903 + OFFSET_X, 1, -55.3, 269.5 , 0 );
setMoveKey( spep_0 + 904 + OFFSET_X, 1, -57.3, 273.1 , 0 );
setMoveKey( spep_0 + 905 + OFFSET_X, 1, -57.3, 273.1 , 0 );
setMoveKey( spep_0 + 906 + OFFSET_X, 1, -58.9, 275.9 , 0 );
setMoveKey( spep_0 + 907 + OFFSET_X, 1, -58.9, 275.9 , 0 );
setMoveKey( spep_0 + 908 + OFFSET_X, 1, -60.1, 278.1 , 0 );
setMoveKey( spep_0 + 909 + OFFSET_X, 1, -60.1, 278.1 , 0 );
setMoveKey( spep_0 + 910 + OFFSET_X, 1, -61.1, 279.9 , 0 );
setMoveKey( spep_0 + 911 + OFFSET_X, 1, -61.1, 279.9 , 0 );
setMoveKey( spep_0 + 912 + OFFSET_X, 1, -61.8, 281.2 , 0 );
setMoveKey( spep_0 + 913 + OFFSET_X, 1, -61.8, 281.2 , 0 );
setMoveKey( spep_0 + 914 + OFFSET_X, 1, -62.4, 282.2 , 0 );
setMoveKey( spep_0 + 915 + OFFSET_X, 1, -62.4, 282.2 , 0 );
setMoveKey( spep_0 + 916 + OFFSET_X, 1, -62.6, 282.8 , 0 );
setMoveKey( spep_0 + 918 + OFFSET_X, 1, -62.6, 282.8 , 0 );

setScaleKey( spep_0 + 892 + OFFSET_X, 1, 8.62, 8.62 );
setScaleKey( spep_0 + 893 + OFFSET_X, 1, 8.62, 8.62 );
setScaleKey( spep_0 + 894 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 895 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 896 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 897 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 898 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 899 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 900 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 901 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 902 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 903 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 904 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 905 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 906 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 907 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 908 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 909 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 910 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 911 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 912 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 913 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 914 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 915 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 916 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 918 + OFFSET_X, 1, 1.04, 1.04 );

setRotateKey( spep_0 + 892 + OFFSET_X, 1, -339.7 );
setRotateKey( spep_0 + 893 + OFFSET_X, 1, -339.7 );
setRotateKey( spep_0 + 894 + OFFSET_X, 1, -326 );
setRotateKey( spep_0 + 895 + OFFSET_X, 1, -326 );
setRotateKey( spep_0 + 896 + OFFSET_X, 1, -321.7 );
setRotateKey( spep_0 + 897 + OFFSET_X, 1, -321.7 );
setRotateKey( spep_0 + 898 + OFFSET_X, 1, -321.5 );
setRotateKey( spep_0 + 899 + OFFSET_X, 1, -321.5 );
setRotateKey( spep_0 + 900 + OFFSET_X, 1, -321.3 );
setRotateKey( spep_0 + 901 + OFFSET_X, 1, -321.3 );
setRotateKey( spep_0 + 902 + OFFSET_X, 1, -321.2 );
setRotateKey( spep_0 + 903 + OFFSET_X, 1, -321.2 );
setRotateKey( spep_0 + 904 + OFFSET_X, 1, -321 );
setRotateKey( spep_0 + 907 + OFFSET_X, 1, -321 );
setRotateKey( spep_0 + 908 + OFFSET_X, 1, -320.9 );
setRotateKey( spep_0 + 909 + OFFSET_X, 1, -320.9 );
setRotateKey( spep_0 + 910 + OFFSET_X, 1, -320.8 );
setRotateKey( spep_0 + 913 + OFFSET_X, 1, -320.8 );
setRotateKey( spep_0 + 914 + OFFSET_X, 1, -320.7 );
setRotateKey( spep_0 + 918 + OFFSET_X, 1, -320.7 );

-- ** 音 ** --
--飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 4, 1019, "", 0, 0, 0, -1);	
SE004 = playSeVer2( spep_0 + 12, 1183, "", 0, 0, 0, -1);	
SE005 = playSeVer2( spep_0 + 68, 1019, "", 0, 0, 0, -1);	

--加速する		
SE006 = playSeVer2( spep_0 + 68, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE006, 74 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 90; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);

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
--加速する
SE007 = playSeVer2( spep_0 + 80, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE007, 164 );
SE008 = playSeVer2( spep_0 + 90, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE008, 52 );
setTimeStretch( SE008, 1.33, 30, 4 );

--飛んでくる
SE009 = playSeVer2( spep_0 + 132, 1019, "",spep_0 + 188, 0, 26, -1);

--ドロップキック
SE010 = playSeVer2( spep_0 + 132, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 144, 1027, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 144, 1187, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 144, 1359, "", 0, 0, 0, -1);

--回し蹴り
SE014 = playSeVer2( spep_0 + 192, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 204, 1153, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 204, 1010, "", 0, 0, 0, -1);

--瞬間移動
SE017 = playSeVer2( spep_0 + 224, 1109, "", 0, 0, 0, -1);

--蹴り飛ばす
SE018 = playSeVer2( spep_0 + 242, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 242, SE018, 158 );
SE019 = playSeVer2( spep_0 + 250, 1187, "", 0, 0, 0, -1);

--瞬間移動
SE020 = playSeVer2( spep_0 + 272, 1109, "", 0, 0, 0, -1);

--殴り飛ばす
SE021 = playSeVer2( spep_0 + 302, 1003, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 310, 1120, "", 0, 0, 0, -1);

--ビル激突
SE023 = playSeVer2( spep_0 + 354, 1159, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 364, 1024, "", 0, 0, 0, -1);

--ビル内激突
SE025 = playSeVer2( spep_0 + 400, 1061, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 400, 1014, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 428, 1027, "", 0, 0, 0, -1);

--瞬間移動
SE028 = playSeVer2( spep_0 + 452, 1109, "", 0, 0, 0, -1);

--蹴り上げ
SE029 = playSeVer2( spep_0 + 460, 1004, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 464, 1049, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 464, 1187, "", 0, 0, 0, -1);

--ビル内貫通
SE032 = playSeVer2( spep_0 + 504, 1044, "",spep_0 + 574, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 504, SE032, 135 );
SE033 = playSeVer2( spep_0 + 504, 1067, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 538, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 538, SE034, 84 );

--回転する
SE035 = playSeVer2( spep_0 + 582, 1450, "",spep_0 + 652, 0, 14, -1);
SE036 = playSeVer2( spep_0 + 584, 1388, "",spep_0 + 672, 0, 34, -1);

--瞬間移動
SE037 = playSeVer2( spep_0 + 634, 1499, "",spep_0 + 712, 0, 52, -1);
SE038 = playSeVer2( spep_0 + 634, 1201, "", 0, 0, 0, -1);

--蹴り飛ばす
SE039 = playSeVer2( spep_0 + 664, 1452, "",spep_0 + 738, 0, 22, -1);
SE040 = playSeVer2( spep_0 + 670, 1426, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 670, SE040, 70 );
SE041 = playSeVer2( spep_0 + 672, 1120, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 672, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE043 = playSeVer2( spep_0 + 706, 1121, "",spep_0 + 816, 0, 52, -1);

--ビル激突
SE044 = playSeVer2( spep_0 + 726, 1023, "", 0, 0, 0, -1);

--ラッシュ
SE045 = playSeVer2( spep_0 + 766, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 766, SE045, 66 );
SE046 = playSeVer2( spep_0 + 766, 1110, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 784, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 784, SE047, 74 );
SE048 = playSeVer2( spep_0 + 784, 1110, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_0 + 792, 1009, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_0 + 792, 1110, "", 0, 0, 0, -1);
setPitch( spep_0 + 792, SE050, -300 );
setTimeStretch( SE050, 0.8, 30, 4 );
SE051 = playSeVer2( spep_0 + 802, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 802, SE051, 81 );
SE052 = playSeVer2( spep_0 + 802, 1110, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_0 + 814, 1109, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_0 + 814, 1414, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_0 + 834, 1110, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_0 + 838, 1109, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_0 + 866, 1414, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_0 + 866, 1187, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_0 + 884, 1109, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_0 + 896, 1440, "",spep_0 + 964, 0, 18, -1);

--叩き落とす
SE061 = playSeVer2( spep_0 + 904, 1027, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_0 + 906, 1123, "",spep_0 + 968, 0, 18, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 950F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--気がたちのぼる
SE065 = playSeVer2( spep_1 + 88, 1068, "", 0, 0, 0, -1);	
SE066 = playSeVer2( spep_1 + 88, 1202, "", 0, 0, 0, -1);	
SE067 = playSeVer2( spep_1 + 88, 1512, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE067, 67 );

--------------------------------------
-- カードカットイン後
--------------------------------------

MAX_FRAME_2 = 480

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 60;

-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--カメラパン
SE068 = playSeVer2( spep_2 + 48, 1175, "",spep_2 + 224, 0, 44, 0.5);
setSeVolumeByWorkId( spep_2 + 48, SE068, 48 );

--オーラ
SE069 = playSeVer2( spep_2 + 48, 1036, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_2 + 48, SE069 );

--気弾溜め
SE064 = playSeVer2( spep_2 + 56, 1329, "",spep_2 + 204, 8, 28, -1);
setSeVolumeByWorkId( spep_2 + 56, SE064, 126 );	
setStartTimeMs( SE064,  1533 );
SE070 = playSeVer2( spep_2 + 58, 1490, "",spep_2 + 210, 0, 28, -1);
SE071 = playSeVer2( spep_2 + 58, 1253, "", 0, 0, 0, -1);
SE075 = playSeVer2( spep_2 + 94, 1355, "", 0, 0, 0, -1);

--オーラ
SE073 = playSeVer2( spep_2 + 70, 1036, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_2 + 70, SE073 );
SE074 = playSeVer2( spep_2 + 94, 1036, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_2 + 94, SE074 );
SE076 = playSeVer2( spep_2 + 118, 1036, "", 0, 0, 0, -1);
SE077 = playSeVer2( spep_2 + 142, 1036, "", 0, 0, 0, -1);
SE078 = playSeVer2( spep_2 + 166, 1036, "", 0, 0, 0, -1);

--気弾発射
SE079 = playSeVer2( spep_2 + 184, 1512, "",spep_2 + 294, 0, 50, -1);
setSeVolumeByWorkId( spep_2 + 184, SE079, 85 );
SE080 = playSeVer2( spep_2 + 184, 1193, "",spep_2 + 324, 0, 80, -1);
SE081 = playSeVer2( spep_2 + 184, 1284, "",spep_2 + 278, 0, 38, -1);
--ビル吹っ飛ぶ
SE082 = playSeVer2( spep_2 + 246, 1302, "", 0, 0, 0, -1);
SE083 = playSeVer2( spep_2 + 246, 1312, "", 0, 0, 0, -1);
SE084 = playSeVer2( spep_2 + 246, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 246, SE084, 67 );

--爆発
SE085 = playSeVer2( spep_2 + 340, 1159, "", 0, 0, 0, -1);
SE086 = playSeVer2( spep_2 + 340, 1128, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 340, SE086, 69 );
setPitch( spep_2 + 340, SE086, -1200 );
setTimeStretch( SE086, 0.2, 30, 4 );
SE087 = playSeVer2( spep_2 + 348, 1067, "", 0, 0, 0, -1);
SE088 = playSeVer2( spep_2 + 348, 1427, "", 0, 0, 0, -1);
SE089 = playSeVer2( spep_2 + 368, 1173, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 352); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 480F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

-------------------------------------------------
-- 最初〜最後まで
-------------------------------------------------
MAX_FRAME_0 = 950;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 最初〜最後まで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp(spep_0 + 120 + OFFSET_X, 1, 1);
setDisp(spep_0 + 154 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 120 + OFFSET_X, 1,17 );
changeAnime( spep_0 + 134 + OFFSET_X, 1, 117  );
changeAnime( spep_0 + 152 + OFFSET_X, 1, 107  );

setMoveKey( spep_0 + 120 + OFFSET_X, 1, -65.1, 196.2 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -65.1, 196.2 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -54.4, 198.3 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -54.4, 198.3 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -56.4, 196.7 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -56.4, 196.7 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -54.9, 194.7 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -54.9, 194.7 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -56.4, 197.2 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -56.4, 197.2 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -57.9, 198.3 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -57.9, 198.3 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -55.2, 195.3 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -55.2, 195.3 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -32.2, 206.7 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -32.2, 206.7 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -11.5, 200.8 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -11.5, 200.8 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -1.8, 202.9 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -1.8, 202.9 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 12.7, 210.1 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 12.7, 210.1 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 30.3, 211.6 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 30.3, 211.6 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 28.7, 199.6 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 28.7, 199.6 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 35, 201.8 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 35, 201.8 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 41.1, 210.3 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 41.1, 210.3 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -481.3, 78.1 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -481.3, 78.1 , 0 );

setScaleKey( spep_0 + 120 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 5.7, 5.7 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 5.7, 5.7 );

setRotateKey( spep_0 + 120 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_0 + 149 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, -58.6 );
setRotateKey( spep_0 + 154 + OFFSET_X, 1, -58.6 );

--敵の動き2
setDisp(spep_0 + 158 + OFFSET_X, 1, 1);
setDisp(spep_0 + 212 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 158 + OFFSET_X, 1, 105  );

setMoveKey( spep_0 + 158 + OFFSET_X, 1, 243.4, -47.9 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 243.4, -47.9 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 179.3, -85.6 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 179.3, -85.6 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 181.3, -83.7 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 181.3, -83.7 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 24.1, -61.7 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 24.1, -61.7 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 70.6, 13.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 70.6, 13.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 66.2, 7.1 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 66.2, 7.1 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 50.8, 11 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 50.8, 11 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 47.5, 5.8 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 47.5, 5.8 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 51.5, -12.2 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 51.5, -12.2 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 31.5, -23.8 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 31.5, -23.8 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 24.4, -23.8 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 24.4, -23.8 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 30.9, -31.5 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 30.9, -31.5 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 23, -52.8 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 23, -52.8 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 10, -64.5 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 10, -64.5 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -7.4, -78.7 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -7.4, -78.7 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -14.4, -87.6 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -14.4, -87.6 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -18.3, -84.3 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -18.3, -84.3 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -31.2, -73.4 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -31.2, -73.4 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -35.6, -74 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -35.6, -74 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -36, -66.1 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -36, -66.1 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -36, -60.3 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -36, -60.3 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -29.2, -35.7 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -29.2, -35.7 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -22.5, 7.5 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -22.5, 7.5 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -10.4, 43.7 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -10.4, 43.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -6.3, 82.9 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -6.3, 82.9 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 15, 116.7 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 15, 116.7 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 22, 155.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 22, 155.7 , 0 );

setScaleKey( spep_0 + 158 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 2.2, 2.2 );

setRotateKey( spep_0 + 158 + OFFSET_X, 1, -77.1 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, -77.1 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, -82.2 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, -82.2 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, -100.1 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, -100.1 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, -126.4 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, -126.4 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, -142.3 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, -142.3 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -163.1 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, -163.1 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, -176 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, -176 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, -172.3 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, -172.3 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -169.8 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, -169.8 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, -163.8 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, -163.8 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, -158.8 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, -158.8 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, -156.6 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, -156.6 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, -150.9 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, -150.9 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, -146 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, -146 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, -137.1 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, -137.1 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, -130.1 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, -130.1 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, -110.9 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, -110.9 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -106.6 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -106.6 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -104.1 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, -104.1 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, -90.4 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, -90.4 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, -80.1 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, -80.1 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, -69.9 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, -69.9 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -57.2 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -57.2 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -47.3 );

setBlendColor(spep_0 + 164 + OFFSET_X, 1, 3, 0, 0, 0, 0.4)
setBlendColor(spep_0 + 172 + OFFSET_X, 1, 3, 0, 0, 0, 0.0)
setBlendColor(spep_0 + 182 + OFFSET_X, 1, 3, 0, 0, 0, 0.4)
setBlendColor(spep_0 + 190 + OFFSET_X, 1, 3, 0, 0, 0, 0.0)


--敵の動き3
setDisp(spep_0 + 220 + OFFSET_X, 1, 1);
setDisp(spep_0 + 258 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 220 + OFFSET_X, 1,5 );

setMoveKey( spep_0 + 220 + OFFSET_X, 1, 122.4, 254.7 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 122.4, 254.7 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 274.6, 320.3 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 274.6, 320.3 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 166.2, 316.3 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 166.2, 316.3 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 268.7, 169.5 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 268.7, 169.5 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 178.2, 148.7 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 178.2, 148.7 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 219.3, 190.7 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 219.3, 190.7 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 244.4, 196.5 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 244.4, 196.5 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 235.6, 204.7 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 235.6, 204.7 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 236.4, 190.3 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 236.4, 190.3 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 240.3, 187.1 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 240.3, 187.1 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 242, 188 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 242, 188 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 238.8, 202.6 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 238.8, 202.6 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 231.6, 201.7 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 231.6, 201.7 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 229.2, 196.9 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 229.2, 196.9 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 240.5, 193.7 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 240.5, 193.7 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 241.3, 187.3 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 241.3, 187.3 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 242.9, 183.2 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 242.9, 183.2 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 239.7, 186.5 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 239.7, 186.5 , 0 );

setScaleKey( spep_0 + 220 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 0.46, 0.46 );

setRotateKey( spep_0 + 220 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -48.6 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -66.1 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, -66.1 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, -75.7 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -75.7 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -86.1 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -86.1 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -93.1 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -93.1 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -101.1 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, -101.1 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -107.8 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -107.8 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -112.5 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, -112.5 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, -120.7 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, -120.7 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, -125.2 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -125.2 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -130.6 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, -130.6 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, -133.1 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -133.1 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -136.3 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, -136.3 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, -139.6 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -139.6 );

--敵の動き4
setDisp(spep_0 + 262 + OFFSET_X, 1, 1);
setDisp(spep_0 + 270 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 262 + OFFSET_X, 1,6 );

setMoveKey( spep_0 + 262 + OFFSET_X, 1, 158.3, 191.1 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 158.3, 191.1 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -41.4, 143.9 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -41.4, 143.9 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -261.1, 82.4 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -261.1, 82.4 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -434.7, 35.6 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -434.7, 35.6 , 0 );

setScaleKey( spep_0 + 262 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 0.52, 0.52 );

setRotateKey( spep_0 + 262 + OFFSET_X, 1, 17.1 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, 17.1 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -7.9 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, -7.9 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, -16.3 );

--敵の動き5
setDisp(spep_0 + 326 + OFFSET_X, 1, 1);
setDisp(spep_0 + 354 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 326 + OFFSET_X, 1,5 );

setMoveKey( spep_0 + 326 + OFFSET_X, 1, 192.1, 230.4 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 192.1, 230.4 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 311.3, 159.9 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 311.3, 159.9 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 335.4, 212.8 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 335.4, 212.8 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 267.5, 137.6 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 267.5, 137.6 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 297.2, 157.8 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 297.2, 157.8 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 306.4, 156.8 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 306.4, 156.8 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 311.4, 145.2 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 311.4, 145.2 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 315.3, 147.5 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 315.3, 147.5 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 316.7, 150.1 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 316.7, 150.1 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 310.8, 146.1 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 310.8, 146.1 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 311.4, 151.4 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 311.4, 151.4 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 299.9, 139.8 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 299.9, 139.8 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 307.8, 145.1 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 307.8, 145.1 , 0 );

setScaleKey( spep_0 + 326 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 0.24, 0.24 );

setRotateKey( spep_0 + 326 + OFFSET_X, 1, 65.9 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, 65.9 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, 123.1 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, 123.1 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, 162.3 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, 162.3 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 174.3 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, 174.3 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, 193.7 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, 193.7 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, 196 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, 196 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, 202.7 );
setRotateKey( spep_0 + 343 + OFFSET_X, 1, 202.7 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, 203.4 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, 203.4 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, 199 );
setRotateKey( spep_0 + 351 + OFFSET_X, 1, 199 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, 202.9 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, 202.9 );

--敵の動き6
setDisp(spep_0 + 366 + OFFSET_X, 1, 1);
setDisp(spep_0 + 382 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 366 + OFFSET_X, 1,8 );

setMoveKey( spep_0 + 366 + OFFSET_X, 1, -52.5, 110.9 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -52.5, 110.9 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -48.1, 112.4 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -48.1, 112.4 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -44.2, 127.6 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -44.2, 127.6 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -40.3, 128.9 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -40.3, 128.9 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -42.8, 135.1 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -42.8, 135.1 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -36.3, 149.3 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -36.3, 149.3 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -35.8, 149.3 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -35.8, 149.3 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -35.8, 151.9 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -35.8, 151.9 , 0 );

setScaleKey( spep_0 + 366 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 0.39, 0.39 );

setRotateKey( spep_0 + 366 + OFFSET_X, 1, 328 );
setRotateKey( spep_0 + 367 + OFFSET_X, 1, 328 );
setRotateKey( spep_0 + 368 + OFFSET_X, 1, 323.3 );
setRotateKey( spep_0 + 369 + OFFSET_X, 1, 323.3 );
setRotateKey( spep_0 + 370 + OFFSET_X, 1, 320.5 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, 320.5 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, 315.8 );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, 315.8 );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, 312.5 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, 312.5 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, 314 );
setRotateKey( spep_0 + 377 + OFFSET_X, 1, 314 );
setRotateKey( spep_0 + 378 + OFFSET_X, 1, 304.1 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, 304.1 );

setBlendColor(spep_0 + 374 + OFFSET_X, 1, 3, 0, 0, 0, 0.4)

--敵の動き7
setDisp(spep_0 + 390 + OFFSET_X, 1, 1);
setDisp(spep_0 + 422 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 390 + OFFSET_X, 1, 108  );

setMoveKey( spep_0 + 390 + OFFSET_X, 1, -24.9, 243 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -24.9, 243 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 12.1, 268.1 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 12.1, 268.1 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -46.7, 229.1 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -46.7, 229.1 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -54.7, 267.5 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -54.7, 267.5 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -11.7, 231.8 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -11.7, 231.8 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -27, 245.7 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -27, 245.7 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -11.7, 254.3 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -11.7, 254.3 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -15.7, 249 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -15.7, 249 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -19.7, 247.6 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -19.7, 247.6 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -21.7, 254.3 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -21.7, 254.3 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -15.1, 247 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -15.1, 247 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -25.6, 248.3 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -25.6, 248.3 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -14.4, 250.3 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -14.4, 250.3 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -21, 254.3 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -21, 254.3 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -21, 245.7 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -21, 245.7 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -18.4, 251 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -18.4, 251 , 0 );

setScaleKey( spep_0 + 390 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 0.79, 0.79 );

setRotateKey( spep_0 + 390 + OFFSET_X, 1, 345.2 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, 345.2 );

setBlendColor(spep_0 + 390 + OFFSET_X, 1, 3, 0, 0, 0, 0.5)

--敵の動き8
setDisp(spep_0 + 448 + OFFSET_X, 1, 1);
setDisp(spep_0 + 466 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 448 + OFFSET_X, 1,7 );
changeAnime( spep_0 + 464 + OFFSET_X, 1,6 );

setMoveKey( spep_0 + 448 + OFFSET_X, 1, -143, 214 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, -143, 214 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -148, 210.7 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -148, 210.7 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -144.7, 217.5 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, -144.7, 217.5 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, -165.6, 205.1 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, -165.6, 205.1 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -189.9, 181 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -189.9, 181 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -178.5, 172.1 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, -178.5, 172.1 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, -189.8, 165.8 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -189.8, 165.8 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -197.5, 170.9 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -197.5, 170.9 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -303, 179.4 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -303, 179.4 , 0 );

setScaleKey( spep_0 + 448 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 449 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 450 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 453 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 454 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 455 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 456 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 459 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 460 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 463 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 464 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 466 + OFFSET_X, 1, 4.78, 4.78 );

setRotateKey( spep_0 + 448 + OFFSET_X, 1, 381.2 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, 381.2 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, 376.9 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, 376.9 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, 377.5 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, 377.5 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, 371.7 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, 371.7 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, 366.9 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, 366.9 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, 366.2 );
setRotateKey( spep_0 + 459 + OFFSET_X, 1, 366.2 );
setRotateKey( spep_0 + 460 + OFFSET_X, 1, 362 );
setRotateKey( spep_0 + 463 + OFFSET_X, 1, 362 );
setRotateKey( spep_0 + 464 + OFFSET_X, 1, 392.6 );
setRotateKey( spep_0 + 466 + OFFSET_X, 1, 392.6 );


--敵の動き9
setDisp(spep_0 + 478 + OFFSET_X, 1, 1);
setDisp(spep_0 + 482 + OFFSET_X, 1, 0);

setMoveKey( spep_0 + 478 + OFFSET_X, 1, -355.2, 338.5 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -355.2, 338.5 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -367.6, 967.5 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -367.6, 967.5 , 0 );

setScaleKey( spep_0 + 478 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 4.78, 4.78 );

setRotateKey( spep_0 + 478 + OFFSET_X, 1, 392.6 );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, 392.6 );

setBlendColor(spep_0 + 482 + OFFSET_X, 1, 3, 0, 0, 0, 0.0 )


--敵の動き10
setDisp(spep_0 + 664 + OFFSET_X, 1, 1);
setDisp(spep_0 + 672 + OFFSET_X, 1, 0);

setMoveKey( spep_0 + 664 + OFFSET_X, 1, -85.3, 68.4 , 0 );
setMoveKey( spep_0 + 665 + OFFSET_X, 1, -85.3, 68.4 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_X, 1, -101.3, 60.3 , 0 );
setMoveKey( spep_0 + 667 + OFFSET_X, 1, -101.3, 60.3 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, -117.4, 52.2 , 0 );
setMoveKey( spep_0 + 669 + OFFSET_X, 1, -117.4, 52.2 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, -133.5, 44.1 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, -133.5, 44.1 , 0 );

setScaleKey( spep_0 + 664 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 672 + OFFSET_X, 1, 2.77, 2.77 );

setRotateKey( spep_0 + 664 + OFFSET_X, 1, 342.3 );
setRotateKey( spep_0 + 665 + OFFSET_X, 1, 342.3 );
setRotateKey( spep_0 + 666 + OFFSET_X, 1, 341 );
setRotateKey( spep_0 + 667 + OFFSET_X, 1, 341 );
setRotateKey( spep_0 + 668 + OFFSET_X, 1, 339.8 );
setRotateKey( spep_0 + 669 + OFFSET_X, 1, 339.8 );
setRotateKey( spep_0 + 670 + OFFSET_X, 1, 338.6 );
setRotateKey( spep_0 + 672 + OFFSET_X, 1, 338.6 );

--敵の動き11
setDisp(spep_0 + 680 + OFFSET_X, 1, 1);
setDisp(spep_0 + 694 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 680 + OFFSET_X, 1,8 );

setMoveKey( spep_0 + 680 + OFFSET_X, 1, -221.3, 40.7 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, -221.3, 40.7 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, -236.5, 37.7 , 0 );
setMoveKey( spep_0 + 683 + OFFSET_X, 1, -236.5, 37.7 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, -247.4, 3.4 , 0 );
setMoveKey( spep_0 + 685 + OFFSET_X, 1, -247.4, 3.4 , 0 );
setMoveKey( spep_0 + 686 + OFFSET_X, 1, -256.7, -3.7 , 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, -256.7, -3.7 , 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, -268.1, -5.4 , 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, -268.1, -5.4 , 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, -264, 1.1 , 0 );
setMoveKey( spep_0 + 691 + OFFSET_X, 1, -264, 1.1 , 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, -273.9, 5.9 , 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, -273.9, 5.9 , 0 );

setScaleKey( spep_0 + 680 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 694 + OFFSET_X, 1, 2.77, 2.77 );

setRotateKey( spep_0 + 680 + OFFSET_X, 1, 324.8 );
setRotateKey( spep_0 + 681 + OFFSET_X, 1, 324.8 );
setRotateKey( spep_0 + 682 + OFFSET_X, 1, 324.4 );
setRotateKey( spep_0 + 683 + OFFSET_X, 1, 324.4 );
setRotateKey( spep_0 + 684 + OFFSET_X, 1, 323.4 );
setRotateKey( spep_0 + 685 + OFFSET_X, 1, 323.4 );
setRotateKey( spep_0 + 686 + OFFSET_X, 1, 324.7 );
setRotateKey( spep_0 + 691 + OFFSET_X, 1, 324.7 );
setRotateKey( spep_0 + 692 + OFFSET_X, 1, 326.9 );
setRotateKey( spep_0 + 694 + OFFSET_X, 1, 326.9 );

--敵の動き12
setDisp(spep_0 + 718 + OFFSET_X, 1, 1);
setDisp(spep_0 + 846 + OFFSET_X, 1, 0);
setDisp(spep_0 + 848 + OFFSET_X, 1, 1);
setDisp(spep_0 + 850 + OFFSET_X, 1, 0);
setDisp(spep_0 + 852 + OFFSET_X, 1, 1);
setDisp(spep_0 + 874 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 718 + OFFSET_X, 1, 105  );
changeAnime( spep_0 + 724 + OFFSET_X, 1,8 );
changeAnime( spep_0 + 736 + OFFSET_X, 1,6 );
changeAnime( spep_0 + 742 + OFFSET_X, 1,5 );
changeAnime( spep_0 + 772 + OFFSET_X, 1, 107  );
changeAnime( spep_0 + 788 + OFFSET_X, 1,8 );
changeAnime( spep_0 + 796 + OFFSET_X, 1,6 );
changeAnime( spep_0 + 832 + OFFSET_X, 1,7 );
changeAnime( spep_0 + 852 + OFFSET_X, 1, 107  );

setMoveKey( spep_0 + 718 + OFFSET_X, 1, 494.5, 198.4 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, 494.5, 198.4 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, 305.8, 93.3 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, 305.8, 93.3 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, 63.7, -68.8 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, 63.7, -68.8 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, 71.7, -51.2 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, 71.7, -51.2 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, 41.8, -59.3 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, 41.8, -59.3 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, -4.7, -36.8 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, -4.7, -36.8 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, 3.3, -45.7 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, 3.3, -45.7 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, -13.1, -30.2 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, -13.1, -30.2 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, -42.8, -4.9 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, -42.8, -4.9 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, -47.6, -9.8 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, -47.6, -9.8 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, -77.3, 1.6 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, -77.3, 1.6 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, -85.5, 21.3 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, -85.5, 21.3 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, -78.2, 22.1 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, -78.2, 22.1 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, -78.7, 51.7 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, -78.7, 51.7 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, -53.9, 78.8 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, -53.9, 78.8 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, -43.2, 70.6 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, -43.2, 70.6 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, -30.9, 91 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, -30.9, 91 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, -81.7, 128.6 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, -81.7, 128.6 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, -68.5, 113 , 0 );
setMoveKey( spep_0 + 757 + OFFSET_X, 1, -68.5, 113 , 0 );
setMoveKey( spep_0 + 758 + OFFSET_X, 1, -68.6, 112.9 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, -68.6, 112.9 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, -81.7, 119.3 , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, -81.7, 119.3 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, -80, 122.6 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, -80, 122.6 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, -87.3, 134 , 0 );
setMoveKey( spep_0 + 765 + OFFSET_X, 1, -87.3, 134 , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, -99.6, 118.4 , 0 );
setMoveKey( spep_0 + 767 + OFFSET_X, 1, -99.6, 118.4 , 0 );
setMoveKey( spep_0 + 768 + OFFSET_X, 1, -108.6, 109.4 , 0 );
setMoveKey( spep_0 + 769 + OFFSET_X, 1, -108.6, 109.4 , 0 );
setMoveKey( spep_0 + 770 + OFFSET_X, 1, -111.1, 102.1 , 0 );
setMoveKey( spep_0 + 771 + OFFSET_X, 1, -111.1, 102.1 , 0 );
setMoveKey( spep_0 + 772 + OFFSET_X, 1, 56.6, 220.4 , 0 );
setMoveKey( spep_0 + 773 + OFFSET_X, 1, 56.6, 220.4 , 0 );
setMoveKey( spep_0 + 774 + OFFSET_X, 1, 36.7, 219.3 , 0 );
setMoveKey( spep_0 + 775 + OFFSET_X, 1, 36.7, 219.3 , 0 );
setMoveKey( spep_0 + 776 + OFFSET_X, 1, 43.9, 231.4 , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, 43.9, 231.4 , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, 47.7, 226.7 , 0 );
setMoveKey( spep_0 + 779 + OFFSET_X, 1, 47.7, 226.7 , 0 );
setMoveKey( spep_0 + 780 + OFFSET_X, 1, 47.7, 220.6 , 0 );
setMoveKey( spep_0 + 783 + OFFSET_X, 1, 47.7, 220.6 , 0 );
setMoveKey( spep_0 + 784 + OFFSET_X, 1, 58.3, 214 , 0 );
setMoveKey( spep_0 + 785 + OFFSET_X, 1, 58.3, 214 , 0 );
setMoveKey( spep_0 + 786 + OFFSET_X, 1, 69.7, 190.3 , 0 );
setMoveKey( spep_0 + 787 + OFFSET_X, 1, 69.7, 190.3 , 0 );
setMoveKey( spep_0 + 788 + OFFSET_X, 1, -32, 132.2 , 0 );
setMoveKey( spep_0 + 789 + OFFSET_X, 1, -32, 132.2 , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, 45, 221.4 , 0 );
setMoveKey( spep_0 + 791 + OFFSET_X, 1, 45, 221.4 , 0 );
setMoveKey( spep_0 + 792 + OFFSET_X, 1, -60.2, 145.2 , 0 );
setMoveKey( spep_0 + 793 + OFFSET_X, 1, -60.2, 145.2 , 0 );
setMoveKey( spep_0 + 794 + OFFSET_X, 1, -19.3, 179.7 , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, -19.3, 179.7 , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, 18.5, 301 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, 18.5, 301 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, 18.1, 175 , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, 18.1, 175 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, -9, 341.1 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, -9, 341.1 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, -22.6, 307.2 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, -22.6, 307.2 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, -22, 336 , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, -22, 336 , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, -27.8, 334.5 , 0 );
setMoveKey( spep_0 + 807 + OFFSET_X, 1, -27.8, 334.5 , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, 212.8, 379.4 , 0 );
setMoveKey( spep_0 + 809 + OFFSET_X, 1, 212.8, 379.4 , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, 218.8, 369.5 , 0 );
setMoveKey( spep_0 + 811 + OFFSET_X, 1, 218.8, 369.5 , 0 );
setMoveKey( spep_0 + 812 + OFFSET_X, 1, 289.2, 355.7 , 0 );
setMoveKey( spep_0 + 813 + OFFSET_X, 1, 289.2, 355.7 , 0 );
setMoveKey( spep_0 + 814 + OFFSET_X, 1, 267.8, 375.1 , 0 );
setMoveKey( spep_0 + 815 + OFFSET_X, 1, 267.8, 375.1 , 0 );
setMoveKey( spep_0 + 816 + OFFSET_X, 1, 367, 334 , 0 );
setMoveKey( spep_0 + 817 + OFFSET_X, 1, 367, 334 , 0 );
setMoveKey( spep_0 + 818 + OFFSET_X, 1, 297.2, 358.9 , 0 );
setMoveKey( spep_0 + 819 + OFFSET_X, 1, 297.2, 358.9 , 0 );
setMoveKey( spep_0 + 820 + OFFSET_X, 1, 346.5, 354.1 , 0 );
setMoveKey( spep_0 + 821 + OFFSET_X, 1, 346.5, 354.1 , 0 );
setMoveKey( spep_0 + 822 + OFFSET_X, 1, 346.3, 358.1 , 0 );
setMoveKey( spep_0 + 823 + OFFSET_X, 1, 346.3, 358.1 , 0 );
setMoveKey( spep_0 + 824 + OFFSET_X, 1, 352.3, 367.4 , 0 );
setMoveKey( spep_0 + 825 + OFFSET_X, 1, 352.3, 367.4 , 0 );
setMoveKey( spep_0 + 826 + OFFSET_X, 1, 345.9, 351 , 0 );
setMoveKey( spep_0 + 827 + OFFSET_X, 1, 345.9, 351 , 0 );
setMoveKey( spep_0 + 828 + OFFSET_X, 1, 318, 309.5 , 0 );
setMoveKey( spep_0 + 829 + OFFSET_X, 1, 318, 309.5 , 0 );
setMoveKey( spep_0 + 830 + OFFSET_X, 1, 262.9, 366.7 , 0 );
setMoveKey( spep_0 + 831 + OFFSET_X, 1, 262.9, 366.7 , 0 );
setMoveKey( spep_0 + 832 + OFFSET_X, 1, 109, 305.9 , 0 );
setMoveKey( spep_0 + 833 + OFFSET_X, 1, 109, 305.9 , 0 );
setMoveKey( spep_0 + 834 + OFFSET_X, 1, 187.5, 409.9 , 0 );
setMoveKey( spep_0 + 835 + OFFSET_X, 1, 187.5, 409.9 , 0 );
setMoveKey( spep_0 + 836 + OFFSET_X, 1, 127, 376.8 , 0 );
setMoveKey( spep_0 + 837 + OFFSET_X, 1, 127, 376.8 , 0 );
setMoveKey( spep_0 + 838 + OFFSET_X, 1, 93.6, 356.5 , 0 );
setMoveKey( spep_0 + 839 + OFFSET_X, 1, 93.6, 356.5 , 0 );
setMoveKey( spep_0 + 840 + OFFSET_X, 1, 87.8, 360.3 , 0 );
setMoveKey( spep_0 + 841 + OFFSET_X, 1, 87.8, 360.3 , 0 );
setMoveKey( spep_0 + 842 + OFFSET_X, 1, 87.6, 362.3 , 0 );
setMoveKey( spep_0 + 843 + OFFSET_X, 1, 87.6, 362.3 , 0 );
setMoveKey( spep_0 + 844 + OFFSET_X, 1, 60, 346.4 , 0 );
setMoveKey( spep_0 + 846 + OFFSET_X, 1, 60, 346.4 , 0 );

setMoveKey( spep_0 + 848 + OFFSET_X, 1, 117.9, 269 , 0 );
setMoveKey( spep_0 + 850 + OFFSET_X, 1, 117.9, 269 , 0 );

setMoveKey( spep_0 + 852 + OFFSET_X, 1, 183.9, 345.5 , 0 );
setMoveKey( spep_0 + 853 + OFFSET_X, 1, 183.9, 345.5 , 0 );
setMoveKey( spep_0 + 854 + OFFSET_X, 1, 342, 214.4 , 0 );
setMoveKey( spep_0 + 855 + OFFSET_X, 1, 342, 214.4 , 0 );
setMoveKey( spep_0 + 856 + OFFSET_X, 1, 302.2, 246 , 0 );
setMoveKey( spep_0 + 857 + OFFSET_X, 1, 302.2, 246 , 0 );
setMoveKey( spep_0 + 858 + OFFSET_X, 1, 374.1, 198.3 , 0 );
setMoveKey( spep_0 + 859 + OFFSET_X, 1, 374.1, 198.3 , 0 );
setMoveKey( spep_0 + 860 + OFFSET_X, 1, 378.8, 204.1 , 0 );
setMoveKey( spep_0 + 861 + OFFSET_X, 1, 378.8, 204.1 , 0 );
setMoveKey( spep_0 + 862 + OFFSET_X, 1, 404.3, 172.7 , 0 );
setMoveKey( spep_0 + 863 + OFFSET_X, 1, 404.3, 172.7 , 0 );
setMoveKey( spep_0 + 864 + OFFSET_X, 1, 408.8, 170.2 , 0 );
setMoveKey( spep_0 + 865 + OFFSET_X, 1, 408.8, 170.2 , 0 );
setMoveKey( spep_0 + 866 + OFFSET_X, 1, 418.1, 163.8 , 0 );
setMoveKey( spep_0 + 867 + OFFSET_X, 1, 418.1, 163.8 , 0 );
setMoveKey( spep_0 + 868 + OFFSET_X, 1, 436.6, 145.8 , 0 );
setMoveKey( spep_0 + 869 + OFFSET_X, 1, 436.6, 145.8 , 0 );
setMoveKey( spep_0 + 870 + OFFSET_X, 1, 434.3, 146.7 , 0 );
setMoveKey( spep_0 + 871 + OFFSET_X, 1, 434.3, 146.7 , 0 );
setMoveKey( spep_0 + 872 + OFFSET_X, 1, 486.4, 192.8 , 0 );
setMoveKey( spep_0 + 874 + OFFSET_X, 1, 486.4, 192.8 , 0 );

setScaleKey( spep_0 + 718 + OFFSET_X, 1, 7.22, 7.22 );
setScaleKey( spep_0 + 721 + OFFSET_X, 1, 7.22, 7.22 );
setScaleKey( spep_0 + 722 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_0 + 723 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 725 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 726 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 731 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 732 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 733 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 734 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 735 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 736 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 741 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 742 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 745 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 746 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 747 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 748 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 753 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 754 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 755 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 756 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 757 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 758 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 759 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 760 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 763 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 764 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 765 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 766 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 769 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 770 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 771 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 772 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 773 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 774 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 777 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 778 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 779 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 780 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 785 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 786 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 787 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 788 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 791 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 792 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 795 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 796 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 803 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 804 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 805 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 806 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 813 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 814 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 823 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 824 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 825 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 826 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 827 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 828 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 829 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 830 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 831 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_0 + 832 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 833 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 834 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 835 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 836 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 837 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 838 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 839 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 840 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 841 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 842 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 843 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 844 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 847 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 848 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 850 + OFFSET_X, 1, 1.23, 1.23 );

setScaleKey( spep_0 + 852 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 853 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 854 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 855 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 856 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 857 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 858 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 859 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 860 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 861 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 862 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 863 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 864 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 865 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 866 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 867 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 868 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 871 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 872 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 874 + OFFSET_X, 1, 1.95, 1.95 );

setRotateKey( spep_0 + 718 + OFFSET_X, 1, 302.9 );
setRotateKey( spep_0 + 721 + OFFSET_X, 1, 302.9 );
setRotateKey( spep_0 + 722 + OFFSET_X, 1, 281.7 );
setRotateKey( spep_0 + 723 + OFFSET_X, 1, 281.7 );
setRotateKey( spep_0 + 724 + OFFSET_X, 1, 284.4 );
setRotateKey( spep_0 + 725 + OFFSET_X, 1, 284.4 );
setRotateKey( spep_0 + 726 + OFFSET_X, 1, 285.9 );
setRotateKey( spep_0 + 727 + OFFSET_X, 1, 285.9 );
setRotateKey( spep_0 + 728 + OFFSET_X, 1, 306.8 );
setRotateKey( spep_0 + 729 + OFFSET_X, 1, 306.8 );
setRotateKey( spep_0 + 730 + OFFSET_X, 1, 298.9 );
setRotateKey( spep_0 + 731 + OFFSET_X, 1, 298.9 );
setRotateKey( spep_0 + 732 + OFFSET_X, 1, 297.3 );
setRotateKey( spep_0 + 733 + OFFSET_X, 1, 297.3 );
setRotateKey( spep_0 + 734 + OFFSET_X, 1, 292.1 );
setRotateKey( spep_0 + 735 + OFFSET_X, 1, 292.1 );
setRotateKey( spep_0 + 736 + OFFSET_X, 1, 280.4 );
setRotateKey( spep_0 + 737 + OFFSET_X, 1, 280.4 );
setRotateKey( spep_0 + 738 + OFFSET_X, 1, 281.6 );
setRotateKey( spep_0 + 739 + OFFSET_X, 1, 281.6 );
setRotateKey( spep_0 + 740 + OFFSET_X, 1, 275.9 );
setRotateKey( spep_0 + 741 + OFFSET_X, 1, 275.9 );
setRotateKey( spep_0 + 742 + OFFSET_X, 1, 223.7 );
setRotateKey( spep_0 + 743 + OFFSET_X, 1, 223.7 );
setRotateKey( spep_0 + 744 + OFFSET_X, 1, 222.5 );
setRotateKey( spep_0 + 745 + OFFSET_X, 1, 222.5 );
setRotateKey( spep_0 + 746 + OFFSET_X, 1, 230.7 );
setRotateKey( spep_0 + 747 + OFFSET_X, 1, 230.7 );
setRotateKey( spep_0 + 748 + OFFSET_X, 1, 248.9 );
setRotateKey( spep_0 + 751 + OFFSET_X, 1, 248.9 );
setRotateKey( spep_0 + 752 + OFFSET_X, 1, 258.4 );
setRotateKey( spep_0 + 753 + OFFSET_X, 1, 258.4 );
setRotateKey( spep_0 + 754 + OFFSET_X, 1, 232.9 );
setRotateKey( spep_0 + 757 + OFFSET_X, 1, 232.9 );
setRotateKey( spep_0 + 758 + OFFSET_X, 1, 228.5 );
setRotateKey( spep_0 + 759 + OFFSET_X, 1, 228.5 );
setRotateKey( spep_0 + 760 + OFFSET_X, 1, 214.6 );
setRotateKey( spep_0 + 763 + OFFSET_X, 1, 214.6 );
setRotateKey( spep_0 + 764 + OFFSET_X, 1, 212.9 );
setRotateKey( spep_0 + 765 + OFFSET_X, 1, 212.9 );
setRotateKey( spep_0 + 766 + OFFSET_X, 1, 198.9 );
setRotateKey( spep_0 + 769 + OFFSET_X, 1, 198.9 );
setRotateKey( spep_0 + 770 + OFFSET_X, 1, 192.9 );
setRotateKey( spep_0 + 771 + OFFSET_X, 1, 192.9 );
setRotateKey( spep_0 + 772 + OFFSET_X, 1, 361.9 );
setRotateKey( spep_0 + 773 + OFFSET_X, 1, 361.9 );
setRotateKey( spep_0 + 774 + OFFSET_X, 1, 359.2 );
setRotateKey( spep_0 + 775 + OFFSET_X, 1, 359.2 );
setRotateKey( spep_0 + 776 + OFFSET_X, 1, 366.9 );
setRotateKey( spep_0 + 779 + OFFSET_X, 1, 366.9 );
setRotateKey( spep_0 + 780 + OFFSET_X, 1, 372.9 );
setRotateKey( spep_0 + 783 + OFFSET_X, 1, 372.9 );
setRotateKey( spep_0 + 784 + OFFSET_X, 1, 376.1 );
setRotateKey( spep_0 + 785 + OFFSET_X, 1, 376.1 );
setRotateKey( spep_0 + 786 + OFFSET_X, 1, 397.6 );
setRotateKey( spep_0 + 787 + OFFSET_X, 1, 397.6 );
setRotateKey( spep_0 + 788 + OFFSET_X, 1, 350.6 );
setRotateKey( spep_0 + 789 + OFFSET_X, 1, 350.6 );
setRotateKey( spep_0 + 790 + OFFSET_X, 1, 347.9 );
setRotateKey( spep_0 + 791 + OFFSET_X, 1, 347.9 );
setRotateKey( spep_0 + 792 + OFFSET_X, 1, 347.3 );
setRotateKey( spep_0 + 793 + OFFSET_X, 1, 347.3 );
setRotateKey( spep_0 + 794 + OFFSET_X, 1, 342.4 );
setRotateKey( spep_0 + 795 + OFFSET_X, 1, 342.4 );
setRotateKey( spep_0 + 796 + OFFSET_X, 1, 329 );
setRotateKey( spep_0 + 797 + OFFSET_X, 1, 329 );
setRotateKey( spep_0 + 798 + OFFSET_X, 1, 330.5 );
setRotateKey( spep_0 + 799 + OFFSET_X, 1, 330.5 );
setRotateKey( spep_0 + 800 + OFFSET_X, 1, 335.2 );
setRotateKey( spep_0 + 801 + OFFSET_X, 1, 335.2 );
setRotateKey( spep_0 + 802 + OFFSET_X, 1, 344.4 );
setRotateKey( spep_0 + 803 + OFFSET_X, 1, 344.4 );
setRotateKey( spep_0 + 804 + OFFSET_X, 1, 346.9 );
setRotateKey( spep_0 + 805 + OFFSET_X, 1, 346.9 );
setRotateKey( spep_0 + 806 + OFFSET_X, 1, 347.8 );
setRotateKey( spep_0 + 807 + OFFSET_X, 1, 347.8 );
setRotateKey( spep_0 + 808 + OFFSET_X, 1, 393.2 );
setRotateKey( spep_0 + 809 + OFFSET_X, 1, 393.2 );
setRotateKey( spep_0 + 810 + OFFSET_X, 1, 392.7 );
setRotateKey( spep_0 + 811 + OFFSET_X, 1, 392.7 );
setRotateKey( spep_0 + 812 + OFFSET_X, 1, 383.4 );
setRotateKey( spep_0 + 813 + OFFSET_X, 1, 383.4 );
setRotateKey( spep_0 + 814 + OFFSET_X, 1, 458.1 );
setRotateKey( spep_0 + 815 + OFFSET_X, 1, 458.1 );
setRotateKey( spep_0 + 816 + OFFSET_X, 1, 456.7 );
setRotateKey( spep_0 + 817 + OFFSET_X, 1, 456.7 );
setRotateKey( spep_0 + 818 + OFFSET_X, 1, 457 );
setRotateKey( spep_0 + 819 + OFFSET_X, 1, 457 );
setRotateKey( spep_0 + 820 + OFFSET_X, 1, 453.3 );
setRotateKey( spep_0 + 821 + OFFSET_X, 1, 453.3 );
setRotateKey( spep_0 + 822 + OFFSET_X, 1, 452.8 );
setRotateKey( spep_0 + 823 + OFFSET_X, 1, 452.8 );
setRotateKey( spep_0 + 824 + OFFSET_X, 1, 450.3 );
setRotateKey( spep_0 + 825 + OFFSET_X, 1, 450.3 );
setRotateKey( spep_0 + 826 + OFFSET_X, 1, 448.9 );
setRotateKey( spep_0 + 827 + OFFSET_X, 1, 448.9 );
setRotateKey( spep_0 + 828 + OFFSET_X, 1, 447.4 );
setRotateKey( spep_0 + 829 + OFFSET_X, 1, 447.4 );
setRotateKey( spep_0 + 830 + OFFSET_X, 1, 404.2 );
setRotateKey( spep_0 + 831 + OFFSET_X, 1, 404.2 );
setRotateKey( spep_0 + 832 + OFFSET_X, 1, 386.5 );
setRotateKey( spep_0 + 837 + OFFSET_X, 1, 386.5 );
setRotateKey( spep_0 + 838 + OFFSET_X, 1, 390.5 );
setRotateKey( spep_0 + 839 + OFFSET_X, 1, 390.5 );
setRotateKey( spep_0 + 840 + OFFSET_X, 1, 390.2 );
setRotateKey( spep_0 + 841 + OFFSET_X, 1, 390.2 );
setRotateKey( spep_0 + 842 + OFFSET_X, 1, 393.7 );
setRotateKey( spep_0 + 850 + OFFSET_X, 1, 393.7 );

setRotateKey( spep_0 + 852 + OFFSET_X, 1, 396.3 );
setRotateKey( spep_0 + 874 + OFFSET_X, 1, 396.3 );

setBlendColor(spep_0 + 750 + OFFSET_X, 1, 3, 0, 0, 0, 0.5 )
setBlendColor(spep_0 + 758 + OFFSET_X, 1, 3, 0, 0, 0, 0.0 )


--敵の動き12
setDisp(spep_0 + 892 + OFFSET_X, 1, 1);
setDisp(spep_0 + 918 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 892 + OFFSET_X, 1, 108  );

setMoveKey( spep_0 + 892 + OFFSET_X, 1, -252.1, -291 , 0 );
setMoveKey( spep_0 + 893 + OFFSET_X, 1, -252.1, -291 , 0 );
setMoveKey( spep_0 + 894 + OFFSET_X, 1, -25, 124.2 , 0 );
setMoveKey( spep_0 + 895 + OFFSET_X, 1, -25, 124.2 , 0 );
setMoveKey( spep_0 + 896 + OFFSET_X, 1, 45.8, 252.4 , 0 );
setMoveKey( spep_0 + 897 + OFFSET_X, 1, 45.8, 252.4 , 0 );
setMoveKey( spep_0 + 898 + OFFSET_X, 1, 49.7, 259.4 , 0 );
setMoveKey( spep_0 + 899 + OFFSET_X, 1, 49.7, 259.4 , 0 );
setMoveKey( spep_0 + 900 + OFFSET_X, 1, 52.8, 265 , 0 );
setMoveKey( spep_0 + 901 + OFFSET_X, 1, 52.8, 265 , 0 );
setMoveKey( spep_0 + 902 + OFFSET_X, 1, 55.3, 269.5 , 0 );
setMoveKey( spep_0 + 903 + OFFSET_X, 1, 55.3, 269.5 , 0 );
setMoveKey( spep_0 + 904 + OFFSET_X, 1, 57.3, 273.1 , 0 );
setMoveKey( spep_0 + 905 + OFFSET_X, 1, 57.3, 273.1 , 0 );
setMoveKey( spep_0 + 906 + OFFSET_X, 1, 58.9, 275.9 , 0 );
setMoveKey( spep_0 + 907 + OFFSET_X, 1, 58.9, 275.9 , 0 );
setMoveKey( spep_0 + 908 + OFFSET_X, 1, 60.1, 278.1 , 0 );
setMoveKey( spep_0 + 909 + OFFSET_X, 1, 60.1, 278.1 , 0 );
setMoveKey( spep_0 + 910 + OFFSET_X, 1, 61.1, 279.9 , 0 );
setMoveKey( spep_0 + 911 + OFFSET_X, 1, 61.1, 279.9 , 0 );
setMoveKey( spep_0 + 912 + OFFSET_X, 1, 61.8, 281.2 , 0 );
setMoveKey( spep_0 + 913 + OFFSET_X, 1, 61.8, 281.2 , 0 );
setMoveKey( spep_0 + 914 + OFFSET_X, 1, 62.4, 282.2 , 0 );
setMoveKey( spep_0 + 915 + OFFSET_X, 1, 62.4, 282.2 , 0 );
setMoveKey( spep_0 + 916 + OFFSET_X, 1, 62.6, 282.8 , 0 );
setMoveKey( spep_0 + 918 + OFFSET_X, 1, 62.6, 282.8 , 0 );

setScaleKey( spep_0 + 892 + OFFSET_X, 1, 8.62, 8.62 );
setScaleKey( spep_0 + 893 + OFFSET_X, 1, 8.62, 8.62 );
setScaleKey( spep_0 + 894 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 895 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 896 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 897 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_0 + 898 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 899 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 900 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 901 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 902 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 903 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 904 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 905 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 906 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 907 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 908 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 909 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 910 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 911 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 912 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 913 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 914 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 915 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 916 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 918 + OFFSET_X, 1, 1.04, 1.04 );

setRotateKey( spep_0 + 892 + OFFSET_X, 1, 339.7 );
setRotateKey( spep_0 + 893 + OFFSET_X, 1, 339.7 );
setRotateKey( spep_0 + 894 + OFFSET_X, 1, 326 );
setRotateKey( spep_0 + 895 + OFFSET_X, 1, 326 );
setRotateKey( spep_0 + 896 + OFFSET_X, 1, 321.7 );
setRotateKey( spep_0 + 897 + OFFSET_X, 1, 321.7 );
setRotateKey( spep_0 + 898 + OFFSET_X, 1, 321.5 );
setRotateKey( spep_0 + 899 + OFFSET_X, 1, 321.5 );
setRotateKey( spep_0 + 900 + OFFSET_X, 1, 321.3 );
setRotateKey( spep_0 + 901 + OFFSET_X, 1, 321.3 );
setRotateKey( spep_0 + 902 + OFFSET_X, 1, 321.2 );
setRotateKey( spep_0 + 903 + OFFSET_X, 1, 321.2 );
setRotateKey( spep_0 + 904 + OFFSET_X, 1, 321 );
setRotateKey( spep_0 + 907 + OFFSET_X, 1, 321 );
setRotateKey( spep_0 + 908 + OFFSET_X, 1, 320.9 );
setRotateKey( spep_0 + 909 + OFFSET_X, 1, 320.9 );
setRotateKey( spep_0 + 910 + OFFSET_X, 1, 320.8 );
setRotateKey( spep_0 + 913 + OFFSET_X, 1, 320.8 );
setRotateKey( spep_0 + 914 + OFFSET_X, 1, 320.7 );
setRotateKey( spep_0 + 918 + OFFSET_X, 1, 320.7 );

-- ** 音 ** --
--飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 4, 1019, "", 0, 0, 0, -1);	
SE004 = playSeVer2( spep_0 + 12, 1183, "", 0, 0, 0, -1);	
SE005 = playSeVer2( spep_0 + 68, 1019, "", 0, 0, 0, -1);	

--加速する		
SE006 = playSeVer2( spep_0 + 68, 1017, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE006, 74 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 90; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);

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
--加速する
SE007 = playSeVer2( spep_0 + 80, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE007, 164 );
SE008 = playSeVer2( spep_0 + 90, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE008, 52 );
setTimeStretch( SE008, 1.33, 30, 4 );

--飛んでくる
SE009 = playSeVer2( spep_0 + 132, 1019, "",spep_0 + 188, 0, 26, -1);

--ドロップキック
SE010 = playSeVer2( spep_0 + 132, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 144, 1027, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 144, 1187, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 144, 1359, "", 0, 0, 0, -1);

--回し蹴り
SE014 = playSeVer2( spep_0 + 192, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 204, 1153, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 204, 1010, "", 0, 0, 0, -1);

--瞬間移動
SE017 = playSeVer2( spep_0 + 224, 1109, "", 0, 0, 0, -1);

--蹴り飛ばす
SE018 = playSeVer2( spep_0 + 242, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 242, SE018, 158 );
SE019 = playSeVer2( spep_0 + 250, 1187, "", 0, 0, 0, -1);

--瞬間移動
SE020 = playSeVer2( spep_0 + 272, 1109, "", 0, 0, 0, -1);

--殴り飛ばす
SE021 = playSeVer2( spep_0 + 302, 1003, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 310, 1120, "", 0, 0, 0, -1);

--ビル激突
SE023 = playSeVer2( spep_0 + 354, 1159, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 364, 1024, "", 0, 0, 0, -1);

--ビル内激突
SE025 = playSeVer2( spep_0 + 400, 1061, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 400, 1014, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 428, 1027, "", 0, 0, 0, -1);

--瞬間移動
SE028 = playSeVer2( spep_0 + 452, 1109, "", 0, 0, 0, -1);

--蹴り上げ
SE029 = playSeVer2( spep_0 + 460, 1004, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 464, 1049, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 464, 1187, "", 0, 0, 0, -1);

--ビル内貫通
SE032 = playSeVer2( spep_0 + 504, 1044, "",spep_0 + 574, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 504, SE032, 135 );
SE033 = playSeVer2( spep_0 + 504, 1067, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 538, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 538, SE034, 84 );

--回転する
SE035 = playSeVer2( spep_0 + 582, 1450, "",spep_0 + 652, 0, 14, -1);
SE036 = playSeVer2( spep_0 + 584, 1388, "",spep_0 + 672, 0, 34, -1);

--瞬間移動
SE037 = playSeVer2( spep_0 + 634, 1499, "",spep_0 + 712, 0, 52, -1);
SE038 = playSeVer2( spep_0 + 634, 1201, "", 0, 0, 0, -1);

--蹴り飛ばす
SE039 = playSeVer2( spep_0 + 664, 1452, "",spep_0 + 738, 0, 22, -1);
SE040 = playSeVer2( spep_0 + 670, 1426, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 670, SE040, 70 );
SE041 = playSeVer2( spep_0 + 672, 1120, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 672, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE043 = playSeVer2( spep_0 + 706, 1121, "",spep_0 + 816, 0, 52, -1);

--ビル激突
SE044 = playSeVer2( spep_0 + 726, 1023, "", 0, 0, 0, -1);

--ラッシュ
SE045 = playSeVer2( spep_0 + 766, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 766, SE045, 66 );
SE046 = playSeVer2( spep_0 + 766, 1110, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 784, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 784, SE047, 74 );
SE048 = playSeVer2( spep_0 + 784, 1110, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_0 + 792, 1009, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_0 + 792, 1110, "", 0, 0, 0, -1);
setPitch( spep_0 + 792, SE050, -300 );
setTimeStretch( SE050, 0.8, 30, 4 );
SE051 = playSeVer2( spep_0 + 802, 1414, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 802, SE051, 81 );
SE052 = playSeVer2( spep_0 + 802, 1110, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_0 + 814, 1109, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_0 + 814, 1414, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_0 + 834, 1110, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_0 + 838, 1109, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_0 + 866, 1414, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_0 + 866, 1187, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_0 + 884, 1109, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_0 + 896, 1440, "",spep_0 + 964, 0, 18, -1);

--叩き落とす
SE061 = playSeVer2( spep_0 + 904, 1027, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_0 + 906, 1123, "",spep_0 + 968, 0, 18, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 950F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--気がたちのぼる
SE065 = playSeVer2( spep_1 + 88, 1068, "", 0, 0, 0, -1);	
SE066 = playSeVer2( spep_1 + 88, 1202, "", 0, 0, 0, -1);	
SE067 = playSeVer2( spep_1 + 88, 1512, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE067, 67 );

--------------------------------------
-- カードカットイン後
--------------------------------------

MAX_FRAME_2 = 480

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 60;

-- ** 顔カットイン ** --
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- --顔カットイン
-- SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--カメラパン
SE068 = playSeVer2( spep_2 + 48, 1175, "",spep_2 + 224, 0, 44, 0.5);
setSeVolumeByWorkId( spep_2 + 48, SE068, 48 );

--オーラ
SE069 = playSeVer2( spep_2 + 48, 1036, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_2 + 48, SE069 );

--気弾溜め
SE064 = playSeVer2( spep_2 + 56, 1329, "",spep_2 + 204, 8, 28, -1);
setSeVolumeByWorkId( spep_2 + 56, SE064, 126 );	
setStartTimeMs( SE064,  1533 );
SE070 = playSeVer2( spep_2 + 58, 1490, "",spep_2 + 210, 0, 28, -1);
SE071 = playSeVer2( spep_2 + 58, 1253, "", 0, 0, 0, -1);
SE075 = playSeVer2( spep_2 + 94, 1355, "", 0, 0, 0, -1);

--オーラ
SE073 = playSeVer2( spep_2 + 70, 1036, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_2 + 70, SE073 );
SE074 = playSeVer2( spep_2 + 94, 1036, "", 0, 0, 0, -1);
stopSeIfDoubleSpeed( spep_2 + 94, SE074 );
SE076 = playSeVer2( spep_2 + 118, 1036, "", 0, 0, 0, -1);
SE077 = playSeVer2( spep_2 + 142, 1036, "", 0, 0, 0, -1);
SE078 = playSeVer2( spep_2 + 166, 1036, "", 0, 0, 0, -1);

--気弾発射
SE079 = playSeVer2( spep_2 + 184, 1512, "",spep_2 + 294, 0, 50, -1);
setSeVolumeByWorkId( spep_2 + 184, SE079, 85 );
SE080 = playSeVer2( spep_2 + 184, 1193, "",spep_2 + 324, 0, 80, -1);
SE081 = playSeVer2( spep_2 + 184, 1284, "",spep_2 + 278, 0, 38, -1);
--ビル吹っ飛ぶ
SE082 = playSeVer2( spep_2 + 246, 1302, "", 0, 0, 0, -1);
SE083 = playSeVer2( spep_2 + 246, 1312, "", 0, 0, 0, -1);
SE084 = playSeVer2( spep_2 + 246, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 246, SE084, 67 );

--爆発
SE085 = playSeVer2( spep_2 + 340, 1159, "", 0, 0, 0, -1);
SE086 = playSeVer2( spep_2 + 340, 1128, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 340, SE086, 69 );
setPitch( spep_2 + 340, SE086, -1200 );
setTimeStretch( SE086, 0.2, 30, 4 );
SE087 = playSeVer2( spep_2 + 348, 1067, "", 0, 0, 0, -1);
SE088 = playSeVer2( spep_2 + 348, 1427, "", 0, 0, 0, -1);
SE089 = playSeVer2( spep_2 + 368, 1173, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 352); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 480F

end
