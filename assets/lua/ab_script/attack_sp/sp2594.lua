-- 1027350: UR_超サイヤ人トランクス(未来)_バーニングアタック
-- sp_effect_a2_00226
-- sp2594

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162204;  -- 空中待機～裏拳 ef_001
SP_001b = 162205;  -- 空中待機～裏拳 ef_001b
SP_002 = 162208;  -- 吹っ飛ばされる敵～気弾に飲み込まれる敵 ef_002
SP_002b = 162209;  -- 吹っ飛ばされる敵～気弾に飲み込まれる敵 ef_002b

-- 敵側
SP_001br = 162206;  -- 空中待機～裏拳 ef_001br
SP_001r = 162207;  -- 空中待機～裏拳 ef_001r
SP_002br = 162210;  -- 吹っ飛ばされる敵～気弾に飲み込まれる敵 ef_002br
SP_002r = 162211;  -- 吹っ飛ばされる敵～気弾に飲み込まれる敵 ef_002r

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
-- 空中待機～裏拳 ef_001 (268F)
------------------------------------------------------
MAX_FRAME_0 = 268;

-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001, 255 );
entry_SP_001b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 255 );

-- ** 集中線 ** --
shuchusen_1 = entryEffectLife( spep_0 + 99, 906, 29, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 99, shuchusen_1, 000, 20 );
setEffMoveKey( spep_0 + 99, shuchusen_1, 0, 0, 0 );
setEffMoveKey( spep_0 + 128, shuchusen_1, 0, 0, 0 );
setEffScaleKey( spep_0 + 99, shuchusen_1, 1.6, 1.6 );
setEffScaleKey( spep_0 + 128, shuchusen_1, 1.6, 1.6 );
setEffRotateKey( spep_0 + 99, shuchusen_1, 0 );
setEffRotateKey( spep_0 + 128, shuchusen_1, 0 );
setEffAlphaKey( spep_0 + 99, shuchusen_1, 255 );
setEffAlphaKey( spep_0 + 128, shuchusen_1, 255 );

shuchusen_2 = entryEffectLife( spep_0 + 155, 906, 23, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 155, shuchusen_2, 000, 20 );
setEffMoveKey( spep_0 + 155, shuchusen_2, 0, 0, 0 );
setEffMoveKey( spep_0 + 178, shuchusen_2, 0, 0, 0 );
setEffScaleKey( spep_0 + 155, shuchusen_2, 1.6, 1.6 );
setEffScaleKey( spep_0 + 178, shuchusen_2, 1.6, 1.6 );
setEffRotateKey( spep_0 + 155, shuchusen_2, 0 );
setEffRotateKey( spep_0 + 178, shuchusen_2, 0 );
setEffAlphaKey( spep_0 + 155, shuchusen_2, 255 );
setEffAlphaKey( spep_0 + 178, shuchusen_2, 255 );

spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
  
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -20, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -20, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 130 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 269 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 130 + OFFSET_X, 1, 101 );
changeAnime( spep_0 + 154 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 218 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 130 + OFFSET_X, 1, 199.4, 203 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 199.4, 203 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 199.4, 203 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 211.8, 212.7 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 211.8, 212.7 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 147.8, 251.6 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 147.8, 251.6 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 170.6, 301.7 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 170.6, 301.7 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 217.6, 307.8 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 217.6, 307.8 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 221.1, 352.8 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 221.1, 352.8 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 227.7, 347.5 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 227.7, 347.5 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 252.8, 366.8 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 252.8, 366.8 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 262.7, 375.5 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 262.7, 375.5 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 258.8, 368.8 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 258.8, 368.8 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 264.8, 392.1 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 264.8, 392.1 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 285.3, 383 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 285.3, 383 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 280.7, 403.8 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 280.7, 403.8 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 289, 403.6 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 289, 403.6 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 305.3, 417.3 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 305.3, 417.3 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -405.5, -25.4 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -405.5, -25.4 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -381.8, -24.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -381.8, -24.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -358, -24.4 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -358, -24.4 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -334.2, -23.9 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -334.2, -23.9 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -310.4, -23.3 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -310.4, -23.3 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -286.6, -22.8 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -286.6, -22.8 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -262.8, -22.3 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -262.8, -22.3 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -239, -21.8 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -239, -21.8 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -215.2, -21.3 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -215.2, -21.3 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -191.4, -20.8 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -191.4, -20.8 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -167.6, -20.3 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -167.6, -20.3 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -143.9, -19.7 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -143.9, -19.7 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -120.1, -19.2 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -120.1, -19.2 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -96.3, -18.7 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -96.3, -18.7 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -73.8, -18.2 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -73.8, -18.2 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -51.3, -17.8 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -51.3, -17.8 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -28.8, -17.3 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -28.8, -17.3 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -6.3, -16.8 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -6.3, -16.8 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 16.2, -16.3 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 16.2, -16.3 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 17.7, 112.7 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 17.7, 112.7 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 36.5, 136.1 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 36.5, 136.1 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -14, 94.8 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -14, 94.8 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 71.1, -124.1 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 71.1, -124.1 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -4.6, -222.4 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -4.6, -222.4 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 47.9, -421.4 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 47.9, -421.4 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 29.1, -545.2 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 29.1, -545.2 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 38.6, -626.1 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 38.6, -626.1 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 48.3, -720 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 48.3, -720 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 47.4, -781.8 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 47.4, -781.8 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 48.4, -828.9 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 48.4, -828.9 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 51.7, -865.5 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 51.7, -865.5 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 48.3, -889.5 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 48.3, -889.5 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 48.5, -896.4 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 48.5, -896.4 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 49.9, -945.1 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 49.9, -945.1 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 49.9, -991 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 49.9, -991 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 49.9, -1036.9 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 49.9, -1036.9 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 49.9, -1082.8 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 49.9, -1082.8 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 50, -1128.6 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 50, -1128.6 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 50, -1174.5 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 50, -1174.5 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 50.1, -1220.4 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 50.1, -1220.4 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 50.2, -1266.3 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 50.2, -1266.3 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 50.3, -1312.1 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 50.3, -1312.1 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 50.5, -1358 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 50.5, -1358 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 50.6, -1403.9 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 50.6, -1403.9 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 50.8, -1449.8 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 50.8, -1449.8 , 0 );

