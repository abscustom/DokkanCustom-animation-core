-- 1030920: UR_人造人間18号_必殺技：気円斬
-- sp_effect_a6_00023
-- sp2848

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 163742;  -- 開幕・目線カットイン～カードカットインまで ef_001
SP_001b = 163743;  -- 開幕・目線カットイン～カードカットインまで ef_001b
SP_002 = 163746;  -- カードカットイン～フィニッシュまで ef_002

-- 敵側
SP_001r = 163744;  -- 開幕・目線カットイン～カードカットインまで ef_001r
SP_001br = 163745;  -- 開幕・目線カットイン～カードカットインまで ef_001br
SP_002r = 163747;  -- カードカットイン～フィニッシュまで ef_002r

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

ENABLE_AUTO_TIME_STRETCH(0.72);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕・目線カットイン～カードカットインまで ef_001
------------------------------------------------------
MAX_FRAME_0 = 456;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );  -- 開幕・目線カットイン～カードカットインまで ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );  -- 開幕・目線カットイン～カードカットインまで ef_001b
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

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
-- 敵の動き1
setDisp( spep_0 + 136 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 240 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 136 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 144 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 178 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 184 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 192 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 200 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 210 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 216 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 224 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 232 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 136 + OFFSET_X, 1, 6.4, -18.2 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 6.4, -18.2 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 10.4, -10.6 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 10.4, -10.6 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 14.4, -3 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 14.4, -3 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 18.4, 4.6 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 18.4, 4.6 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 15.3, 32.6 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 15.3, 32.6 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 53, 64.3 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 53, 64.3 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 142.8, 89.7 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 142.8, 89.7 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -15.5, 59.4 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -15.5, 59.4 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 150.3, 98.9 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 150.3, 98.9 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 36, 48.5 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 36, 48.5 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 65.8, 48.1 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 65.8, 48.1 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 47.5, 41.7 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 47.5, 41.7 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 59.3, 39.2 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 59.3, 39.2 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 65, 39.1 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 65, 39.1 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 70.8, 38.9 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 70.8, 38.9 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 76.5, 38.7 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 76.5, 38.7 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 82.3, 38.5 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 82.3, 38.5 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 88, 38.4 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 88, 38.4 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 93.8, 38.2 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 93.8, 38.2 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 99.5, 38 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 99.5, 38 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 105.3, 37.8 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 105.3, 37.8 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 122.5, 61 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 122.5, 61 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 103.2, 37.3 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 103.2, 37.3 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 113.2, 35.6 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 113.2, 35.6 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 122.8, -7.7 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 122.8, -7.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 121.9, 90.6 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 121.9, 90.6 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 109.2, 49.8 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 109.2, 49.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 128.4, 41 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 128.4, 41 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 87.5, 34.1 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 87.5, 34.1 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 79.7, 57.7 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 79.7, 57.7 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 119.3, 112.7 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 119.3, 112.7 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 111, 109.8 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 111, 109.8 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 107.1, 106.7 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 107.1, 106.7 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 97.1, 149.5 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 97.1, 149.5 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 115.2, 109.6 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 115.2, 109.6 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 135.2, 107.7 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 135.2, 107.7 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 157.2, 110.7 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 157.2, 110.7 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 164.4, 135 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 164.4, 135 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 139.2, 93.3 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 139.2, 93.3 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 149.9, 81.5 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 149.9, 81.5 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 148.2, 36.9 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 148.2, 36.9 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 136, 134 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 136, 134 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 143.2, 131.8 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 143.2, 131.8 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 148.4, 101 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 148.4, 101 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 81.5, 112.1 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 81.5, 112.1 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 85.8, 123.7 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 85.8, 123.7 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 101.4, 143.7 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 101.4, 143.7 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 117.1, 163.8 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 117.1, 163.8 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 71.2, 122.7 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 71.2, 122.7 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 79.2, 181.6 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 79.2, 181.6 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 100, 189.2 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 100, 189.2 , 0 );

setScaleKey( spep_0 + 136 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 2.18, 2.18 );

