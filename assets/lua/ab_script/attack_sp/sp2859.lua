--1031020:UR_ピッコロ_必殺技：魔貫光殺砲
--sp_effect_a3_00117
--sp2859

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 163757;  -- 登場から腕で敵を掴むまで：手前 ef_001
SP_01b = 163759;  -- 登場から腕で敵を掴むまで：奥 ef_001b
SP_02 = 163760;  -- 魔貫光殺砲から爆発 ef_002



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

ENABLE_AUTO_TIME_STRETCH(0.74);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 登場から腕で敵を掴むまで
-------------------------------------------------
MAX_FRAME_0 = 488;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場から腕で敵を掴むまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 登場から腕で敵を掴むまで(ef_001b)
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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -55, 515.5 , 0 );
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

setDisp( spep_0 + 152 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 322 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 152 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 216 + OFFSET_X, 1, 2 );

setMoveKey( spep_0 + 152 + OFFSET_X, 1, 632.5, -1140.3 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 632.5, -1140.3 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 574.1, -956.9 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 574.1, -956.9 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 522.5, -794.7 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 522.5, -794.7 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 477.3, -652.5 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 477.3, -652.5 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 438.1, -529.2 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 438.1, -529.2 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 404.6, -424 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 404.6, -424 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 376.7, -336.1 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 376.7, -336.1 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 354, -264.7 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 354, -264.7 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 336.4, -209.4 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 336.4, -209.4 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 323.7, -169.5 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 323.7, -169.5 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 322.4, -165.4 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 322.4, -165.4 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 321.1, -161.6 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 321.1, -161.6 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 320, -158.1 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 320, -158.1 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 318.9, -154.8 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 318.9, -154.8 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 318, -151.7 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 318, -151.7 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 317.1, -148.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 317.1, -148.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 316.2, -146.3 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 316.2, -146.3 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 315.5, -144 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 315.5, -144 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 314.8, -141.9 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 314.8, -141.9 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 314.2, -140 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 314.2, -140 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 313.1, -140 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 313.1, -140 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 310.6, -140 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 310.6, -140 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 307.5, -140 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 307.5, -140 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 304, -140 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 304, -140 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 300.2, -140 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 300.2, -140 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 296.2, -140 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 296.2, -140 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 292.1, -140 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 292.1, -140 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 288, -140.1 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 288, -140.1 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 283.8, -140.1 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 283.8, -140.1 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 279.6, -140.1 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 279.6, -140.1 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 275.4, -140.1 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 275.4, -140.1 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 271.3, -140.1 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 271.3, -140.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 267.1, -140.1 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 267.1, -140.1 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 257.8, -140.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 257.8, -140.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 248.4, -140.1 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 248.4, -140.1 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 238.9, -140.1 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 238.9, -140.1 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 229.6, -140.1 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 229.6, -140.1 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 220.6, -140.1 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 220.6, -140.1 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 211.8, -140.1 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 211.8, -140.1 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 203.4, -140 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 203.4, -140 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 195.5, -140 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 195.5, -140 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 188.1, -140 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 188.1, -140 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 181.2, -140 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 181.2, -140 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 174.9, -140 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 174.9, -140 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 169.3, -140 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 169.3, -140 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 164.3, -140 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 164.3, -140 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 160, -140 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 160, -140 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 156.5, -140 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 156.5, -140 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 153.7, -140 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 153.7, -140 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 151.6, -140 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 151.6, -140 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 150.4, -140 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 150.4, -140 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 150, -140 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 150, -140 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 159.1, -140 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 159.1, -140 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 178, -140 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 178, -140 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 192.3, -140 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 192.3, -140 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 201.2, -140 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 201.2, -140 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 206.5, -140 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 206.5, -140 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 209.2, -140 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 209.2, -140 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 210, -140 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 210, -140 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 206.2, -140 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 206.2, -140 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 198.6, -140 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 198.6, -140 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 194.2, -140 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 194.2, -140 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 194.2, -100 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 194.2, -100 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 194.2, -140 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 194.2, -140 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 194.2, -130 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 194.2, -130 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 194.2, -120 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 194.2, -120 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 194.2, -130 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 194.2, -130 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 194.2, -140 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 194.2, -140 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 268.2, -282.9 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 268.2, -282.9 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 342.3, -425.8 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 342.3, -425.8 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 416.3, -568.7 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 416.3, -568.7 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 490.4, -711.6 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 490.4, -711.6 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 564.4, -854.5 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 564.4, -854.5 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 638.5, -997.4 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 638.5, -997.4 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 712.5, -1140.3 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 712.5, -1140.3 , 0 );