setScaleKey( spep_0 + 130 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.79, 1.8 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 1.79, 1.8 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 2.85, 2.89 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 2.85, 2.89 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 3.71, 3.77 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 3.71, 3.77 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 4.44, 4.5 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 4.44, 4.5 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 5.06, 5.11 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 5.06, 5.11 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 5.57, 5.62 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 5.57, 5.62 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 6, 6.04 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 6, 6.04 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 6.34, 6.37 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 6.34, 6.37 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 6.6, 6.62 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 6.6, 6.62 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 6.78, 6.79 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 6.78, 6.79 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 6.88, 6.9 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 6.88, 6.9 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 6.92, 6.93 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 6.92, 6.93 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 7.25, 7.26 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 7.25, 7.26 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 7.54, 7.55 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 7.54, 7.55 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 7.84, 7.85 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 7.84, 7.85 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 8.13, 8.15 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 8.13, 8.15 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 8.43, 8.44 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 8.43, 8.44 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 8.73, 8.74 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 8.73, 8.74 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 9.02, 9.04 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 9.02, 9.04 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 9.32, 9.33 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 9.32, 9.33 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 9.62, 9.63 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 9.62, 9.63 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 9.91, 9.93 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 9.91, 9.93 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 10.21, 10.22 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 10.21, 10.22 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 10.5, 10.52 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 10.5, 10.52 );

setRotateKey( spep_0 + 130 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 153 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 154 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, -41.4 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, -41.4 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, -30.8 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, -30.8 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, -60 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, -60 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, -58.2 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, -58.2 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, -56.4 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, -56.4 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, -54.6 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, -54.6 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, -50.9 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, -50.9 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, -49.1 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, -49.1 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, -45.5 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, -45.5 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -43.7 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -43.7 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, -38.3 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, -38.3 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -34.2 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -34.2 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -27.4 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -27.4 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, -25.1 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -25.1 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, -23 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -23 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, -9.8 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -9.8 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -4.4 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -4.4 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, 4.4 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, 4.4 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, 13 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, 13 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, 15.7 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, 15.7 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, 17.5 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, 17.5 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, 21.5 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, 21.5 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, 24.1 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, 24.1 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, 25.5 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, 25.5 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, 26.8 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, 26.8 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 29.5 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, 29.5 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, 30.8 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, 30.8 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, 32.1 );

setAlphaKey( spep_0 + 130 + OFFSET_X, 1, 255)
setAlphaKey( spep_0 + 269 + OFFSET_X, 1, 255)

-- ** 音 ** --
--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気ダメ
SE002 = playSeVer2( spep_0 + 12, 1035, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 12, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE003, 69 );

