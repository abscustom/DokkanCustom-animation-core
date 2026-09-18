--1031590:LR_超サイヤ人孫悟飯(青年期)+超サイヤ人トランクス(幼年期)&超サイヤ人孫悟天(幼年期)_超必殺技：魔閃光
--sp_effect_a1_00499
--sp2904

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 163992;  -- 蹴り〜蹴り〜気だめ ef_001
SP_01b = 163993;  -- 蹴り〜蹴り〜気だめ ef_001b
SP_02 = 163994;  -- 魔閃光〜着弾 ef_002
SP_02b = 163995;  -- 魔閃光〜着弾 ef_002b


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

setAlphaKey( 0, 1, 255 );

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 蹴り〜蹴り〜気だめ
-------------------------------------------------
MAX_FRAME_0 = 688;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 蹴り〜蹴り〜気だめ(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 蹴り〜蹴り〜気だめ(ef_001b)
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
spep_x = spep_0 + 12;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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

x = 50;
y = -90;

setDisp( spep_0 + 152 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 318 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 152 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 270 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 152 + OFFSET_X, 1, -11, -755.4 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -11, -755.4 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -11, -685.3 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -11, -685.3 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -11, -585.6 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -11, -585.6 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -11, -426.4 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -11, -426.4 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -11, -178.1 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -11, -178.1 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 7.7, 172.4 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 7.7, 172.4 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -9.8, 165.7 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -9.8, 165.7 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -11, 192.9 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -11, 192.9 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 7.7, 178.3 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 7.7, 178.3 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -9.8, 171.6 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -9.8, 171.6 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 1.7, 185.9 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 1.7, 185.9 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -11, 200.7 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -11, 200.7 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 7.7, 186.1 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 7.7, 186.1 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -9.8, 179.5 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -9.8, 179.5 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 1.7, 201 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 1.7, 201 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -11, -755.4 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -11, -755.4 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -11, -685.3 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -11, -685.3 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -11, -585.6 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -11, -585.6 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -11, -426.4 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -11, -426.4 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -11, -178.1 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -11, -178.1 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 7.7, 172.4 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 7.7, 172.4 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -9.8, 165.7 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -9.8, 165.7 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -11, 192.9 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -11, 192.9 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 7.7, 178.3 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 7.7, 178.3 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -9.8, 171.6 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -9.8, 171.6 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 1.7, 185.9 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 1.7, 185.9 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -11, 200.7 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -11, 200.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 7.7, 186.1 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 7.7, 186.1 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -9.8, 179.5 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -9.8, 179.5 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 1.7, 201 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 1.7, 201 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -11, -755.4 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -11, -755.4 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -11, -685.3 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -11, -685.3 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -11, -585.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -11, -585.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -11, -426.4 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -11, -426.4 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -11, -178.1 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -11, -178.1 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 7.7, 172.4 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 7.7, 172.4 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -9.8, 165.7 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -9.8, 165.7 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -11, 192.9 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -11, 192.9 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 7.7, 178.3 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 7.7, 178.3 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -9.8, 171.6 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -9.8, 171.6 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 1.7, 185.9 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 1.7, 185.9 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -11, 200.7 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -11, 200.7 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 7.7, 186.1 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 7.7, 186.1 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -9.8, 179.5 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -9.8, 179.5 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -11, 213.9 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -11, 213.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -11, 223.2 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -11, 223.2 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -11, 232.4 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -11, 232.4 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -11, 241.6 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -11, 241.6 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -11, 250.9 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -11, 250.9 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -11, 260.1 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -11, 260.1 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -11, 269.4 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -11, 269.4 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -11, 278.6 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -11, 278.6 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -11, 287.9 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -11, 287.9 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -11, 297.1 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -11, 297.1 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -11, 306.3 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -11, 306.3 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -11, 315.6 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -11, 315.6 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -11, 324.8 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -11, 324.8 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -11, 334.1 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -11, 334.1 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -11, 343.3 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -11, 343.3 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -246.9 + x, -321.5 + y, 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -246.9 + x, -321.5 + y , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -243.8 + x, -320 + y , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -243.8 + x, -320 + y , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -240.8 + x, -318.5 + y , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -240.8 + x, -318.5 + y , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -238 + x, -317.1 + y , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -238 + x, -317.1 + y , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -235.3 + x, -315.8 + y , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -235.3 + x, -315.8 + y , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -232.7 + x, -314.6 + y , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -232.7 + x, -314.6 + y , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -230.3 + x, -313.5 + y , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -230.3 + x, -313.5 + y , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -228.1 + x, -312.4 + y , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -228.1 + x, -312.4 + y , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -226 + x, -311.3 + y , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -226 + x, -311.3 + y , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -224 + x, -310.4 + y , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -224 + x, -310.4 + y , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -222.2 + x, -309.5 + y , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -222.2 + x, -309.5 + y , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -220.5 + x, -308.7 + y , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -220.5 + x, -308.7 + y , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -219 + x, -308 + y , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -219 + x, -308 + y , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -217.6 + x, -307.3 + y , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -217.6 + x, -307.3 + y , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -216.4 + x, -306.7 + y , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -216.4 + x, -306.7 + y , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -215.3 + x, -306.2 + y , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -215.3 + x, -306.2 + y , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -214.4 + x, -305.7 + y , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -214.4 + x, -305.7 + y , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -213.6 + x, -305.3 + y , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -213.6 + x, -305.3 + y , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -212.9 + x, -305 + y , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -212.9 + x, -305 + y , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -212.4 + x, -304.8 + y , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -212.4 + x, -304.8 + y , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -212.1 + x, -304.6 + y , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -212.1 + x, -304.6 + y , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -211.8 + x, -304.5 + y , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -211.8 + x, -304.5 + y , 0 );

setScaleKey( spep_0 + 152 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 3.47, 3.47 );

setRotateKey( spep_0 + 152 + OFFSET_X, 1, -47 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, -47 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, -38 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, -38 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -36.6 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, -36.6 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, -36.4 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -36.4 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -36 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -36 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -35.6 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -35.6 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, -35 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -35 );

setAlphaKey( spep_0 + 152 + OFFSET_X, 1, 255 );

--敵の動き2

setDisp( spep_0 + 364 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 440 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 364 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 412 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 364 + OFFSET_X, 1, 21.6, -111.5 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 21.6, -111.5 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -0.7, -37.7 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -0.7, -37.7 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -29, 54.5 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -29, 54.5 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 51.8, 78.1 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 51.8, 78.1 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -43.5, 94.2 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -43.5, 94.2 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -60.8, 36.2 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -60.8, 36.2 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 21.2, 127.5 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 21.2, 127.5 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -76, 88.4 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -76, 88.4 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 8.2, 67.5 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 8.2, 67.5 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -17.4, 149 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -17.4, 149 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -33, 76.5 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -33, 76.5 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -34.1, 80.4 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -34.1, 80.4 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -35.1, 83.6 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -35.1, 83.6 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -35.8, 86.3 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -35.8, 86.3 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -36.5, 88.5 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -36.5, 88.5 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -37.1, 90.4 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -37.1, 90.4 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -37.5, 92.1 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -37.5, 92.1 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -37.9, 93.5 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -37.9, 93.5 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -38.3, 94.8 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -38.3, 94.8 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -38.7, 96 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -38.7, 96 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -38.9, 97.1 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -38.9, 97.1 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 384.5, 753.8 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 384.5, 753.8 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 365.1, 696.1 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 365.1, 696.1 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 345.7, 638.5 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 345.7, 638.5 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 326.4, 580.9 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 326.4, 580.9 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 307, 523.3 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 307, 523.3 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 232.8, 306.3 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 232.8, 306.3 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 158.7, 89.4 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 158.7, 89.4 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 84.5, -127.6 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 84.5, -127.6 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 10.3, -344.6 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 10.3, -344.6 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 29.7, -322.9 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 29.7, -322.9 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 36.6, -363.4 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 36.6, -363.4 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 4.6, -339.2 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 4.6, -339.2 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 41.3, -334.9 , 0 );

setScaleKey( spep_0 + 364 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 437 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 438 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 439 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 1.19, 1.19 );

setRotateKey( spep_0 + 364 + OFFSET_X, 1, -24 );
setRotateKey( spep_0 + 365 + OFFSET_X, 1, -24 );
setRotateKey( spep_0 + 366 + OFFSET_X, 1, -24.3 );
setRotateKey( spep_0 + 367 + OFFSET_X, 1, -24.3 );
setRotateKey( spep_0 + 368 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_0 + 369 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_0 + 370 + OFFSET_X, 1, -24.5 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, -24.5 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, -24.9 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, -24.9 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, -25 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, -25 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, -66.2 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, -66.2 );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, -65.9 );
setRotateKey( spep_0 + 415 + OFFSET_X, 1, -65.9 );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, -65.6 );
setRotateKey( spep_0 + 417 + OFFSET_X, 1, -65.6 );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, -65.3 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, -65.3 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, -65 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, -65 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, -63.5 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, -63.5 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, -62 );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, -62 );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, -60.5 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, -60.5 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, -59 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, -59 );