setRotateKey( spep_0 + 136 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 284 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 356 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 284 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 308 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 326 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 284 + OFFSET_X, 1, 218, -31.2 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 218, -31.2 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 186, -40.9 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 186, -40.9 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 154, -50.7 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 154, -50.7 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 143.6, -35 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 143.6, -35 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 190.1, -26.9 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 190.1, -26.9 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 131.3, -43.2 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 131.3, -43.2 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 142, -22.6 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 142, -22.6 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 118.5, -43.8 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 118.5, -43.8 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 139.7, -51.6 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 139.7, -51.6 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 120.9, -19 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 120.9, -19 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 141.1, -19.7 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 141.1, -19.7 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 115.6, -43.8 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 115.6, -43.8 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 167.3, 27.8 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 167.3, 27.8 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 148.3, 62.5 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 148.3, 62.5 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 169.3, 64.8 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 169.3, 64.8 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 172.6, 46.4 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 172.6, 46.4 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 187.3, 43.3 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 187.3, 43.3 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 206.1, 41.6 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 206.1, 41.6 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 229.1, 41.1 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 229.1, 41.1 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 257, 54.2 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 257, 54.2 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 288.9, 68.6 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 288.9, 68.6 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -313.2, 41.6 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -313.2, 41.6 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -248.5, 37.2 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -248.5, 37.2 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -189, 33.1 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -189, 33.1 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -134.7, 29.4 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -134.7, 29.4 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -85.5, 26.1 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -85.5, 26.1 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -41.5, 23.1 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -41.5, 23.1 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -2.7, 20.5 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -2.7, 20.5 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 31, 18.2 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 31, 18.2 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 59.5, 16.3 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 59.5, 16.3 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 82.8, 14.7 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 82.8, 14.7 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 100.9, 13.5 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 100.9, 13.5 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 113.8, 12.7 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 113.8, 12.7 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 121.6, 12.1 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 121.6, 12.1 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 124.2, 12 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 124.2, 12 , 0 );

setScaleKey( spep_0 + 284 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.48, 0.48 );

setRotateKey( spep_0 + 284 + OFFSET_X, 1, -52.9 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -52.9 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -51.1 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -51.1 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, 82.4 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, 82.4 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 82.5 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, 82.5 );

-- 敵の動き3
setDisp( spep_0 + 396 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 440 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 396 + OFFSET_X, 1, 34.1, 6.9 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 34.1, 6.9 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 51.5, -1.5 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 51.5, -1.5 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 68.9, -9.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 68.9, -9.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 85.6, -17.9 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 85.6, -17.9 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 101, -25.3 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 101, -25.3 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 114.7, -31.9 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 114.7, -31.9 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 126.6, -37.7 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 126.6, -37.7 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 136.8, -42.5 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 136.8, -42.5 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 145.3, -46.6 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 145.3, -46.6 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 152.3, -50 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 152.3, -50 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 158, -52.8 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 158, -52.8 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 162.6, -55 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 162.6, -55 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 166.2, -56.7 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 166.2, -56.7 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 168.9, -58 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 168.9, -58 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 171.8, -32.6 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 171.8, -32.6 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 174.6, -23.9 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 174.6, -23.9 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 173.3, -34.8 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 173.3, -34.8 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 173.7, -29.4 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 173.7, -29.4 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 168, -41.8 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 168, -41.8 , 0 );

setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 0.37, 0.37 );

setRotateKey( spep_0 + 396 + OFFSET_X, 1, 82.5 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, 82.5 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 198, 0, 74, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--髪なびく
SE003 = playSeVer2( spep_0 + 4, 1331, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 44, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE004, 79 );

--向かってくる
SE005 = playSeVer2( spep_0 + 78, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 78, 1117, "", 0, 0, 0, -1);

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 110;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);

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
--初手パンチ
SE007 = playSeVer2( spep_0 + 136, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE007, 158 );
SE008 = playSeVer2( spep_0 + 144, 1009, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 144, 1110, "", 0, 0, 0, -1);

--ラッシュ
SE010 = playSeVer2( spep_0 + 168, 1425, "",spep_0 + 232, 0, 6, -1);
SE011 = playSeVer2( spep_0 + 170, 1010, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 116, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE012, 74 );
SE013 = playSeVer2( spep_0 + 222, 1110, "", 0, 0, 0, -1);

--振りかぶる
SE014 = playSeVer2( spep_0 + 242, 1004, "", 0, 0, 0, -1);