--向かっていく
SE004 = playSeVer2( spep_0 + 80, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 80, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
SP_dodge = spep_0 + 134; --エンドフェイズのフレーム数を置き換える
 
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
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
SE007 = playSeVer2( spep_0 + 146, 1189, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 150, 1001, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 152, 1010, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 156, 1110, "", 0, 0, 0, -1);

--翻る
SE006 = playSeVer2( spep_0 + 180, 1119, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE006, 91 );
setStartTimeMs( SE006,  633 );
SE011 = playSeVer2( spep_0 + 176, 1116, "",spep_0 + 220, 0, 18, -1);
SE012 = playSeVer2( spep_0 + 180, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE012, 68 );

--裏拳
SE013 = playSeVer2( spep_0 + 206, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 214, 1187, "",spep_0 + 268 + 8, 0, 8, -1);

--瞬間移動
SE015 = playSeVer2( spep_0 + 242, 1109, "",spep_0 + 268 + 8, 0, 6, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 268

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 1);

------------------------------------------------------
-- 吹っ飛ばされる敵～気弾に飲み込まれる敵 ef_002 (208F)
------------------------------------------------------
MAX_FRAME_2 = 208;

-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_002, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_002, 255 );
entry_SP_002b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_002b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_002b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_002b, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_002b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 160 + OFFSET_X, 1, 0 );
changeAnime( spep_2 + 0, 1, 8 );
changeAnime( spep_2 + 90 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 0, 1, 278.4, -148.1 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 185.2, -21.3 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 185.2, -21.3 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 153.2, 16.2 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 153.2, 16.2 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 131.4, 41.1 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 131.4, 41.1 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 115, 59.7 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 115, 59.7 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 101.8, 74.5 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 101.8, 74.5 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 90.9, 86.5 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 90.9, 86.5 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 81.8, 96.6 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 81.8, 96.6 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 74, 105.1 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 74, 105.1 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 67.2, 112.4 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 67.2, 112.4 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 61.3, 118.7 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 61.3, 118.7 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 56.2, 124.2 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 56.2, 124.2 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 51.6, 129 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 51.6, 129 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 47.6, 133.1 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 47.6, 133.1 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 44, 136.8 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 44, 136.8 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 40.8, 140.1 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 40.8, 140.1 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 38, 142.9 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 38, 142.9 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 35.4, 145.4 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 35.4, 145.4 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 33.2, 147.6 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 33.2, 147.6 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 31.2, 149.6 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 31.2, 149.6 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 29.4, 151.3 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 29.4, 151.3 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 27.8, 152.8 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 27.8, 152.8 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 26.4, 154.1 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 26.4, 154.1 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 25.1, 155.3 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 25.1, 155.3 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 24, 156.3 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 24, 156.3 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 23, 157.1 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 23, 157.1 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 22.1, 157.9 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 22.1, 157.9 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 21.4, 158.5 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 21.4, 158.5 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 20.7, 159.1 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 20.7, 159.1 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 20.1, 159.6 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 20.1, 159.6 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 14.8, 163.2 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 14.8, 163.2 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 26.6, 152.7 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 26.6, 152.7 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 2.2, 160.3 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 2.2, 160.3 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 36.7, 169.4 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 36.7, 169.4 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 24, 129.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 24, 129.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 43.4, 148.9 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 43.4, 148.9 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 15.8, 185.6 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 15.8, 185.6 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 11, 130.8 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 11, 130.8 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 47.3, 172.9 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 47.3, 172.9 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 16.3, 186.8 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 16.3, 186.8 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 17.9, 161.2 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 17.9, 161.2 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 60.2, 194.2 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 60.2, 194.2 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 71.4, 240.7 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 71.4, 240.7 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 82.4, 291.5 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 82.4, 291.5 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 89, 329.6 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 89, 329.6 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 101.5, 368.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 101.5, 368.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 116.4, 386.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 116.4, 386.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 99.3, 391.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 99.3, 391.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 120.4, 394.8 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 120.4, 394.8 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 62.3, 241.3 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 62.3, 241.3 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 26.7, 163.2 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 26.7, 163.2 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -6.8, 132.2 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -6.8, 132.2 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 0, 67.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 0, 67.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -41.6, 56.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -41.6, 56.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -16.6, 80.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -16.6, 80.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -5.9, 23.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -5.9, 23.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -49.4, 44 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -49.4, 44 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -16.9, 98 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -16.9, 98 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 13, 68.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 13, 68.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -38.9, 18.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -38.9, 18.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 1.2, 71.5 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 1.2, 71.5 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -48.7, 75.2 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -48.7, 75.2 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -29.4, 82.7 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -29.4, 82.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -8.2, 75.5 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -8.2, 75.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -24.3, 67.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -24.3, 67.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -23, 82.3 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -23, 82.3 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -5.7, 64.7 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -5.7, 64.7 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -12.6, 89.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -12.6, 89.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -24.3, 76.7 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -24.3, 76.7 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -2.7, 78.6 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -2.7, 78.6 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -11.4, 71.8 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -11.4, 71.8 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -13.5, 84.5 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -13.5, 84.5 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -7.5, 75.5 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -7.5, 75.5 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -20.1, 83.9 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -20.1, 83.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 1.5, 85.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 1.5, 85.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -8, 77.5 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -8, 77.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -11, 88.7 , 0 );

setScaleKey( spep_2 + 0, 1, 14.65, 14.65 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 11.3, 11.5 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 11.3, 11.5 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 10, 10.11 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 10, 10.11 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 9.09, 9.14 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 9.09, 9.14 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 8.39, 8.4 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 8.39, 8.4 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 7.82, 7.79 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 7.82, 7.79 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 7.33, 7.29 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 7.33, 7.29 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 6.91, 6.86 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 6.91, 6.86 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 6.55, 6.48 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 6.55, 6.48 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 6.23, 6.15 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 6.23, 6.15 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 5.95, 5.86 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 5.95, 5.86 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 5.69, 5.61 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 5.69, 5.61 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 5.46, 5.38 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 5.46, 5.38 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 5.25, 5.17 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 5.25, 5.17 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 5.07, 4.99 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 5.07, 4.99 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 4.9, 4.82 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 4.9, 4.82 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 4.75, 4.67 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 4.75, 4.67 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 4.61, 4.54 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 4.61, 4.54 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 4.48, 4.41 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 4.48, 4.41 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 4.36, 4.3 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 4.36, 4.3 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 4.26, 4.2 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 4.26, 4.2 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 4.16, 4.11 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 4.16, 4.11 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 4.08, 4.03 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 4.08, 4.03 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 4, 3.96 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 4, 3.96 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 3.93, 3.89 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 3.93, 3.89 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 3.86, 3.83 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 3.86, 3.83 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 3.81, 3.78 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 3.81, 3.78 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 3.76, 3.73 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 3.76, 3.73 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 3.71, 3.69 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 3.71, 3.69 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 3.67, 3.65 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 3.67, 3.65 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 3.63, 3.62 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 3.63, 3.62 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 3.6, 3.59 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 3.6, 3.59 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 3.58, 3.57 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 3.58, 3.57 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 3.56, 3.55 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 3.56, 3.55 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 3.54, 3.53 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 3.54, 3.53 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.39, 0.39 );

