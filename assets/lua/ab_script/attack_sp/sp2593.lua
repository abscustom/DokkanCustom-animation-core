-- 1027250: UR_トランクス(青年期)(未来)_必殺技：バーニングアタック
-- sp_effect_a2_00224
-- sp2593

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162120;  -- 開幕→対峙～カードカットイン ef_001
SP_001b = 162121;  -- 開幕→対峙～カードカットイン ef_001b
SP_002 = 162124;  -- 構え側面～フィニッシュ ef_002
SP_002b = 162125;  -- 構え側面～フィニッシュ ef_002b

-- 敵側
SP_001r = 162122;  -- 開幕→対峙～カードカットイン ef_001r
SP_001br = 162123;  -- 開幕→対峙～カードカットイン ef_001br
SP_002r = 162126;  -- 構え側面～フィニッシュ ef_002r
SP_002br = 162127;  -- 構え側面～フィニッシュ ef_002br

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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕→対峙～カードカットイン ef_001 (294F)
------------------------------------------------------
MAX_FRAME_0 = 294;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 音 ** --
--気ダメ
SE001 = playSeVer2( spep_0 + 38, 1035, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 120 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 250 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 120 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 140 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 180 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 188 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 200 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 210 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 220 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 236 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 120 + OFFSET_X, 1, -2.9, -20 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -2.9, -20 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 107.3, 147.9 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 107.3, 147.9 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 69.3, 89.8 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 69.3, 89.8 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 95.9, 116.3 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 95.9, 116.3 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 78.7, 103.1 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 78.7, 103.1 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 73.8, 100.1 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 73.8, 100.1 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 69.2, 97.3 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 71.6, 99.5 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 73.9, 101.7 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 76.2, 103.8 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 78.5, 106 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 80.8, 108.1 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 83, 110.1 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 85.2, 112.2 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 87.4, 114.2 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 89.5, 116.2 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 91.6, 118.1 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 93.7, 120.1 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 95.7, 122 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 97.7, 123.9 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 99.7, 125.7 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 99.7, 125.7 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 65.9, 151.3 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 65.9, 151.3 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 72.5, 126.2 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 72.5, 126.2 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 86.7, 144.8 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 86.7, 144.8 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 66.7, 144.8 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 66.7, 144.8 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 128.6, 211 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 128.6, 211 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 128.7, 233.9 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 128.7, 233.9 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 122.7, 213.9 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 122.7, 213.9 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 144, 231.3 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 144, 231.3 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 130.7, 217.4 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 130.7, 217.4 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 133.3, 223.5 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 133.3, 223.5 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 105.9, 239 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 105.9, 239 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 109.9, 225 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 109.9, 225 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 133, 244.1 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 133, 244.1 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 119, 230.1 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 119, 230.1 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 123, 236.1 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 123, 236.1 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 130.2, 266 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 130.2, 266 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 134.2, 252 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 134.2, 252 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 154.1, 263.9 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 154.1, 263.9 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 148.1, 259.9 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 148.1, 259.9 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 148.1, 259.9 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 141.5, 281.5 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 141.5, 281.5 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 144.5, 269.6 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 144.5, 269.6 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 143.5, 267.8 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 143.5, 267.8 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 142.4, 265.9 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 142.4, 265.9 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 141.4, 264 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 141.4, 264 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 140.2, 262 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 140.2, 262 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 139.1, 260.1 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 139.1, 260.1 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 138, 258.1 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 138, 258.1 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 194.1, 255.4 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 194.1, 255.4 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 157.5, 252.5 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 157.5, 252.5 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 160.9, 231.7 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 160.9, 231.7 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 156.4, 228.9 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 292.3, 382.7 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 426.7, 534.7 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 559.4, 684.9 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 690.4, 833.3 , 0 );

setScaleKey( spep_0 + 120 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 1.79, 1.79 );