setScaleKey( spep_0 + 152 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 8.81, 8.81 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 8.81, 8.81 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 7.75, 7.75 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 7.75, 7.75 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 6.83, 6.83 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 6.83, 6.83 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 6.03, 6.03 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 6.03, 6.03 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 5.35, 5.35 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 5.35, 5.35 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 5.36, 5.36 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 5.36, 5.36 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 6.29, 6.29 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 6.29, 6.29 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 7.21, 7.21 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 7.21, 7.21 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 8.14, 8.14 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 8.14, 8.14 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 9.07, 9.07 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 9.07, 9.07 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 10, 10 );

setRotateKey( spep_0 + 152 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, 0 );

--敵の動き2

setDisp( spep_0 + 438 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 490 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 438 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 476 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 438 + OFFSET_X, 1, 785, -210 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 785, -210 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 660.8, -184.4 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 660.8, -184.4 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 545.2, -160.5 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 545.2, -160.5 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 443.5, -139.5 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 443.5, -139.5 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 358.4, -122 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 358.4, -122 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 290, -107.9 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 290, -107.9 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 237.5, -97 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 237.5, -97 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 199.3, -89.1 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 199.3, -89.1 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 173.8, -83.9 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 173.8, -83.9 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 159.5, -80.9 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 159.5, -80.9 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 155, -80 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 155, -80 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 154.9, -100 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 154.9, -100 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 154.3, -98.8 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 154.3, -98.8 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 154.9, -100 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 154.9, -100 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 154.4, -99.1 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 154.4, -99.1 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 154.9, -100 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 154.9, -100 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 154.8, -99.9 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 154.8, -99.9 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 154.8, -99.7 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 154.8, -99.7 , 0 );

setScaleKey( spep_0 + 438 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 487 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 1.36, 1.36 );

setRotateKey( spep_0 + 438 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 475 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 476 + OFFSET_X, 1, -25 );
setRotateKey( spep_0 + 490 + OFFSET_X, 1, -25 );

-- ** 音 ** --

--溜め
SE002 = playSeVer2( spep_0 + 112, 1371, "",spep_0 + 500, 8, 12, -1);
setSeVolumeByWorkId( spep_0 + 112, SE002, 58 );
setStartTimeMs( SE002,  1533 );
setPitch( spep_0 + 112, SE002, -900 );
setTimeStretch( SE002, 0.4, 30, 4 );
SE003 = playSeVer2( spep_0 + 28, 1043, "",spep_0 + 118, 0, 20, -1);
SE004 = playSeVer2( spep_0 + 28, 1243, "",spep_0 + 422, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 28, SE004, 79 );
SE005 = playSeVer2( spep_0 + 32, 1147, "",spep_0 + 120, 0, 20, -1);
SE006 = playSeVer2( spep_0 + 32, 1038, "", 0, 0, 0, -1);

--ズーム
SE007 = playSeVer2( spep_0 + 60, 1072, "", 0, 0, 0, -1);

--増える
SE008 = playSeVer2( spep_0 + 106, 1354, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE008, 72 );
SE009 = playSeVer2( spep_0 + 106, 1235, "", 0, 0, 0, -1);

--さらに増える
SE010 = playSeVer2( spep_0 + 174, 1453, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 174, SE010, 60 );
SE011 = playSeVer2( spep_0 + 174, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 174, SE011, 47 );
setTimeStretch( SE011, 1.24, 30, 4 );
SE012 = playSeVer2( spep_0 + 174, 1497, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 174, 1450, "",spep_0 + 270, 0, 22, -1);

--敵驚く
SE014 = playSeVer2( spep_0 + 276, 48, "", 0, 0, 0, -1);

--画面遷移
SE015 = playSeVer2( spep_0 + 328, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 328, SE015, 75 );