setRotateKey( spep_2 + 0, 1, 28 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 28 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -56.2 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, -56.2 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -52.2 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -52.2 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -48.2 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -48.2 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -38.2 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -38.2 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -37.8 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -37.8 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -36.4 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -36.4 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -35 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -35 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -34 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -34 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -33.5 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -33.5 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -31.2 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -31.2 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -30.3 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -30.3 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -28.4 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -28.4 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -27.4 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -27.4 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -26.5 );

setAlphaKey( spep_2 + 0, 1, 255)
setAlphaKey( spep_2 + 133 + OFFSET_X, 1, 255)
setAlphaKey( spep_2 + 134 + OFFSET_X, 1, 240)
setAlphaKey( spep_2 + 135 + OFFSET_X, 1, 240)
setAlphaKey( spep_2 + 136 + OFFSET_X, 1, 220)
setAlphaKey( spep_2 + 137 + OFFSET_X, 1, 220)
setAlphaKey( spep_2 + 138 + OFFSET_X, 1, 200)
setAlphaKey( spep_2 + 139 + OFFSET_X, 1, 200)
setAlphaKey( spep_2 + 140 + OFFSET_X, 1, 180)
setAlphaKey( spep_2 + 141 + OFFSET_X, 1, 180)
setAlphaKey( spep_2 + 142 + OFFSET_X, 1, 160)
setAlphaKey( spep_2 + 143 + OFFSET_X, 1, 160)
setAlphaKey( spep_2 + 144 + OFFSET_X, 1, 140)
setAlphaKey( spep_2 + 145 + OFFSET_X, 1, 140)
setAlphaKey( spep_2 + 146 + OFFSET_X, 1, 120)
setAlphaKey( spep_2 + 147 + OFFSET_X, 1, 120)
setAlphaKey( spep_2 + 148 + OFFSET_X, 1, 100)
setAlphaKey( spep_2 + 149 + OFFSET_X, 1, 100)
setAlphaKey( spep_2 + 150 + OFFSET_X, 1, 80)
setAlphaKey( spep_2 + 151 + OFFSET_X, 1, 80)
setAlphaKey( spep_2 + 152 + OFFSET_X, 1, 60)
setAlphaKey( spep_2 + 153 + OFFSET_X, 1, 60)
setAlphaKey( spep_2 + 154 + OFFSET_X, 1, 40)
setAlphaKey( spep_2 + 155 + OFFSET_X, 1, 40)
setAlphaKey( spep_2 + 156 + OFFSET_X, 1, 20)
setAlphaKey( spep_2 + 157 + OFFSET_X, 1, 20)
setAlphaKey( spep_2 + 158 + OFFSET_X, 1, 0)
setAlphaKey( spep_2 + 159 + OFFSET_X, 1, 0)
setAlphaKey( spep_2 + 160 + OFFSET_X, 1, 255)

setBlendColor( spep_2 + 90 + OFFSET_X, 1, 2, 0, 0, 0, 0.7);
setBlendColor( spep_2 + 159 + OFFSET_X, 1, 2, 0, 0, 0, 0.7);
setBlendColor( spep_2 + 160 + OFFSET_X, 1, 2, 0, 0, 0, 0);

-- ** 音 ** --
--敵飛んでくる
SE017 = playSeVer2( spep_1 + 90, 1183, "",spep_2 + 94, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 90, SE017, 47 );

--瞬間移動
SE018 = playSeVer2( spep_2 + 2, 1109, "", 0, 0, 0, -1);

--気弾溜め
SE019 = playSeVer2( spep_2 + 42, 1262, "",spep_2 + 94, 0, 20, -1);
SE020 = playSeVer2( spep_2 + 42, 1296, "",spep_2 + 92, 0, 18, -1);

--気弾発射
SE021 = playSeVer2( spep_2 + 74, 1145, "", 0, 0, 0, -1);

--爆発
SE022 = playSeVer2( spep_2 + 82, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE022, 85 );
SE023 = playSeVer2( spep_2 + 88, 1023, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 120, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE024, 84 );

-- ** おわり ** --
dealDamage( spep_2 + 100 );
endPhase( spep_2 +  MAX_FRAME_2 - 4 );  -- 208

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 空中待機～裏拳 ef_001 (268F)
------------------------------------------------------
MAX_FRAME_0 = 268;

-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001, 255 );
entry_SP_001b = entryEffect( spep_0 + 0, SP_001br, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001b, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 255 );