--殴り飛ばす
SE015 = playSeVer2( spep_0 + 270, 1003, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 284, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE017 = playSeVer2( spep_0 + 306, 1027, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 314, 1121, "",spep_0 + 462, 0, 104, -1);
setSeVolumeByWorkId( spep_0 + 314, SE018, 52 );

--気弾溜め
SE019 = playSeVer2( spep_0 + 350, 1262, "",spep_0 + 340, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 350, SE019, 126 );
SE020 = playSeVer2( spep_0 + 350, 49, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 350, 1130, "", 0, 0, 0, -1);

--気弾発射
SE022 = playSeVer2( spep_0 + 374, 1177, "",spep_0 + 456, 0, 26, -1);
SE023 = playSeVer2( spep_0 + 374, 1016, "", 0, 0, 0, -1);

--敵ヒット
SE024 = playSeVer2( spep_0 + 426, 1023, "",spep_0 + 482, 0, 20, -1);
SE025 = playSeVer2( spep_0 + 428, 1024, "",spep_0 + 480, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 428, SE025, 84 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 456

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--向かってくる
SE027 = playSeVer2( spep_1 + 92, 1019, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_1 + 92, 1240, "",spep_2 + 88, 0, 28, -1);

------------------------------------------------------
-- カードカットイン～フィニッシュまで ef_002
------------------------------------------------------
MAX_FRAME_2 = 254;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x80, -1, 0, 0, 0 );  -- カードカットイン～フィニッシュまで ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--向かってくる
SE029 = playSeVer2( spep_2 + 10, 1116, "",spep_2 + 56, 0, 18, -1);

--気円斬なげる
SE030 = playSeVer2( spep_2 + 44, 1241, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 44, 1242, "",spep_2 + 216, 0, 96, -1);
SE032 = playSeVer2( spep_2 + 44, 1133, "",spep_2 + 144, 0, 68, -1);

--敵切る
SE033 = playSeVer2( spep_2 + 74, 1142, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE033, 85 );
SE034 = playSeVer2( spep_2 + 74, 1318, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE034, 178 );
SE035 = playSeVer2( spep_2 + 74, 1141, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 92, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 92, SE036, 78 );
SE037 = playSeVer2( spep_2 + 92, 1061, "", 0, 0, 0, -1);

--気円斬とんでいく
SE038 = playSeVer2( spep_2 + 104, 1319, "",spep_2 + 246, 0, 78, -1);
SE039 = playSeVer2( spep_2 + 104, 1159, "",spep_2 + 266, 0, 72, -1);
setSeVolumeByWorkId( spep_2 + 104, SE039, 63 );

-- ** おわり ** --
dealDamage( spep_2 + 130 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 254

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕・目線カットイン～カードカットインまで ef_001r
------------------------------------------------------
MAX_FRAME_0 = 456;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001r, 0x100, -1, 0, 0, 0 );  -- 開幕・目線カットイン～カードカットインまで ef_001r
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001br, 0x80, -1, 0, 0, 0 );  -- 開幕・目線カットイン～カードカットインまで ef_001br
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 136 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 240 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 136 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 144 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 178 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 184 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 192 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 200 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 210 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 216 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 224 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 232 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 136 + OFFSET_X, 1, 6.4, -18.2 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 6.4, -18.2 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 10.4, -10.6 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 10.4, -10.6 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 14.4, -3 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 14.4, -3 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 18.4, 4.6 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 18.4, 4.6 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 15.3, 32.6 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 15.3, 32.6 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 53, 64.3 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 53, 64.3 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 142.8, 89.7 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 142.8, 89.7 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -15.5, 59.4 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -15.5, 59.4 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 150.3, 98.9 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 150.3, 98.9 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 36, 48.5 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 36, 48.5 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 65.8, 48.1 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 65.8, 48.1 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 47.5, 41.7 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 47.5, 41.7 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 59.3, 39.2 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 59.3, 39.2 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 65, 39.1 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 65, 39.1 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 70.8, 38.9 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 70.8, 38.9 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 76.5, 38.7 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 76.5, 38.7 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 82.3, 38.5 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 82.3, 38.5 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 88, 38.4 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 88, 38.4 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 93.8, 38.2 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 93.8, 38.2 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 99.5, 38 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 99.5, 38 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 105.3, 37.8 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 105.3, 37.8 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 122.5, 61 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 122.5, 61 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 103.2, 37.3 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 103.2, 37.3 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 113.2, 35.6 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 113.2, 35.6 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 122.8, -7.7 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 122.8, -7.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 121.9, 90.6 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 121.9, 90.6 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 109.2, 49.8 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 109.2, 49.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 128.4, 41 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 128.4, 41 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 87.5, 34.1 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 87.5, 34.1 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 79.7, 57.7 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 79.7, 57.7 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 119.3, 112.7 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 119.3, 112.7 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 111, 109.8 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 111, 109.8 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 107.1, 106.7 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 107.1, 106.7 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 97.1, 149.5 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 97.1, 149.5 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 115.2, 109.6 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 115.2, 109.6 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 135.2, 107.7 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 135.2, 107.7 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 157.2, 110.7 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 157.2, 110.7 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 164.4, 135 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 164.4, 135 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 139.2, 93.3 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 139.2, 93.3 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 149.9, 81.5 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 149.9, 81.5 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 148.2, 36.9 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 148.2, 36.9 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 136, 134 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 136, 134 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 143.2, 131.8 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 143.2, 131.8 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 148.4, 101 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 148.4, 101 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 81.5, 112.1 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 81.5, 112.1 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 85.8, 123.7 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 85.8, 123.7 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 101.4, 143.7 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 101.4, 143.7 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 117.1, 163.8 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 117.1, 163.8 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 71.2, 122.7 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 71.2, 122.7 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 79.2, 181.6 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 79.2, 181.6 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 100, 189.2 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 100, 189.2 , 0 );