setAlphaKey( spep_0 + 440 + OFFSET_X, 1, 255 );

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 202, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--構える
SE004 = playSeVer2( spep_0 + 14, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE004, 150 );
SE005 = playSeVer2( spep_0 + 28, 1006, "", 0, 0, 0, -1);

--ダッシュ
SE006 = playSeVer2( spep_0 + 118, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 118, 1117, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 118, 1277, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 140; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
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

--蹴り上げる
SE009 = playSeVer2( spep_0 + 152, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE009, 86 );
SE010 = playSeVer2( spep_0 + 152, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE010, 86 );
SE011 = playSeVer2( spep_0 + 172, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 172, SE011, 58 );
SE012 = playSeVer2( spep_0 + 182, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 202, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 202, SE013, 56 );
SE014 = playSeVer2( spep_0 + 210, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 210, SE014, 71 );
SE015 = playSeVer2( spep_0 + 210, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 210, SE015, 47 );

--瞬間移動
SE016 = playSeVer2( spep_0 + 268, 1109, "", 0, 0, 0, -1);

--振りかぶる
SE017 = playSeVer2( spep_0 + 302, 9, "",spep_0 + 372, 20, 40, -1);
setSeVolumeByWorkId( spep_0 + 302, SE017, 73 );
SE018 = playSeVer2( spep_0 + 306, 1116, "",spep_0 + 352, 0, 22, -1);
SE019 = playSeVer2( spep_0 + 344, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE020 = playSeVer2( spep_0 + 360, 1120, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 360, 1187, "", 0, 0, 0, -1);

--飛んでいく
SE022 = playSeVer2( spep_0 + 376, 1121, "",spep_0 + 454, 0, 28, -1);

--地面激突
SE023 = playSeVer2( spep_0 + 426, 1159, "",spep_0 + 668, 0, 178, -1);
setSeVolumeByWorkId( spep_0 + 426, SE023, 82 );

--気ダメ
SE024 = playSeVer2( spep_0 + 488, 1503, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 488, 1035, "", 0, 0, 0, -1);

--オーラ
SE026 = playSeVer2( spep_0 + 498, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 498, SE026, 63 );
SE027 = playSeVer2( spep_0 + 522, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 522, SE027, 63 );
SE028 = playSeVer2( spep_0 + 546, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 546, SE028, 63 );

--気弾溜め
SE029 = playSeVer2( spep_0 + 546, 1328, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 546, SE029, 129 );
SE030 = playSeVer2( spep_0 + 560, 1490, "",spep_0 + 702, 0, 16, -1);

--オーラ
SE031 = playSeVer2( spep_0 + 570, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 570, SE031, 63 );

--気弾溜め
SE032 = playSeVer2( spep_0 + 570, 1037, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 570, SE032, 65 );

--オーラ
SE033 = playSeVer2( spep_0 + 594, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 594, SE033, 63 );
SE034 = playSeVer2( spep_0 + 618, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 618, SE034, 63 );
SE035 = playSeVer2( spep_0 + 642, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 642, SE035, 63 );
SE036 = playSeVer2( spep_0 + 666, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 666, SE036, 63 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --688F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--気弾発射
SE038 = playSeVer2( spep_1 + 84, 1027, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_1 + 84, 1146, "",spep_1 + 196, 0, 36, -1);
SE040 = playSeVer2( spep_1 + 84, 1133, "", 0, 0, 0, -1);

-------------------------------------------------
-- 魔閃光〜着弾
-------------------------------------------------
MAX_FRAME_2 = 222;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 魔閃光〜着弾(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 魔閃光〜着弾(ef_002b)
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

setDisp( spep_2 + 34 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 118 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 34 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 34 + OFFSET_X, 1, -16.1, -194.2 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -16.1, -194.2 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -16.1, -195.5 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -16.1, -195.5 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -16.1, -196.9 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -16.1, -196.9 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -16.1, -198.3 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -16.1, -198.3 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -16.1, -199.6 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -16.1, -199.6 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -16, -201 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -16, -201 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -16, -202.4 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -16, -202.4 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -16, -203.7 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -16, -203.7 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -16, -205.1 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -16, -205.1 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -16, -206.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -16, -206.5 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -16, -207.8 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -16, -207.8 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -16, -209.2 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -16, -209.2 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -16, -210.6 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -16, -210.6 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -16, -211.9 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -16, -211.9 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -15.9, -213.3 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -15.9, -213.3 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -15.9, -214.6 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -15.9, -214.6 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -15.9, -216 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -15.9, -216 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -15.9, -217.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -15.9, -217.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -15.9, -218.7 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -15.9, -218.7 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -15.8, -220.1 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -15.8, -220.1 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -15.8, -221.5 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -15.8, -221.5 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -15.8, -222.8 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -15.8, -222.8 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -15.8, -224.2 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -15.8, -224.2 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 8.6, -229.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 8.6, -229.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -41.5, -226.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -41.5, -226.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 10.8, -226.4 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 10.8, -226.4 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -41.3, -224 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -41.3, -224 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 11.1, -224 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 11.1, -224 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -31.7, -230 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -31.7, -230 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 11.3, -221.6 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 11.3, -221.6 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -40.9, -243.2 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -40.9, -243.2 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 11.6, -219.3 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 11.6, -219.3 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -30.2, -242.3 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -30.2, -242.3 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 11.8, -216.9 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 11.8, -216.9 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, -40.3, -214.4 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -40.3, -214.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 12, -214.5 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 12, -214.5 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -29.7, -237.5 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -29.7, -237.5 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 12.3, -212.1 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 12.3, -212.1 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -39.9, -209.6 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -39.9, -209.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 12.5, -209.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 12.5, -209.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -29.3, -232.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -29.3, -232.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 12.6, -208.5 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 12.6, -208.5 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -39.6, -207.3 , 0 );

setScaleKey( spep_2 + 34 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.51, 1.51 );

setRotateKey( spep_2 + 34 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_2 + 35 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_2 + 36 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_2 + 38 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_2 + 39 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_2 + 40 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_2 + 41 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_2 + 42 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 45 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_2 + 46 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_2 + 49 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_2 + 50 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, -20.4 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, -20.4 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, -20.4 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, -20.6 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, -20.9 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, -20.9 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -20.9 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -21.8 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -21.8 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -21.9 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, -22.2 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -22.4 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -22.6 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -22.6 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -22.7 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -22.7 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -23.2 );

setBlendColor( spep_2 + 34 + OFFSET_X, 1, 3, 0.862, 0.758, 0.703, 0.5 );
setBlendColor( spep_2 + 90 + OFFSET_X, 1, 3, 1, 1, 0.776, 0.5 );
setBlendColor( spep_2 + 118 + OFFSET_X, 1, 3, 1, 1, 1, 0 );

setAlphaKey( spep_2 + 34 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 112 + OFFSET_X, 1, 200 );
setAlphaKey( spep_2 + 114 + OFFSET_X, 1, 150 );
setAlphaKey( spep_2 + 116 + OFFSET_X, 1, 100 );
setAlphaKey( spep_2 + 118 + OFFSET_X, 1, 255 );

-- ** 音 ** --

--爆発
SE041 = playSeVer2( spep_2 + 60, 1159, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 64, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 110); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 222F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 蹴り〜蹴り〜気だめ
-------------------------------------------------
MAX_FRAME_0 = 688;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 蹴り〜蹴り〜気だめ(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 蹴り〜蹴り〜気だめ(ef_001b)
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
spep_x = spep_0 + 12;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
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

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

--敵の動き1

x = -50;
y = -90;

setDisp( spep_0 + 152 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 318 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 152 + OFFSET_X, 1, 5 );
changeAnime( spep_0 + 270 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 152 + OFFSET_X, 1, 11, -755.4 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 11, -755.4 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 11, -685.3 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 11, -685.3 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 11, -585.6 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 11, -585.6 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 11, -426.4 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 11, -426.4 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 11, -178.1 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 11, -178.1 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -7.7, 172.4 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -7.7, 172.4 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 9.8, 165.7 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 9.8, 165.7 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 11, 192.9 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 11, 192.9 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -7.7, 178.3 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -7.7, 178.3 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 9.8, 171.6 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 9.8, 171.6 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -1.7, 185.9 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -1.7, 185.9 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 11, 200.7 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 11, 200.7 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -7.7, 186.1 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -7.7, 186.1 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 9.8, 179.5 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 9.8, 179.5 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -1.7, 201 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -1.7, 201 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 11, -755.4 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 11, -755.4 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 11, -685.3 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 11, -685.3 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 11, -585.6 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 11, -585.6 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 11, -426.4 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 11, -426.4 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 11, -178.1 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 11, -178.1 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -7.7, 172.4 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -7.7, 172.4 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 9.8, 165.7 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 9.8, 165.7 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 11, 192.9 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 11, 192.9 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -7.7, 178.3 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -7.7, 178.3 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 9.8, 171.6 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 9.8, 171.6 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -1.7, 185.9 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -1.7, 185.9 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 11, 200.7 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 11, 200.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -7.7, 186.1 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -7.7, 186.1 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 9.8, 179.5 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 9.8, 179.5 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -1.7, 201 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -1.7, 201 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 11, -755.4 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 11, -755.4 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 11, -685.3 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 11, -685.3 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 11, -585.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 11, -585.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 11, -426.4 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 11, -426.4 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 11, -178.1 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 11, -178.1 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -7.7, 172.4 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -7.7, 172.4 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 9.8, 165.7 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 9.8, 165.7 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 11, 192.9 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 11, 192.9 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -7.7, 178.3 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -7.7, 178.3 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 9.8, 171.6 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 9.8, 171.6 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -1.7, 185.9 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -1.7, 185.9 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 11, 200.7 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 11, 200.7 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -7.7, 186.1 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -7.7, 186.1 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 9.8, 179.5 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 9.8, 179.5 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 11, 213.9 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 11, 213.9 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 11, 223.2 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 11, 223.2 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 11, 232.4 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 11, 232.4 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 11, 241.6 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 11, 241.6 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 11, 250.9 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 11, 250.9 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 11, 260.1 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 11, 260.1 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 11, 269.4 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 11, 269.4 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 11, 278.6 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 11, 278.6 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 11, 287.9 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 11, 287.9 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 11, 297.1 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 11, 297.1 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 11, 306.3 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 11, 306.3 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 11, 315.6 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 11, 315.6 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 11, 324.8 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 11, 324.8 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 11, 334.1 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 11, 334.1 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 11, 343.3 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 11, 343.3 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 246.9 + x, -321.5 + y , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 246.9 + x, -321.5 + y , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 243.8 + x, -320 + y , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 243.8 + x, -320 + y , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 240.8 + x, -318.5 + y , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 240.8 + x, -318.5 + y , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 238 + x, -317.1 + y , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 238 + x, -317.1 + y , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 235.3 + x, -315.8 + y , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 235.3 + x, -315.8 + y , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 232.7 + x, -314.6 + y , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 232.7 + x, -314.6 + y , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 230.3 + x, -313.5 + y , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 230.3 + x, -313.5 + y , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 228.1 + x, -312.4 + y , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 228.1 + x, -312.4 + y , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 226 + x, -311.3 + y , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 226 + x, -311.3 + y , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 224 + x, -310.4 + y , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 224 + x, -310.4 + y , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 222.2 + x, -309.5 + y , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 222.2 + x, -309.5 + y , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 220.5 + x, -308.7 + y , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 220.5 + x, -308.7 + y , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 219 + x, -308 + y , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 219 + x, -308 + y , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 217.6 + x, -307.3 + y , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 217.6 + x, -307.3 + y , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 216.4 + x, -306.7 + y , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 216.4 + x, -306.7 + y , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 215.3 + x, -306.2 + y , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 215.3 + x, -306.2 + y , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 214.4 + x, -305.7 + y , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 214.4 + x, -305.7 + y , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 213.6 + x, -305.3 + y , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 213.6 + x, -305.3 + y , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 212.9 + x, -305 + y , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 212.9 + x, -305 + y , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 212.4 + x, -304.8 + y , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 212.4 + x, -304.8 + y , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 212.1 + x, -304.6 + y , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 212.1 + x, -304.6 + y , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 211.8 + x, -304.5 + y , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 211.8 + x, -304.5 + y , 0 );

setScaleKey( spep_0 + 152 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 3.47, 3.47 );

setRotateKey( spep_0 + 152 + OFFSET_X, 1, 47 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, 47 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 38 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 38 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 37.7 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 37.7 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, 37.2 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 36.8 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, 36.8 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, 36.4 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, 36.4 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, 36.2 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 36.2 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, 36 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, 36 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, 35.6 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, 35.6 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, 35.1 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, 35.1 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, 35 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, 35 );

setAlphaKey( spep_0 + 152 + OFFSET_X, 1, 255 );

--敵の動き2

setDisp( spep_0 + 364 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 440 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 364 + OFFSET_X, 1, 5 );
changeAnime( spep_0 + 412 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 364 + OFFSET_X, 1, -21.6, -111.5 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -21.6, -111.5 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 0.7, -37.7 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 0.7, -37.7 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 29, 54.5 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 29, 54.5 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -51.8, 78.1 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -51.8, 78.1 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 43.5, 94.2 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 43.5, 94.2 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 60.8, 36.2 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 60.8, 36.2 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -21.2, 127.5 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -21.2, 127.5 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 76, 88.4 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 76, 88.4 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -8.2, 67.5 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -8.2, 67.5 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 17.4, 149 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 17.4, 149 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 33, 76.5 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 33, 76.5 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 34.1, 80.4 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 34.1, 80.4 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 35.1, 83.6 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 35.1, 83.6 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 35.8, 86.3 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 35.8, 86.3 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 36.5, 88.5 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 36.5, 88.5 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 37.1, 90.4 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 37.1, 90.4 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 37.5, 92.1 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 37.5, 92.1 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 37.9, 93.5 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 37.9, 93.5 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 38.3, 94.8 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 38.3, 94.8 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 38.7, 96 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 38.7, 96 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 38.9, 97.1 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 38.9, 97.1 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -384.5, 753.8 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -384.5, 753.8 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -365.1, 696.1 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -365.1, 696.1 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -345.7, 638.5 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -345.7, 638.5 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -326.4, 580.9 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -326.4, 580.9 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -307, 523.3 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -307, 523.3 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -232.8, 306.3 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -232.8, 306.3 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -158.7, 89.4 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -158.7, 89.4 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -84.5, -127.6 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -84.5, -127.6 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -10.3, -344.6 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, -10.3, -344.6 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -29.7, -322.9 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, -29.7, -322.9 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -36.6, -363.4 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, -36.6, -363.4 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, -4.6, -339.2 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, -4.6, -339.2 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, -41.3, -334.9 , 0 );

setScaleKey( spep_0 + 364 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 435 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 437 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 438 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 439 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 440 + OFFSET_X, 1, 1.19, 1.19 );

setRotateKey( spep_0 + 364 + OFFSET_X, 1, 24 );
setRotateKey( spep_0 + 365 + OFFSET_X, 1, 24 );
setRotateKey( spep_0 + 366 + OFFSET_X, 1, 24.3 );
setRotateKey( spep_0 + 367 + OFFSET_X, 1, 24.3 );
setRotateKey( spep_0 + 368 + OFFSET_X, 1, 24.4 );
setRotateKey( spep_0 + 369 + OFFSET_X, 1, 24.4 );
setRotateKey( spep_0 + 370 + OFFSET_X, 1, 24.5 );
setRotateKey( spep_0 + 371 + OFFSET_X, 1, 24.5 );
setRotateKey( spep_0 + 372 + OFFSET_X, 1, 24.6 );
setRotateKey( spep_0 + 373 + OFFSET_X, 1, 24.6 );
setRotateKey( spep_0 + 374 + OFFSET_X, 1, 24.7 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, 24.7 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, 24.8 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, 24.8 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, 24.9 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, 24.9 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, 25 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, 25 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, 66.2 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, 66.2 );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, 65.9 );
setRotateKey( spep_0 + 415 + OFFSET_X, 1, 65.9 );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, 65.6 );
setRotateKey( spep_0 + 417 + OFFSET_X, 1, 65.6 );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, 65.3 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, 65.3 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, 65 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, 65 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, 63.5 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, 63.5 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, 62 );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, 62 );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, 60.5 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, 60.5 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, 59 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, 59 );