-- ** 集中線 ** --
shuchusen_1 = entryEffectLife( spep_0 + 99, 906, 29, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 99, shuchusen_1, 000, 20 );
setEffMoveKey( spep_0 + 99, shuchusen_1, 0, 0, 0 );
setEffMoveKey( spep_0 + 128, shuchusen_1, 0, 0, 0 );
setEffScaleKey( spep_0 + 99, shuchusen_1, -1.6, 1.6 );
setEffScaleKey( spep_0 + 128, shuchusen_1, -1.6, 1.6 );
setEffRotateKey( spep_0 + 99, shuchusen_1, 0 );
setEffRotateKey( spep_0 + 128, shuchusen_1, 0 );
setEffAlphaKey( spep_0 + 99, shuchusen_1, 255 );
setEffAlphaKey( spep_0 + 128, shuchusen_1, 255 );

shuchusen_2 = entryEffectLife( spep_0 + 155, 906, 23, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 155, shuchusen_2, 000, 20 );
setEffMoveKey( spep_0 + 155, shuchusen_2, 0, 0, 0 );
setEffMoveKey( spep_0 + 178, shuchusen_2, 0, 0, 0 );
setEffScaleKey( spep_0 + 155, shuchusen_2, -1.6, 1.6 );
setEffScaleKey( spep_0 + 178, shuchusen_2, -1.6, 1.6 );
setEffRotateKey( spep_0 + 155, shuchusen_2, 0 );
setEffRotateKey( spep_0 + 178, shuchusen_2, 0 );
setEffAlphaKey( spep_0 + 155, shuchusen_2, 255 );
setEffAlphaKey( spep_0 + 178, shuchusen_2, 255 );


spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
  
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -20, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -20, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
setDisp( spep_0 + 130 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 269 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 130 + OFFSET_X, 1, 101 );
changeAnime( spep_0 + 154 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 218 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 130 + OFFSET_X, 1, 199.4, 203 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 199.4, 203 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 199.4, 203 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 211.8, 212.7 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 211.8, 212.7 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 147.8, 251.6 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 147.8, 251.6 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 170.6, 301.7 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 170.6, 301.7 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 217.6, 307.8 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 217.6, 307.8 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 221.1, 352.8 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 221.1, 352.8 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 227.7, 347.5 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 227.7, 347.5 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 252.8, 366.8 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 252.8, 366.8 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 262.7, 375.5 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 262.7, 375.5 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 258.8, 368.8 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 258.8, 368.8 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 264.8, 392.1 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 264.8, 392.1 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 285.3, 383 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 285.3, 383 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 280.7, 403.8 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 280.7, 403.8 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 289, 403.6 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 289, 403.6 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 305.3, 417.3 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 305.3, 417.3 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -405.5, -25.4 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -405.5, -25.4 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -381.8, -24.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -381.8, -24.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -358, -24.4 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -358, -24.4 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -334.2, -23.9 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -334.2, -23.9 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -310.4, -23.3 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -310.4, -23.3 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -286.6, -22.8 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -286.6, -22.8 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -262.8, -22.3 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -262.8, -22.3 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -239, -21.8 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -239, -21.8 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -215.2, -21.3 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -215.2, -21.3 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -191.4, -20.8 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -191.4, -20.8 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -167.6, -20.3 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -167.6, -20.3 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -143.9, -19.7 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -143.9, -19.7 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -120.1, -19.2 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -120.1, -19.2 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -96.3, -18.7 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -96.3, -18.7 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -73.8, -18.2 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -73.8, -18.2 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -51.3, -17.8 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -51.3, -17.8 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -28.8, -17.3 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -28.8, -17.3 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -6.3, -16.8 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -6.3, -16.8 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 16.2, -16.3 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 16.2, -16.3 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 17.7, 112.7 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 17.7, 112.7 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 36.5, 136.1 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 36.5, 136.1 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -14, 94.8 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -14, 94.8 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 71.1, -124.1 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 71.1, -124.1 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -4.6, -222.4 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -4.6, -222.4 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 47.9, -421.4 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 47.9, -421.4 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 29.1, -545.2 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 29.1, -545.2 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 38.6, -626.1 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 38.6, -626.1 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 48.3, -720 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 48.3, -720 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 47.4, -781.8 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 47.4, -781.8 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 48.4, -828.9 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 48.4, -828.9 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 51.7, -865.5 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 51.7, -865.5 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 48.3, -889.5 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 48.3, -889.5 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 48.5, -896.4 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 48.5, -896.4 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 49.9, -945.1 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 49.9, -945.1 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 49.9, -991 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 49.9, -991 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 49.9, -1036.9 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 49.9, -1036.9 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 49.9, -1082.8 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 49.9, -1082.8 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 50, -1128.6 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 50, -1128.6 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 50, -1174.5 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 50, -1174.5 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 50.1, -1220.4 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 50.1, -1220.4 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 50.2, -1266.3 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 50.2, -1266.3 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 50.3, -1312.1 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 50.3, -1312.1 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 50.5, -1358 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 50.5, -1358 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 50.6, -1403.9 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 50.6, -1403.9 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 50.8, -1449.8 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 50.8, -1449.8 , 0 );