setScaleKey( spep_0 + 136 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 2.18, 2.18 );

setRotateKey( spep_0 + 136 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -47.6 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 284 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 356 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 284 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 308 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 326 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 284 + OFFSET_X, 1, 218, -31.2 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 218, -31.2 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 186, -40.9 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 186, -40.9 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 154, -50.7 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 154, -50.7 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 143.6, -35 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 143.6, -35 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 190.1, -26.9 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 190.1, -26.9 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 131.3, -43.2 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 131.3, -43.2 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 142, -22.6 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 142, -22.6 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 118.5, -43.8 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 118.5, -43.8 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 139.7, -51.6 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 139.7, -51.6 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 120.9, -19 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 120.9, -19 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 141.1, -19.7 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 141.1, -19.7 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 115.6, -43.8 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 115.6, -43.8 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 167.3, 27.8 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 167.3, 27.8 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 148.3, 62.5 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 148.3, 62.5 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 169.3, 64.8 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 169.3, 64.8 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 172.6, 46.4 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 172.6, 46.4 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 187.3, 43.3 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 187.3, 43.3 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 206.1, 41.6 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 206.1, 41.6 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 229.1, 41.1 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 229.1, 41.1 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 257, 54.2 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 257, 54.2 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 288.9, 68.6 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 288.9, 68.6 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -313.2, 41.6 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -313.2, 41.6 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -248.5, 37.2 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -248.5, 37.2 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -189, 33.1 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -189, 33.1 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -134.7, 29.4 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -134.7, 29.4 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -85.5, 26.1 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -85.5, 26.1 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -41.5, 23.1 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -41.5, 23.1 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -2.7, 20.5 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -2.7, 20.5 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 31, 18.2 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 31, 18.2 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 59.5, 16.3 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 59.5, 16.3 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 82.8, 14.7 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 82.8, 14.7 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 100.9, 13.5 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 100.9, 13.5 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 113.8, 12.7 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 113.8, 12.7 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 121.6, 12.1 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 121.6, 12.1 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 124.2, 12 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 124.2, 12 , 0 );

setScaleKey( spep_0 + 284 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 3.65, 3.65 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 3.43, 3.43 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 0.48, 0.48 );

setRotateKey( spep_0 + 284 + OFFSET_X, 1, -52.9 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -52.9 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -51.1 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -51.1 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, 82.4 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, 82.4 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 82.5 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, 82.5 );

-- 敵の動き3
setDisp( spep_0 + 396 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 440 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 396 + OFFSET_X, 1, 34.1, 6.9 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 34.1, 6.9 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 51.5, -1.5 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 51.5, -1.5 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 68.9, -9.9 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 68.9, -9.9 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 85.6, -17.9 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 85.6, -17.9 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 101, -25.3 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 101, -25.3 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 114.7, -31.9 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 114.7, -31.9 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 126.6, -37.7 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 126.6, -37.7 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 136.8, -42.5 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 136.8, -42.5 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 145.3, -46.6 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 145.3, -46.6 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 152.3, -50 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 152.3, -50 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 158, -52.8 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 158, -52.8 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 162.6, -55 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 162.6, -55 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 166.2, -56.7 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 166.2, -56.7 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 168.9, -58 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 168.9, -58 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 171.8, -32.6 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 171.8, -32.6 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 174.6, -23.9 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 174.6, -23.9 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 173.3, -34.8 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 173.3, -34.8 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 173.7, -29.4 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 173.7, -29.4 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 168, -41.8 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 168, -41.8 , 0 );

setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 0.37, 0.37 );

setRotateKey( spep_0 + 396 + OFFSET_X, 1, 82.5 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, 82.5 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 198, 0, 74, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--髪なびく
SE003 = playSeVer2( spep_0 + 4, 1331, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 44, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE004, 79 );

--向かってくる
SE005 = playSeVer2( spep_0 + 78, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 78, 1117, "", 0, 0, 0, -1);

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 110;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);

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
--初手パンチ
SE007 = playSeVer2( spep_0 + 136, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 136, SE007, 158 );
SE008 = playSeVer2( spep_0 + 144, 1009, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 144, 1110, "", 0, 0, 0, -1);

--ラッシュ
SE010 = playSeVer2( spep_0 + 168, 1425, "",spep_0 + 232, 0, 6, -1);
SE011 = playSeVer2( spep_0 + 170, 1010, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 116, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE012, 74 );
SE013 = playSeVer2( spep_0 + 222, 1110, "", 0, 0, 0, -1);

--振りかぶる
SE014 = playSeVer2( spep_0 + 242, 1004, "", 0, 0, 0, -1);

--殴り飛ばす
SE015 = playSeVer2( spep_0 + 270, 1003, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 284, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE017 = playSeVer2( spep_0 + 306, 1027, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 314, 1121, "",spep_0 + 462, 0, 104, -1);
setSeVolumeByWorkId( spep_0 + 314, SE018, 52 );

--気弾溜め
SE019 = playSeVer2( spep_0 + 350, 1262, "",spep_0 + 340, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 350, SE019, 126 );
SE020 = playSeVer2( spep_0 + 350, 49, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 350, 1130, "", 0, 0, 0, -1);

--気弾発射
SE022 = playSeVer2( spep_0 + 374, 1177, "",spep_0 + 456, 0, 26, -1);
SE023 = playSeVer2( spep_0 + 374, 1016, "", 0, 0, 0, -1);

--敵ヒット
SE024 = playSeVer2( spep_0 + 426, 1023, "",spep_0 + 482, 0, 20, -1);
SE025 = playSeVer2( spep_0 + 428, 1024, "",spep_0 + 480, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 428, SE025, 84 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 456

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--向かってくる
SE027 = playSeVer2( spep_1 + 92, 1019, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_1 + 92, 1240, "",spep_2 + 88, 0, 28, -1);

------------------------------------------------------
-- カードカットイン～フィニッシュまで ef_002r
------------------------------------------------------
MAX_FRAME_2 = 254;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x80, -1, 0, 0, 0 );  -- カードカットイン～フィニッシュまで ef_002r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--向かってくる
SE029 = playSeVer2( spep_2 + 10, 1116, "",spep_2 + 56, 0, 18, -1);

--気円斬なげる
SE030 = playSeVer2( spep_2 + 44, 1241, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 44, 1242, "",spep_2 + 216, 0, 96, -1);
SE032 = playSeVer2( spep_2 + 44, 1133, "",spep_2 + 144, 0, 68, -1);

--敵切る
SE033 = playSeVer2( spep_2 + 74, 1142, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE033, 85 );
SE034 = playSeVer2( spep_2 + 74, 1318, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE034, 178 );
SE035 = playSeVer2( spep_2 + 74, 1141, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 92, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 92, SE036, 78 );
SE037 = playSeVer2( spep_2 + 92, 1061, "", 0, 0, 0, -1);

--気円斬とんでいく
SE038 = playSeVer2( spep_2 + 104, 1319, "",spep_2 + 246, 0, 78, -1);
SE039 = playSeVer2( spep_2 + 104, 1159, "",spep_2 + 266, 0, 72, -1);
setSeVolumeByWorkId( spep_2 + 104, SE039, 63 );

-- ** おわり ** --
dealDamage( spep_2 + 130 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 254

end