setRotateKey( spep_0 + 120 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -63.3 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -63.3 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -63 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, -63 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, -62.6 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -62.6 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -62.2 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -62.2 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -61.8 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -61.8 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -61.4 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, -61.4 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -61 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -61 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, 47.7 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 112;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
-- stopSe( SP_dodge - 12, seInstance, 0 ); を必要に応じて入れる
stopSe( SP_dodge - 12, SE001, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--向かっていく
SE002 = playSeVer2( spep_0 + 104, 1182, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 104, 1277, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 104, 1117, "",spep_0 + 154, 0, 26, -1);
--タックル
SE005 = playSeVer2( spep_0 + 136, 1189, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 140, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE006, 88 );
SE007 = playSeVer2( spep_0 + 140, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE007, 75 );
SE008 = playSeVer2( spep_0 + 140, 1187, "",spep_0 + 202, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 140, SE008, 83 );
--連続攻撃
SE009 = playSeVer2( spep_0 + 178, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 178, SE009, 74 );
SE010 = playSeVer2( spep_0 + 178, 1110, "",spep_0 + 216, 0, 16, -1);
SE011 = playSeVer2( spep_0 + 188, 1110, "",spep_0 + 224, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 188, SE011, 74 );
SE012 = playSeVer2( spep_0 + 198, 1110, "",spep_0 + 234, 0, 16, -1);
stopSeIfDoubleSpeed( spep_0 + 198, SE012 );
SE013 = playSeVer2( spep_0 + 198, 1110, "",spep_0 + 242, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 198, SE013, 88 );
SE014 = playSeVer2( spep_0 + 212, 1110, "",spep_0 + 248, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 212, SE014, 92 );
--蹴り飛ばす
SE015 = playSeVer2( spep_0 + 236, 1120, "",spep_0 + 310, 0, 12, -1);
SE016 = playSeVer2( spep_0 + 236, 1010, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0 - 1;  -- 294

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 1);

------------------------------------------------------
-- 構え側面～フィニッシュ ef_002 (248F)
------------------------------------------------------
MAX_FRAME_2 = 248;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_2 + 110 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 250 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 110 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 110 + OFFSET_X, 1, -4.7, -768.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 6.4, -583 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 5.6, -427.4 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 14.8, -221.8 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -8, -86.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 24, -56 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -15.9, -56 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 14.1, -66 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -7.9, -65.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 4.1, -55.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 4.2, -75.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 14.2, -65.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -7.8, -65.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 4.2, -55.8 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 4.3, -75.8 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 14.3, -65.7 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -7.7, -65.7 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 4.3, -55.7 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 4.4, -75.7 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 14.4, -65.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -7.6, -65.6 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 4.4, -55.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 4.5, -75.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 14.5, -65.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -7.5, -65.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 4.6, -55.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 4.6, -75.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 14.6, -65.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -7.4, -65.4 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 4.7, -55.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 4.7, -75.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 14.7, -65.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -7.3, -65.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 4.8, -55.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 4.8, -75.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 14.8, -65.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -7.2, -65.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 4.9, -55.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 4.9, -75.1 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 14.9, -65.1 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -7.1, -65 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 5, -55 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 5, -75 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 15, -65 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -6.9, -64.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 5.1, -54.9 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 15.1, -64.8 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -6.8, -64.8 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 5.2, -54.8 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 5.2, -74.8 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 15.2, -64.7 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -6.7, -64.7 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 5.3, -54.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 5.3, -74.7 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 15.3, -64.6 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -6.6, -64.6 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 5.4, -54.6 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 5.4, -74.5 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 15.5, -64.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -6.5, -64.5 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 5.5, -54.5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 5.5, -74.4 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 15.6, -64.4 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -6.4, -64.4 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 5.6, -54.4 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 5.6, -74.3 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 15.7, -64.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -6.3, -64.3 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 5.7, -54.2 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 5.7, -54.2 , 0 );

setScaleKey( spep_2 + 110 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 1.02, 1.02 );

setRotateKey( spep_2 + 110 + OFFSET_X, 1, 28 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 10.3 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 9 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 8.6 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 8.1 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 7.3 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 6.9 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 6.6 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 6.5 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 5.5 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 4.7 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 4.6 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, 4.4 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, 4.2 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, 3.6 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 3 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 3 );

setBlendColor( spep_2 + 110 + OFFSET_X, 1, 1, 0.15, 0.15, 0.15, 1.0 );
setBlendColor( spep_2 + 250 + OFFSET_X, 1, 0, 0, 0, 0, 0 );

-- ** 音 ** --
--気弾溜め
SE019 = playSeVer2( spep_2 + 4, 1328, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 20, 1282, "",spep_2 + 108, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 20, SE020, 75 );
SE021 = playSeVer2( spep_2 + 20, 1276, "",spep_2 + 82, 0, 10, -1);
--気弾発射
SE022 = playSeVer2( spep_2 + 74, 1022, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 74, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE023, 71 );
SE024 = playSeVer2( spep_2 + 74, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE024, 80 );
SE025 = playSeVer2( spep_2 + 74, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE025, 60 );
SE026 = playSeVer2( spep_2 + 72, 1215, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 72, SE026, 80 );
SE027 = playSeVer2( spep_2 + 114, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 114, SE027, 80 );

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 144 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 248

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕→対峙～カードカットイン ef_001 (294F)
------------------------------------------------------
MAX_FRAME_0 = 294;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001br, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 音 ** --
--気ダメ
SE001 = playSeVer2( spep_0 + 38, 1035, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 120 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 250 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 120 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 140 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 180 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 188 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 200 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 210 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 220 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 236 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 120 + OFFSET_X, 1, -2.9, -20 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -2.9, -20 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 107.3, 147.9 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 107.3, 147.9 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 69.3, 89.8 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 69.3, 89.8 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 95.9, 116.3 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 95.9, 116.3 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 78.7, 103.1 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 78.7, 103.1 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 73.8, 100.1 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 73.8, 100.1 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 69.2, 97.3 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 71.6, 99.5 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 73.9, 101.7 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 76.2, 103.8 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 78.5, 106 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 80.8, 108.1 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 83, 110.1 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 85.2, 112.2 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 87.4, 114.2 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 89.5, 116.2 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 91.6, 118.1 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 93.7, 120.1 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 95.7, 122 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 97.7, 123.9 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 99.7, 125.7 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 99.7, 125.7 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 65.9, 151.3 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 65.9, 151.3 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 72.5, 126.2 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 72.5, 126.2 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 86.7, 144.8 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 86.7, 144.8 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 66.7, 144.8 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 66.7, 144.8 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 128.6, 211 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 128.6, 211 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 128.7, 233.9 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 128.7, 233.9 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 122.7, 213.9 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 122.7, 213.9 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 144, 231.3 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 144, 231.3 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 130.7, 217.4 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 130.7, 217.4 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 133.3, 223.5 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 133.3, 223.5 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 105.9, 239 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 105.9, 239 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 109.9, 225 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 109.9, 225 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 133, 244.1 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 133, 244.1 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 119, 230.1 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 119, 230.1 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 123, 236.1 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 123, 236.1 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 130.2, 266 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 130.2, 266 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 134.2, 252 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 134.2, 252 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 154.1, 263.9 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 154.1, 263.9 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 148.1, 259.9 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 148.1, 259.9 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 148.1, 259.9 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 141.5, 281.5 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 141.5, 281.5 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 144.5, 269.6 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 144.5, 269.6 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 143.5, 267.8 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 143.5, 267.8 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 142.4, 265.9 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 142.4, 265.9 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 141.4, 264 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 141.4, 264 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 140.2, 262 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 140.2, 262 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 139.1, 260.1 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 139.1, 260.1 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 138, 258.1 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 138, 258.1 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 194.1, 255.4 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 194.1, 255.4 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 157.5, 252.5 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 157.5, 252.5 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 160.9, 231.7 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 160.9, 231.7 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 156.4, 228.9 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 292.3, 382.7 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 426.7, 534.7 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 559.4, 684.9 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 690.4, 833.3 , 0 );

setScaleKey( spep_0 + 120 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 1.79, 1.79 );

setRotateKey( spep_0 + 120 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -63.7 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -63.3 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -63.3 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -63 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, -63 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, -62.6 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -62.6 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -62.2 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -62.2 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -61.8 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -61.8 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -61.4 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, -61.4 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -61 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -61 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, 47.7 );

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 112;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
-- stopSe( SP_dodge - 12, seInstance, 0 ); を必要に応じて入れる
stopSe( SP_dodge - 12, SE001, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--向かっていく
SE002 = playSeVer2( spep_0 + 104, 1182, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 104, 1277, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 104, 1117, "",spep_0 + 154, 0, 26, -1);
--タックル
SE005 = playSeVer2( spep_0 + 136, 1189, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 140, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE006, 88 );
SE007 = playSeVer2( spep_0 + 140, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE007, 75 );
SE008 = playSeVer2( spep_0 + 140, 1187, "",spep_0 + 202, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 140, SE008, 83 );
--連続攻撃
SE009 = playSeVer2( spep_0 + 178, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 178, SE009, 74 );
SE010 = playSeVer2( spep_0 + 178, 1110, "",spep_0 + 216, 0, 16, -1);
SE011 = playSeVer2( spep_0 + 188, 1110, "",spep_0 + 224, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 188, SE011, 74 );
SE012 = playSeVer2( spep_0 + 198, 1110, "",spep_0 + 234, 0, 16, -1);
stopSeIfDoubleSpeed( spep_0 + 198, SE012 );
SE013 = playSeVer2( spep_0 + 198, 1110, "",spep_0 + 242, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 198, SE013, 88 );
SE014 = playSeVer2( spep_0 + 212, 1110, "",spep_0 + 248, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 212, SE014, 92 );
--蹴り飛ばす
SE015 = playSeVer2( spep_0 + 236, 1120, "",spep_0 + 310, 0, 12, -1);
SE016 = playSeVer2( spep_0 + 236, 1010, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0 - 1;  -- 294

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 1);

------------------------------------------------------
-- 構え側面～フィニッシュ ef_002 (248F)
------------------------------------------------------
MAX_FRAME_2 = 248;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002br, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_2 + 110 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 250 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 110 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 110 + OFFSET_X, 1, -4.7, -768.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 6.4, -583 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 5.6, -427.4 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 14.8, -221.8 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -8, -86.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 24, -56 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -15.9, -56 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 14.1, -66 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -7.9, -65.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 4.1, -55.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 4.2, -75.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 14.2, -65.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -7.8, -65.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 4.2, -55.8 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 4.3, -75.8 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 14.3, -65.7 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -7.7, -65.7 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 4.3, -55.7 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 4.4, -75.7 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 14.4, -65.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -7.6, -65.6 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 4.4, -55.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 4.5, -75.5 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 14.5, -65.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -7.5, -65.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 4.6, -55.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 4.6, -75.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 14.6, -65.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -7.4, -65.4 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 4.7, -55.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 4.7, -75.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 14.7, -65.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -7.3, -65.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 4.8, -55.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 4.8, -75.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 14.8, -65.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -7.2, -65.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 4.9, -55.1 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 4.9, -75.1 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 14.9, -65.1 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -7.1, -65 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 5, -55 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 5, -75 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 15, -65 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -6.9, -64.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 5.1, -54.9 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 5.1, -74.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 15.1, -64.8 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -6.8, -64.8 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 5.2, -54.8 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 5.2, -74.8 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 15.2, -64.7 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -6.7, -64.7 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 5.3, -54.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 5.3, -74.7 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 15.3, -64.6 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -6.6, -64.6 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 5.4, -54.6 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 5.4, -74.5 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 15.5, -64.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -6.5, -64.5 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 5.5, -54.5 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 5.5, -74.4 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 15.6, -64.4 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -6.4, -64.4 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 5.6, -54.4 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 5.6, -74.3 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 15.7, -64.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -6.3, -64.3 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 5.7, -54.2 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 5.7, -54.2 , 0 );

setScaleKey( spep_2 + 110 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 1.02, 1.02 );

setRotateKey( spep_2 + 110 + OFFSET_X, 1, 28 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 23.6 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, 10.3 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 9 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 8.6 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 8.1 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 7.3 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 6.9 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 6.6 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 6.5 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 6.3 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 5.5 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_2 + 212 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_2 + 214 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 4.7 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 4.6 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, 4.4 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, 4.2 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 3.9 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, 3.6 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 3 );
setRotateKey( spep_2 + 250 + OFFSET_X, 1, 3 );

setBlendColor( spep_2 + 110 + OFFSET_X, 1, 1, 0.15, 0.15, 0.15, 1.0 );
setBlendColor( spep_2 + 250 + OFFSET_X, 1, 0, 0, 0, 0, 0 );

-- ** 音 ** --
--気弾溜め
SE019 = playSeVer2( spep_2 + 4, 1328, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 20, 1282, "",spep_2 + 108, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 20, SE020, 75 );
SE021 = playSeVer2( spep_2 + 20, 1276, "",spep_2 + 82, 0, 10, -1);
--気弾発射
SE022 = playSeVer2( spep_2 + 74, 1022, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 74, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE023, 71 );
SE024 = playSeVer2( spep_2 + 74, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE024, 80 );
SE025 = playSeVer2( spep_2 + 74, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 74, SE025, 60 );
SE026 = playSeVer2( spep_2 + 72, 1215, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 72, SE026, 80 );
SE027 = playSeVer2( spep_2 + 114, 1161, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 114, SE027, 80 );

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 144 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 248

end