setScaleKey( spep_0 + 130 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.79, 1.8 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 1.79, 1.8 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 2.85, 2.89 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 2.85, 2.89 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 3.71, 3.77 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 3.71, 3.77 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 4.44, 4.5 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 4.44, 4.5 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 5.06, 5.11 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 5.06, 5.11 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 5.57, 5.62 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 5.57, 5.62 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 6, 6.04 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 6, 6.04 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 6.34, 6.37 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 6.34, 6.37 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 6.6, 6.62 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 6.6, 6.62 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 6.78, 6.79 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 6.78, 6.79 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 6.88, 6.9 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 6.88, 6.9 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 6.92, 6.93 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 6.92, 6.93 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 7.25, 7.26 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 7.25, 7.26 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 7.54, 7.55 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 7.54, 7.55 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 7.84, 7.85 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 7.84, 7.85 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 8.13, 8.15 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 8.13, 8.15 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 8.43, 8.44 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 8.43, 8.44 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 8.73, 8.74 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 8.73, 8.74 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 9.02, 9.04 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 9.02, 9.04 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 9.32, 9.33 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 9.32, 9.33 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 9.62, 9.63 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 9.62, 9.63 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 9.91, 9.93 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 9.91, 9.93 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 10.21, 10.22 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 10.21, 10.22 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 10.5, 10.52 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 10.5, 10.52 );

setRotateKey( spep_0 + 130 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 153 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 154 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, -41.4 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, -41.4 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, -30.8 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, -30.8 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, -60 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, -60 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, -58.2 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, -58.2 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, -56.4 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, -56.4 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, -54.6 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, -54.6 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, -50.9 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, -50.9 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, -49.1 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, -49.1 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, -47.3 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, -45.5 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, -45.5 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -43.7 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -43.7 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, -38.3 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, -38.3 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -34.2 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -34.2 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -31.9 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -27.4 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -27.4 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, -25.1 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -25.1 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, -23 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -23 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, -15.9 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, -9.8 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -9.8 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -4.4 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -4.4 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, 0.3 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, 4.4 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, 4.4 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, 13 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, 13 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, 15.7 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, 15.7 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, 17.5 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, 17.5 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, 18.8 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, 21.5 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, 21.5 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, 24.1 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, 24.1 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, 25.5 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, 25.5 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, 26.8 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, 26.8 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, 28.1 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 29.5 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, 29.5 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, 30.8 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, 30.8 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 32.1 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, 32.1 );

setAlphaKey( spep_0 + 130 + OFFSET_X, 1, 255)
setAlphaKey( spep_0 + 269 + OFFSET_X, 1, 255)

-- ** 音 ** --
--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気ダメ
SE002 = playSeVer2( spep_0 + 12, 1035, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 12, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE003, 69 );