setAlphaKey( spep_0 + 440 + OFFSET_X, 1, 255 );

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 202, 0, 48, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--構える
SE004 = playSeVer2( spep_0 + 14, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE004, 150 );
SE005 = playSeVer2( spep_0 + 28, 1006, "", 0, 0, 0, -1);

--ダッシュ
SE006 = playSeVer2( spep_0 + 118, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 118, 1117, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 118, 1277, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 140; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
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

--蹴り上げる
SE009 = playSeVer2( spep_0 + 152, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE009, 86 );
SE010 = playSeVer2( spep_0 + 152, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 152, SE010, 86 );
SE011 = playSeVer2( spep_0 + 172, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 172, SE011, 58 );
SE012 = playSeVer2( spep_0 + 182, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 202, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 202, SE013, 56 );
SE014 = playSeVer2( spep_0 + 210, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 210, SE014, 71 );
SE015 = playSeVer2( spep_0 + 210, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 210, SE015, 47 );

--瞬間移動
SE016 = playSeVer2( spep_0 + 268, 1109, "", 0, 0, 0, -1);

--振りかぶる
SE017 = playSeVer2( spep_0 + 302, 9, "",spep_0 + 372, 20, 40, -1);
setSeVolumeByWorkId( spep_0 + 302, SE017, 73 );
SE018 = playSeVer2( spep_0 + 306, 1116, "",spep_0 + 352, 0, 22, -1);
SE019 = playSeVer2( spep_0 + 344, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE020 = playSeVer2( spep_0 + 360, 1120, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 360, 1187, "", 0, 0, 0, -1);

--飛んでいく
SE022 = playSeVer2( spep_0 + 376, 1121, "",spep_0 + 454, 0, 28, -1);

--地面激突
SE023 = playSeVer2( spep_0 + 426, 1159, "",spep_0 + 668, 0, 178, -1);
setSeVolumeByWorkId( spep_0 + 426, SE023, 82 );

--気ダメ
SE024 = playSeVer2( spep_0 + 488, 1503, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 488, 1035, "", 0, 0, 0, -1);

--オーラ
SE026 = playSeVer2( spep_0 + 498, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 498, SE026, 63 );
SE027 = playSeVer2( spep_0 + 522, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 522, SE027, 63 );
SE028 = playSeVer2( spep_0 + 546, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 546, SE028, 63 );

--気弾溜め
SE029 = playSeVer2( spep_0 + 546, 1328, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 546, SE029, 129 );
SE030 = playSeVer2( spep_0 + 560, 1490, "",spep_0 + 702, 0, 16, -1);

--オーラ
SE031 = playSeVer2( spep_0 + 570, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 570, SE031, 63 );

--気弾溜め
SE032 = playSeVer2( spep_0 + 570, 1037, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 570, SE032, 65 );

--オーラ
SE033 = playSeVer2( spep_0 + 594, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 594, SE033, 63 );
SE034 = playSeVer2( spep_0 + 618, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 618, SE034, 63 );
SE035 = playSeVer2( spep_0 + 642, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 642, SE035, 63 );
SE036 = playSeVer2( spep_0 + 666, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 666, SE036, 63 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --688F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--気弾発射
SE038 = playSeVer2( spep_1 + 84, 1027, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_1 + 84, 1146, "",spep_1 + 196, 0, 36, -1);
SE040 = playSeVer2( spep_1 + 84, 1133, "", 0, 0, 0, -1);

-------------------------------------------------
-- 魔閃光〜着弾
-------------------------------------------------
MAX_FRAME_2 = 222;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 魔閃光〜着弾(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 魔閃光〜着弾(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 34 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 118 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 34 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 34 + OFFSET_X, 1, 16.1, -194.2 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 16.1, -194.2 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 16.1, -195.5 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 16.1, -195.5 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 16.1, -196.9 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 16.1, -196.9 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 16.1, -198.3 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 16.1, -198.3 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 16.1, -199.6 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 16.1, -199.6 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 16, -201 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 16, -201 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 16, -202.4 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 16, -202.4 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 16, -203.7 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 16, -203.7 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 16, -205.1 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 16, -205.1 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 16, -206.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 16, -206.5 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 16, -207.8 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 16, -207.8 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 16, -209.2 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 16, -209.2 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 16, -210.6 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 16, -210.6 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 16, -211.9 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 16, -211.9 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 15.9, -213.3 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 15.9, -213.3 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 15.9, -214.6 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 15.9, -214.6 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 15.9, -216 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 15.9, -216 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 15.9, -217.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 15.9, -217.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 15.9, -218.7 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 15.9, -218.7 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 15.8, -220.1 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 15.8, -220.1 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 15.8, -221.5 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 15.8, -221.5 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 15.8, -222.8 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 15.8, -222.8 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 15.8, -224.2 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 15.8, -224.2 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -8.6, -229.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -8.6, -229.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 41.5, -226.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 41.5, -226.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -10.8, -226.4 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -10.8, -226.4 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 41.3, -224 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 41.3, -224 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -11.1, -224 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -11.1, -224 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 31.7, -230 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 31.7, -230 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -11.3, -221.6 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -11.3, -221.6 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 40.9, -243.2 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 40.9, -243.2 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -11.6, -219.3 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -11.6, -219.3 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 30.2, -242.3 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 30.2, -242.3 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -11.8, -216.9 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -11.8, -216.9 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 40.3, -214.4 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 40.3, -214.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -12, -214.5 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -12, -214.5 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 29.7, -237.5 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 29.7, -237.5 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -12.3, -212.1 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -12.3, -212.1 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 39.9, -209.6 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 39.9, -209.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -12.5, -209.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -12.5, -209.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 29.3, -232.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 29.3, -232.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -12.6, -208.5 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -12.6, -208.5 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 39.6, -207.3 , 0 );

setScaleKey( spep_2 + 34 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.51, 1.51 );

setRotateKey( spep_2 + 34 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_2 + 35 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_2 + 36 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_2 + 38 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_2 + 39 + OFFSET_X, 1, 19.2 );
setRotateKey( spep_2 + 40 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_2 + 41 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_2 + 42 + OFFSET_X, 1, 19.4 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, 19.4 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_2 + 45 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_2 + 46 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, 19.5 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_2 + 49 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_2 + 50 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, 19.7 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, 20 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, 20.1 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, 20.2 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, 20.2 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, 20.4 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, 20.3 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, 20.4 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, 20.4 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, 20.6 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, 20.7 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, 20.9 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, 20.9 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, 20.9 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 21 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 21 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 21.1 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 21.1 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 21.3 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 21.3 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 21.4 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 21.4 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 21.5 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 21.5 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, 21.7 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 22.1 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 22.2 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 22.2 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 22.3 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 22.4 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 22.6 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, 22.6 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, 23 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, 22.9 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, 23.1 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, 23.1 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, 23.2 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, 23.2 );

setBlendColor( spep_2 + 34 + OFFSET_X, 1, 3, 0.862, 0.758, 0.703, 0.5 );
setBlendColor( spep_2 + 90 + OFFSET_X, 1, 3, 1, 1, 0.776, 0.5 );
setBlendColor( spep_2 + 118 + OFFSET_X, 1, 3, 1, 1, 1, 0 );

setAlphaKey( spep_2 + 34 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 112 + OFFSET_X, 1, 200 );
setAlphaKey( spep_2 + 114 + OFFSET_X, 1, 150 );
setAlphaKey( spep_2 + 116 + OFFSET_X, 1, 100 );
setAlphaKey( spep_2 + 118 + OFFSET_X, 1, 255 );

-- ** 音 ** --

--爆発
SE041 = playSeVer2( spep_2 + 60, 1159, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 64, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 110); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 222F



end