--腕伸ばす
SE016 = playSeVer2( spep_0 + 388, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 388, SE016, 68 );
SE017 = playSeVer2( spep_0 + 392, 1326, "",spep_0 + 494, 0, 14, -1);
SE018 = playSeVer2( spep_0 + 392, 1214, "",spep_0 + 494, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 392, SE018, 135 );
SE019 = playSeVer2( spep_0 + 404, 1202, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 440; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
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

--巻きつく
SE020 = playSeVer2( spep_0 + 446, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 446, SE020, 140 );
SE021 = playSeVer2( spep_0 + 456, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 456, SE021, 130 );
SE022 = playSeVer2( spep_0 + 464, 1153, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --488F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--発射前溜め
SE024 = playSeVer2( spep_1 + 88, 1148, "",spep_2 + 50, 0, 14, -1);
SE025 = playSeVer2( spep_1 + 88, 1038, "", 0, 0, 0, -1);

-------------------------------------------------
-- 魔貫光殺砲から爆発
-------------------------------------------------
MAX_FRAME_2 = 300;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); -- 魔貫光殺砲から爆発(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --

--発射前溜め
SE026 = playSeVer2( spep_2 + 16, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 16, SE026, 79 );
SE027 = playSeVer2( spep_2 + 22, 1147, "",spep_2 + 116, 0, 32, -1);

--魔貫光殺砲発射
SE028 = playSeVer2( spep_2 + 78, 1177, "",spep_2 + 158, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 78, SE028, 71 );
SE029 = playSeVer2( spep_2 + 78, 1312, "",spep_2 + 136, 0, 20, -1);
SE030 = playSeVer2( spep_2 + 78, 1212, "",spep_2 + 160, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 78, SE030, 68 );
SE031 = playSeVer2( spep_2 + 78, 1249, "",spep_2 + 162, 0, 26, -1);
SE032 = playSeVer2( spep_2 + 82, 1256, "", 0, 0, 0, -1);

--爆発
SE033 = playSeVer2( spep_2 + 130, 1024, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 166, 1159, "",spep_2 + 360, 0, 90, -1);
SE035 = playSeVer2( spep_2 + 190, 1067, "", 0, 0, 0, -1);

--溜め2
SE041 = playSeVer2( spep_0 + 108, 1243, "",spep_0 + 422, 4, 18, -1);
setSeVolumeByWorkId( spep_0 + 108, SE041, 79 );
SE042 = playSeVer2( spep_0 + 176, 1243, "",spep_0 + 422, 4, 18, -1);
setSeVolumeByWorkId( spep_0 + 176, SE042, 79 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 146); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 300F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 登場から腕で敵を掴むまで
-------------------------------------------------
MAX_FRAME_0 = 488;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場から腕で敵を掴むまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 登場から腕で敵を掴むまで(ef_001b)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -55, 515.5 , 0 );
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

setDisp( spep_0 + 152 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 322 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 152 + OFFSET_X, 1, 2 );
changeAnime( spep_0 + 216 + OFFSET_X, 1, 102 );

setMoveKey( spep_0 + 152 + OFFSET_X, 1, -632.5, -1140.3 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -632.5, -1140.3 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -574.1, -956.9 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -574.1, -956.9 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -522.5, -794.7 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -522.5, -794.7 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -477.3, -652.5 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -477.3, -652.5 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -438.1, -529.2 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -438.1, -529.2 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -404.6, -424 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -404.6, -424 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -376.7, -336.1 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -376.7, -336.1 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -354, -264.7 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -354, -264.7 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -336.4, -209.4 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -336.4, -209.4 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -323.7, -169.5 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -323.7, -169.5 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -322.4, -165.4 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -322.4, -165.4 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -321.1, -161.6 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -321.1, -161.6 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -320, -158.1 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -320, -158.1 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -318.9, -154.8 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -318.9, -154.8 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -318, -151.7 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -318, -151.7 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -317.1, -148.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -317.1, -148.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -316.2, -146.3 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -316.2, -146.3 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -315.5, -144 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -315.5, -144 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -314.8, -141.9 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -314.8, -141.9 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -314.2, -140 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -314.2, -140 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -313.1, -140 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -313.1, -140 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -310.6, -140 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -310.6, -140 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -307.5, -140 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -307.5, -140 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -304, -140 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -304, -140 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -300.2, -140 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -300.2, -140 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -296.2, -140 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -296.2, -140 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -292.1, -140 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -292.1, -140 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -288, -140.1 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -288, -140.1 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -283.8, -140.1 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -283.8, -140.1 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -279.6, -140.1 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -279.6, -140.1 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -275.4, -140.1 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -275.4, -140.1 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -271.3, -140.1 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -271.3, -140.1 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -267.1, -140.1 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -267.1, -140.1 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -257.8, -140.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -257.8, -140.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -248.4, -140.1 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -248.4, -140.1 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -238.9, -140.1 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -238.9, -140.1 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -229.6, -140.1 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -229.6, -140.1 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -220.6, -140.1 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -220.6, -140.1 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -211.8, -140.1 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -211.8, -140.1 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -203.4, -140 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -203.4, -140 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -195.5, -140 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -195.5, -140 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -188.1, -140 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -188.1, -140 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -181.2, -140 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -181.2, -140 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -174.9, -140 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -174.9, -140 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -169.3, -140 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -169.3, -140 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -164.3, -140 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -164.3, -140 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -160, -140 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -160, -140 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -156.5, -140 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -156.5, -140 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -153.7, -140 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -153.7, -140 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -151.6, -140 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -151.6, -140 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -150.4, -140 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -150.4, -140 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -150, -140 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -150, -140 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -159.1, -140 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -159.1, -140 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -178, -140 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -178, -140 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -192.3, -140 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -192.3, -140 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -201.2, -140 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -201.2, -140 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -206.5, -140 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -206.5, -140 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -209.2, -140 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -209.2, -140 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -210, -140 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -210, -140 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -206.2, -140 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -206.2, -140 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -198.6, -140 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -198.6, -140 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -194.2, -140 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -194.2, -140 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -194.2, -100 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -194.2, -100 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -194.2, -140 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -194.2, -140 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -194.2, -130 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -194.2, -130 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -194.2, -120 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -194.2, -120 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -194.2, -130 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -194.2, -130 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -194.2, -140 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -194.2, -140 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -268.2, -282.9 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -268.2, -282.9 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -342.3, -425.8 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -342.3, -425.8 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -416.3, -568.7 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -416.3, -568.7 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -490.4, -711.6 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -490.4, -711.6 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -564.4, -854.5 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -564.4, -854.5 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -638.5, -997.4 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -638.5, -997.4 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -712.5, -1140.3 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -712.5, -1140.3 , 0 );

setScaleKey( spep_0 + 152 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 8.81, 8.81 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 8.81, 8.81 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 7.75, 7.75 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 7.75, 7.75 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 6.83, 6.83 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 6.83, 6.83 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 6.03, 6.03 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 6.03, 6.03 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 5.35, 5.35 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 5.35, 5.35 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 3.69, 3.69 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 3.66, 3.66 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 3.62, 3.62 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 3.54, 3.54 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 5.36, 5.36 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 5.36, 5.36 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 6.29, 6.29 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 6.29, 6.29 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 7.21, 7.21 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 7.21, 7.21 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 8.14, 8.14 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 8.14, 8.14 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 9.07, 9.07 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 9.07, 9.07 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 10, 10 );

setRotateKey( spep_0 + 152 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, 0 );

--敵の動き2

setDisp( spep_0 + 438 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 490 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 438 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 476 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 438 + OFFSET_X, 1, -785, -210 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, -785, -210 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, -660.8, -184.4 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -660.8, -184.4 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, -545.2, -160.5 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, -545.2, -160.5 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, -443.5, -139.5 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, -443.5, -139.5 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, -358.4, -122 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, -358.4, -122 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, -290, -107.9 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, -290, -107.9 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -237.5, -97 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -237.5, -97 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -199.3, -89.1 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, -199.3, -89.1 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, -173.8, -83.9 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, -173.8, -83.9 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -159.5, -80.9 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -159.5, -80.9 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -155, -80 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -155, -80 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -154.9, -100 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -154.9, -100 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -154.3, -98.8 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -154.3, -98.8 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -154.9, -100 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -154.9, -100 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -154.4, -99.1 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, -154.4, -99.1 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -154.9, -100 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, -154.9, -100 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, -154.8, -99.9 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, -154.8, -99.9 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, -154.8, -99.7 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, -154.8, -99.7 , 0 );

setScaleKey( spep_0 + 438 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 475 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 476 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 477 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 479 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_0 + 480 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 481 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 482 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 483 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 484 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 485 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 486 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 487 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 488 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 490 + OFFSET_X, 1, 1.36, 1.36 );

setRotateKey( spep_0 + 438 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 475 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 476 + OFFSET_X, 1, 25 );
setRotateKey( spep_0 + 490 + OFFSET_X, 1, 25 );

-- ** 音 ** --

--溜め
SE002 = playSeVer2( spep_0 + 112, 1371, "",spep_0 + 500, 8, 12, -1);
setSeVolumeByWorkId( spep_0 + 112, SE002, 58 );
setStartTimeMs( SE002,  1533 );
setPitch( spep_0 + 112, SE002, -900 );
setTimeStretch( SE002, 0.4, 30, 4 );
SE003 = playSeVer2( spep_0 + 28, 1043, "",spep_0 + 118, 0, 20, -1);
SE004 = playSeVer2( spep_0 + 28, 1243, "",spep_0 + 422, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 28, SE004, 79 );
SE005 = playSeVer2( spep_0 + 32, 1147, "",spep_0 + 120, 0, 20, -1);
SE006 = playSeVer2( spep_0 + 32, 1038, "", 0, 0, 0, -1);

--ズーム
SE007 = playSeVer2( spep_0 + 60, 1072, "", 0, 0, 0, -1);

--増える
SE008 = playSeVer2( spep_0 + 106, 1354, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE008, 72 );
SE009 = playSeVer2( spep_0 + 106, 1235, "", 0, 0, 0, -1);

--さらに増える
SE010 = playSeVer2( spep_0 + 174, 1453, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 174, SE010, 60 );
SE011 = playSeVer2( spep_0 + 174, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 174, SE011, 47 );
setTimeStretch( SE011, 1.24, 30, 4 );
SE012 = playSeVer2( spep_0 + 174, 1497, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 174, 1450, "",spep_0 + 270, 0, 22, -1);

--敵驚く
SE014 = playSeVer2( spep_0 + 276, 48, "", 0, 0, 0, -1);

--画面遷移
SE015 = playSeVer2( spep_0 + 328, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 328, SE015, 75 );

--腕伸ばす
SE016 = playSeVer2( spep_0 + 388, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 388, SE016, 68 );
SE017 = playSeVer2( spep_0 + 392, 1326, "",spep_0 + 494, 0, 14, -1);
SE018 = playSeVer2( spep_0 + 392, 1214, "",spep_0 + 494, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 392, SE018, 135 );
SE019 = playSeVer2( spep_0 + 404, 1202, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 440; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
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

--巻きつく
SE020 = playSeVer2( spep_0 + 446, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 446, SE020, 140 );
SE021 = playSeVer2( spep_0 + 456, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 456, SE021, 130 );
SE022 = playSeVer2( spep_0 + 464, 1153, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --488F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--発射前溜め
SE024 = playSeVer2( spep_1 + 88, 1148, "",spep_2 + 50, 0, 14, -1);
SE025 = playSeVer2( spep_1 + 88, 1038, "", 0, 0, 0, -1);

-------------------------------------------------
-- 魔貫光殺砲から爆発
-------------------------------------------------
MAX_FRAME_2 = 300;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); -- 魔貫光殺砲から爆発(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --

--発射前溜め
SE026 = playSeVer2( spep_2 + 16, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 16, SE026, 79 );
SE027 = playSeVer2( spep_2 + 22, 1147, "",spep_2 + 116, 0, 32, -1);

--魔貫光殺砲発射
SE028 = playSeVer2( spep_2 + 78, 1177, "",spep_2 + 158, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 78, SE028, 71 );
SE029 = playSeVer2( spep_2 + 78, 1312, "",spep_2 + 136, 0, 20, -1);
SE030 = playSeVer2( spep_2 + 78, 1212, "",spep_2 + 160, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 78, SE030, 68 );
SE031 = playSeVer2( spep_2 + 78, 1249, "",spep_2 + 162, 0, 26, -1);
SE032 = playSeVer2( spep_2 + 82, 1256, "", 0, 0, 0, -1);

--爆発
SE033 = playSeVer2( spep_2 + 130, 1024, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 166, 1159, "",spep_2 + 360, 0, 90, -1);
SE035 = playSeVer2( spep_2 + 190, 1067, "", 0, 0, 0, -1);

--溜め2
SE041 = playSeVer2( spep_0 + 108, 1243, "",spep_0 + 422, 4, 18, -1);
setSeVolumeByWorkId( spep_0 + 108, SE041, 79 );
SE042 = playSeVer2( spep_0 + 176, 1243, "",spep_0 + 422, 4, 18, -1);
setSeVolumeByWorkId( spep_0 + 176, SE042, 79 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 146); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 300F


end