--向かっていく
SE004 = playSeVer2( spep_0 + 80, 1182, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 80, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then
 
SP_dodge = spep_0 + 134; --エンドフェイズのフレーム数を置き換える
 
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
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
SE007 = playSeVer2( spep_0 + 146, 1189, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 150, 1001, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 152, 1010, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 156, 1110, "", 0, 0, 0, -1);

--翻る
SE006 = playSeVer2( spep_0 + 180, 1119, "", 0, 8, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE006, 91 );
setStartTimeMs( SE006,  633 );
SE011 = playSeVer2( spep_0 + 176, 1116, "",spep_0 + 220, 0, 18, -1);
SE012 = playSeVer2( spep_0 + 180, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE012, 68 );

--裏拳
SE013 = playSeVer2( spep_0 + 206, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 214, 1187, "",spep_0 + 268 + 8, 0, 8, -1);

--瞬間移動
SE015 = playSeVer2( spep_0 + 242, 1109, "",spep_0 + 268 + 8, 0, 6, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 268

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 1);

------------------------------------------------------
-- 吹っ飛ばされる敵～気弾に飲み込まれる敵 ef_002 (208F)
------------------------------------------------------
MAX_FRAME_2 = 208;

-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_002, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_002, 255 );
entry_SP_002b = entryEffect( spep_2 + 0, SP_002br, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_002b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002b, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_002b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_002b, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_002b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 160 + OFFSET_X, 1, 0 );
changeAnime( spep_2 + 0, 1, 8 );
changeAnime( spep_2 + 90 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 0, 1, 278.4, -148.1 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 185.2, -21.3 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 185.2, -21.3 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 153.2, 16.2 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 153.2, 16.2 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 131.4, 41.1 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 131.4, 41.1 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 115, 59.7 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 115, 59.7 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 101.8, 74.5 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 101.8, 74.5 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 90.9, 86.5 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 90.9, 86.5 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 81.8, 96.6 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 81.8, 96.6 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 74, 105.1 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 74, 105.1 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 67.2, 112.4 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 67.2, 112.4 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 61.3, 118.7 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 61.3, 118.7 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 56.2, 124.2 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 56.2, 124.2 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 51.6, 129 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 51.6, 129 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 47.6, 133.1 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 47.6, 133.1 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 44, 136.8 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 44, 136.8 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 40.8, 140.1 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 40.8, 140.1 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 38, 142.9 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 38, 142.9 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 35.4, 145.4 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 35.4, 145.4 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 33.2, 147.6 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 33.2, 147.6 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 31.2, 149.6 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 31.2, 149.6 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 29.4, 151.3 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 29.4, 151.3 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 27.8, 152.8 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 27.8, 152.8 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 26.4, 154.1 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 26.4, 154.1 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 25.1, 155.3 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 25.1, 155.3 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 24, 156.3 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 24, 156.3 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 23, 157.1 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 23, 157.1 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 22.1, 157.9 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 22.1, 157.9 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 21.4, 158.5 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 21.4, 158.5 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 20.7, 159.1 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 20.7, 159.1 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 20.1, 159.6 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 20.1, 159.6 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 14.8, 163.2 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 14.8, 163.2 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 26.6, 152.7 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 26.6, 152.7 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 2.2, 160.3 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 2.2, 160.3 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 36.7, 169.4 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 36.7, 169.4 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 24, 129.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 24, 129.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 43.4, 148.9 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 43.4, 148.9 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 15.8, 185.6 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 15.8, 185.6 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 11, 130.8 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 11, 130.8 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 47.3, 172.9 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 47.3, 172.9 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 16.3, 186.8 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 16.3, 186.8 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 17.9, 161.2 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 17.9, 161.2 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 60.2, 194.2 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 60.2, 194.2 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 71.4, 240.7 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 71.4, 240.7 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 82.4, 291.5 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 82.4, 291.5 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 89, 329.6 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 89, 329.6 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 101.5, 368.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 101.5, 368.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 116.4, 386.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 116.4, 386.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 99.3, 391.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 99.3, 391.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 120.4, 394.8 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 120.4, 394.8 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 62.3, 241.3 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 62.3, 241.3 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 26.7, 163.2 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 26.7, 163.2 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -6.8, 132.2 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -6.8, 132.2 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 0, 67.4 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 0, 67.4 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -41.6, 56.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -41.6, 56.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -16.6, 80.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -16.6, 80.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -5.9, 23.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -5.9, 23.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -49.4, 44 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -49.4, 44 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -16.9, 98 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -16.9, 98 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 13, 68.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 13, 68.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -38.9, 18.5 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -38.9, 18.5 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 1.2, 71.5 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 1.2, 71.5 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -48.7, 75.2 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -48.7, 75.2 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -29.4, 82.7 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -29.4, 82.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -8.2, 75.5 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -8.2, 75.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -24.3, 67.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -24.3, 67.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -23, 82.3 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -23, 82.3 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -5.7, 64.7 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -5.7, 64.7 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -12.6, 89.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -12.6, 89.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -24.3, 76.7 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -24.3, 76.7 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -2.7, 78.6 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -2.7, 78.6 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -11.4, 71.8 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -11.4, 71.8 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -13.5, 84.5 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -13.5, 84.5 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -7.5, 75.5 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -7.5, 75.5 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -20.1, 83.9 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -20.1, 83.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 1.5, 85.7 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 1.5, 85.7 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -8, 77.5 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -8, 77.5 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -11, 88.7 , 0 );

setScaleKey( spep_2 + 0, 1, 14.65, 14.65 );
setScaleKey( spep_2 + 2 + OFFSET_X, 1, 11.3, 11.5 );
setScaleKey( spep_2 + 3 + OFFSET_X, 1, 11.3, 11.5 );
setScaleKey( spep_2 + 4 + OFFSET_X, 1, 10, 10.11 );
setScaleKey( spep_2 + 5 + OFFSET_X, 1, 10, 10.11 );
setScaleKey( spep_2 + 6 + OFFSET_X, 1, 9.09, 9.14 );
setScaleKey( spep_2 + 7 + OFFSET_X, 1, 9.09, 9.14 );
setScaleKey( spep_2 + 8 + OFFSET_X, 1, 8.39, 8.4 );
setScaleKey( spep_2 + 9 + OFFSET_X, 1, 8.39, 8.4 );
setScaleKey( spep_2 + 10 + OFFSET_X, 1, 7.82, 7.79 );
setScaleKey( spep_2 + 11 + OFFSET_X, 1, 7.82, 7.79 );
setScaleKey( spep_2 + 12 + OFFSET_X, 1, 7.33, 7.29 );
setScaleKey( spep_2 + 13 + OFFSET_X, 1, 7.33, 7.29 );
setScaleKey( spep_2 + 14 + OFFSET_X, 1, 6.91, 6.86 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 6.91, 6.86 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 6.55, 6.48 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 6.55, 6.48 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 6.23, 6.15 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 6.23, 6.15 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 5.95, 5.86 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 5.95, 5.86 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 5.69, 5.61 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 5.69, 5.61 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 5.46, 5.38 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 5.46, 5.38 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 5.25, 5.17 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 5.25, 5.17 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 5.07, 4.99 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 5.07, 4.99 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 4.9, 4.82 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 4.9, 4.82 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 4.75, 4.67 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 4.75, 4.67 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 4.61, 4.54 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 4.61, 4.54 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 4.48, 4.41 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 4.48, 4.41 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 4.36, 4.3 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 4.36, 4.3 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 4.26, 4.2 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 4.26, 4.2 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 4.16, 4.11 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 4.16, 4.11 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 4.08, 4.03 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 4.08, 4.03 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 4, 3.96 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 4, 3.96 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 3.93, 3.89 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 3.93, 3.89 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 3.86, 3.83 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 3.86, 3.83 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 3.81, 3.78 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 3.81, 3.78 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 3.76, 3.73 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 3.76, 3.73 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 3.71, 3.69 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 3.71, 3.69 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 3.67, 3.65 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 3.67, 3.65 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 3.63, 3.62 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 3.63, 3.62 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 3.6, 3.59 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 3.6, 3.59 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 3.58, 3.57 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 3.58, 3.57 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 3.56, 3.55 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 3.56, 3.55 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 3.54, 3.53 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 3.54, 3.53 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 2.09, 2.09 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.39, 0.39 );

setRotateKey( spep_2 + 0, 1, 28 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 28 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -56.2 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, -56.2 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -52.2 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -52.2 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -48.2 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -48.2 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, -39.7 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -38.2 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -38.2 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -37.8 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -37.8 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -36.4 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -36.4 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -35 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -35 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -34 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -34 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -33.5 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -33.5 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -33.1 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -32.1 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -31.7 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -31.2 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -31.2 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -30.7 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -30.3 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -30.3 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -29.8 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -29.3 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -28.4 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -28.4 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -27.4 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -27.4 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -26.5 );

setAlphaKey( spep_2 + 0, 1, 255)
setAlphaKey( spep_2 + 133 + OFFSET_X, 1, 255)
setAlphaKey( spep_2 + 134 + OFFSET_X, 1, 240)
setAlphaKey( spep_2 + 135 + OFFSET_X, 1, 240)
setAlphaKey( spep_2 + 136 + OFFSET_X, 1, 220)
setAlphaKey( spep_2 + 137 + OFFSET_X, 1, 220)
setAlphaKey( spep_2 + 138 + OFFSET_X, 1, 200)
setAlphaKey( spep_2 + 139 + OFFSET_X, 1, 200)
setAlphaKey( spep_2 + 140 + OFFSET_X, 1, 180)
setAlphaKey( spep_2 + 141 + OFFSET_X, 1, 180)
setAlphaKey( spep_2 + 142 + OFFSET_X, 1, 160)
setAlphaKey( spep_2 + 143 + OFFSET_X, 1, 160)
setAlphaKey( spep_2 + 144 + OFFSET_X, 1, 140)
setAlphaKey( spep_2 + 145 + OFFSET_X, 1, 140)
setAlphaKey( spep_2 + 146 + OFFSET_X, 1, 120)
setAlphaKey( spep_2 + 147 + OFFSET_X, 1, 120)
setAlphaKey( spep_2 + 148 + OFFSET_X, 1, 100)
setAlphaKey( spep_2 + 149 + OFFSET_X, 1, 100)
setAlphaKey( spep_2 + 150 + OFFSET_X, 1, 80)
setAlphaKey( spep_2 + 151 + OFFSET_X, 1, 80)
setAlphaKey( spep_2 + 152 + OFFSET_X, 1, 60)
setAlphaKey( spep_2 + 153 + OFFSET_X, 1, 60)
setAlphaKey( spep_2 + 154 + OFFSET_X, 1, 40)
setAlphaKey( spep_2 + 155 + OFFSET_X, 1, 40)
setAlphaKey( spep_2 + 156 + OFFSET_X, 1, 20)
setAlphaKey( spep_2 + 157 + OFFSET_X, 1, 20)
setAlphaKey( spep_2 + 158 + OFFSET_X, 1, 0)
setAlphaKey( spep_2 + 159 + OFFSET_X, 1, 0)
setAlphaKey( spep_2 + 160 + OFFSET_X, 1, 255)

setBlendColor( spep_2 + 90 + OFFSET_X, 1, 2, 0, 0, 0, 0.7);
setBlendColor( spep_2 + 159 + OFFSET_X, 1, 2, 0, 0, 0, 0.7);
setBlendColor( spep_2 + 160 + OFFSET_X, 1, 2, 0, 0, 0, 0);

-- ** 音 ** --
--敵飛んでくる
SE017 = playSeVer2( spep_1 + 90, 1183, "",spep_2 + 94, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 90, SE017, 47 );

--瞬間移動
SE018 = playSeVer2( spep_2 + 2, 1109, "", 0, 0, 0, -1);

--気弾溜め
SE019 = playSeVer2( spep_2 + 42, 1262, "",spep_2 + 94, 0, 20, -1);
SE020 = playSeVer2( spep_2 + 42, 1296, "",spep_2 + 92, 0, 18, -1);

--気弾発射
SE021 = playSeVer2( spep_2 + 74, 1145, "", 0, 0, 0, -1);

--爆発
SE022 = playSeVer2( spep_2 + 82, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE022, 85 );
SE023 = playSeVer2( spep_2 + 88, 1023, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 120, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 120, SE024, 84 );

-- ** おわり ** --
dealDamage( spep_2 + 100 );
endPhase( spep_2 +  MAX_FRAME_2 - 4 );  -- 208

end
