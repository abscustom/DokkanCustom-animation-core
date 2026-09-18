--1031500:LR_超一星龍_超必殺技：秒殺魔光弾
--sp_effect_a1_00494
--sp2887

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163895;  --ef_001  開幕〜地面に激突する
SP_01b = 163896;  --ef_001b 開幕〜地面に激突する
SP_02  = 163899;  --ef_002  気弾を溜めて放つ〜フィニッシュ
SP_02b = 163900;  --ef_002b 気弾を溜めて放つ〜フィニッシュ
SP_03  = 163902;  --ef_003  全体攻撃
SP_03b = 163903;  --ef_003b 全体攻撃

--エフェクト(敵)
SP_01r  = 163897;  --ef_001r  開幕〜地面に激突する
SP_01br = 163898;  --ef_001br 開幕〜地面に激突する
SP_02r  = 163901;  --ef_002r  気弾を溜めて放つ〜フィニッシュ


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

--「1体目（初回時）の演出」で冒頭に敵表示なし、
--「2体目以降の演出」では冒頭に敵が表示されている場合は
--こちらの敵側の動きはコメントアウトする

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
]]
ENABLE_AUTO_TIME_STRETCH(0.7);

OFFSET_X = -1;

if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時

--テンプレ構文(敵の初期化)
changeAnime( 0, 1, 100);
setDisp( 0, 1, 0);

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

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜地面に激突する
-------------------------------------------------
MAX_FRAME_0 = 388;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕〜地面に激突する(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕〜地面に激突する(ef_001b)
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
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
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
]]
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 124 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 308 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 124 + OFFSET_X, 1, 1 );
changeAnime( spep_0 + 144 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 280 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 124 + OFFSET_X, 1, -91.9, 104.3 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -91.9, 104.3 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -168.4, 209.6 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -168.4, 209.6 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -294.7, 366.8 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -294.7, 366.8 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -231.5, 288.2 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -231.5, 288.2 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -168.4, 209.6 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -168.4, 209.6 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -250.5, 386.4 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -250.5, 386.4 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -179.1, 222.3 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -179.1, 222.3 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -274.1, 267.2 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -274.1, 267.2 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -204.5, 267 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -204.5, 267 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -241.7, 282.4 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -241.7, 282.4 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -271, 330.5 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -271, 330.5 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -258.9, 318.9 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -258.9, 318.9 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -263.4, 330.5 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -263.4, 330.5 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -271, 325.4 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -271, 325.4 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -272, 333.5 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -272, 333.5 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -266.4, 328.4 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -266.4, 328.4 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -267.4, 336.4 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -267.4, 336.4 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -271.6, 334.4 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -271.6, 334.4 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -272.5, 335.7 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -272.5, 335.7 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -273.3, 336.9 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -273.3, 336.9 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -274.1, 338.1 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -274.1, 338.1 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -274.9, 339.2 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -274.9, 339.2 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -275.6, 340.3 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -275.6, 340.3 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -276.3, 341.3 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -276.3, 341.3 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -276.9, 342.2 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -276.9, 342.2 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -277.5, 343.1 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -277.5, 343.1 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -278.1, 344 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -278.1, 344 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -278.6, 344.7 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -278.6, 344.7 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -279.1, 345.5 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -279.1, 345.5 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -279.6, 346.1 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -279.6, 346.1 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -280, 346.7 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -280, 346.7 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -280.3, 347.3 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -280.3, 347.3 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -280.7, 347.8 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -280.7, 347.8 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -281, 348.2 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -281, 348.2 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -281.2, 348.6 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -281.2, 348.6 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -281.5, 348.9 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -281.5, 348.9 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -281.7, 349.2 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -281.7, 349.2 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -1209.3, 1399.9 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -1209.3, 1399.9 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -967.8, 1103.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -967.8, 1103.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -753.9, 841.4 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -753.9, 841.4 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -567.8, 614.7 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -567.8, 614.7 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -409.4, 423.1 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -409.4, 423.1 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -278.8, 266.6 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -278.8, 266.6 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -175.9, 145.1 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -175.9, 145.1 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -100.7, 58.7 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -100.7, 58.7 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -53.3, 7.3 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -53.3, 7.3 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -49.5, -6.6 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -49.5, -6.6 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -45.8, -20 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -45.8, -20 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -42.2, -32.7 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -42.2, -32.7 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -38.8, -44.7 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -38.8, -44.7 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -35.6, -56.2 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -35.6, -56.2 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -32.5, -67 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -32.5, -67 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -29.6, -77.2 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -29.6, -77.2 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -26.8, -86.8 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -26.8, -86.8 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -24.2, -95.8 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -24.2, -95.8 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -21.6, -104.1 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -21.6, -104.1 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -19.3, -111.8 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -19.3, -111.8 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -17.1, -118.9 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -17.1, -118.9 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -15.1, -125.4 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -15.1, -125.4 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -13.2, -131.2 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -13.2, -131.2 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -11.4, -136.4 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -11.4, -136.4 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -9.8, -141 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -9.8, -141 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -8.4, -145 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -8.4, -145 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -7.1, -148.3 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -7.1, -148.3 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -5.9, -151 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -5.9, -151 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -4.9, -153.1 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -4.9, -153.1 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -176.2, 363 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -176.2, 363 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -187.9, 374.5 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -187.9, 374.5 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -199.6, 385.9 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -199.6, 385.9 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -180.4, 424.5 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -180.4, 424.5 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -123.3, 384.6 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -123.3, 384.6 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -170.4, 434.5 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -170.4, 434.5 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -173, 390.8 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -173, 390.8 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -190.4, 434.5 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -190.4, 434.5 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -170.4, 414.5 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -170.4, 414.5 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -165.9, 408.9 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -165.9, 408.9 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -151.4, 393.2 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -151.4, 393.2 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -129.4, 385.1 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -129.4, 385.1 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -129.9, 354.4 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -129.9, 354.4 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -115.4, 353.8 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -115.4, 353.8 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 56.4, 169.1 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 56.4, 169.1 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 205.6, 7.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 205.6, 7.3 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 370.6, -153.6 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 370.6, -153.6 , 0 );

setScaleKey( spep_0 + 124 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 5.85, 5.85 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 5.85, 5.85 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 2.44, 2.44 );

setRotateKey( spep_0 + 124 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -17.4 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -17.4 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -11.9 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -11.9 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, 18 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, 18 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, 33 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, 33 );

--敵の動き2
setDisp( spep_0 + 330 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 344 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 330 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 330 + OFFSET_X, 1, -393.2, 557.1 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -393.2, 557.1 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -303.8, 414 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -303.8, 414 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -214.5, 271 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -214.5, 271 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -125.1, 127.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -125.1, 127.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -52.5, -4.7 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -52.5, -4.7 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 20, -137.3 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 20, -137.3 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 92.6, -269.9 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 92.6, -269.9 , 0 );

setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.41, 0.41 );

setRotateKey( spep_0 + 330 + OFFSET_X, 1, 85.3 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, 85.3 );


-- ** 音 ** --
--入り
SE002 = playSeVer2( spep_0 + 12, 8, "", 0, 0, 0, -1);

--瞬間移動
SE003 = playSeVer2( spep_0 + 80, 1235, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE003, 71 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 112; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);

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
--キック
SE004 = playSeVer2( spep_0 + 126, 1004, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 136, 1187, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 136, 1049, "", 0, 0, 0, -1);

--瞬間移動
SE007 = playSeVer2( spep_0 + 180, 1235, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE007, 79 );

--回り込む
SE008 = playSeVer2( spep_0 + 208, 1182, "", 0, 0, 0, -1);

--殴り飛ばす
SE009 = playSeVer2( spep_0 + 264, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE009, 224 );
SE010 = playSeVer2( spep_0 + 272, 1123, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 274, 1187, "", 0, 0, 0, -1);

--敵落ちていく
SE012 = playSeVer2( spep_0 + 292, 1121, "",spep_0 + 386, 0, 44, -1);

--地面激突
SE013 = playSeVer2( spep_0 + 338, 1159, "",spep_0 + 422, 0, 28, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --388f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- 気弾を溜めて放つ〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 604;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾を溜めて放つ〜フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気弾を溜めて放つ〜フィニッシュ(ef_002b)
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
setDisp( spep_2 + 330 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 452 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 330 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 330 + OFFSET_X, 1, 94.6, -257.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 94.6, -257.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 97, -260.5 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 97, -260.5 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 92.1, -260.4 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 92.1, -260.4 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 92, -260.5 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 92, -260.5 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 97.1, -260.4 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 97.1, -260.4 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 94.5, -263 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 94.5, -263 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 97.1, -255.4 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 97.1, -255.4 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 92, -265.5 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 92, -265.5 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 92.1, -255.4 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 92.1, -255.4 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 97, -265.5 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 97, -265.5 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 94.6, -257.9 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 94.6, -257.9 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 97, -260.5 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 97, -260.5 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 92.1, -260.4 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 92.1, -260.4 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 92, -260.5 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 92, -260.5 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 97.1, -260.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 97.1, -260.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 94.5, -263 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 94.5, -263 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 97.1, -255.4 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 97.1, -255.4 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 92, -265.5 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 92, -265.5 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 92.1, -255.4 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 92.1, -255.4 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 97, -265.5 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 97, -265.5 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 94.6, -257.9 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 94.6, -257.9 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 97, -260.5 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 97, -260.5 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 92.1, -260.4 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 92.1, -260.4 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 92, -260.5 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 92, -260.5 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 97.1, -260.4 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 97.1, -260.4 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 94.5, -263 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 94.5, -263 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 97.1, -255.4 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 97.1, -255.4 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 92, -265.5 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 92, -265.5 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 92.1, -255.4 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 92.1, -255.4 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 97, -265.5 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 97, -265.5 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 94.6, -257.9 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 94.6, -257.9 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 97, -260.5 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 97, -260.5 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 92.1, -260.4 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 92.1, -260.4 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 162.9, -457.8 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 162.9, -457.8 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 132.6, -357.2 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 132.6, -357.2 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 94.5, -263 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 94.5, -263 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 148.2, -380.7 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 148.2, -380.7 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 111.9, -335 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 111.9, -335 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 88.4, -251.7 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 88.4, -251.7 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 124.4, -335 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 124.4, -335 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 94.6, -257.9 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 94.6, -257.9 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 100.8, -256.8 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 100.8, -256.8 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 88.4, -264.2 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 88.4, -264.2 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 88.3, -256.8 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 88.3, -256.8 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 100.9, -264.2 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 100.9, -264.2 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 94.5, -263 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 94.5, -263 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 100.9, -251.7 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 100.9, -251.7 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 88.3, -269.3 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 88.3, -269.3 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 88.4, -251.7 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 88.4, -251.7 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 100.8, -269.3 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 100.8, -269.3 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 94.6, -257.9 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 94.6, -257.9 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 100.8, -256.8 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 100.8, -256.8 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 88.4, -264.2 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 88.4, -264.2 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 88.3, -256.8 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 88.3, -256.8 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 100.9, -264.2 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 100.9, -264.2 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 94.5, -263 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 94.5, -263 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 100.9, -251.7 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 100.9, -251.7 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 88.3, -269.3 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 88.3, -269.3 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 88.4, -251.7 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 88.4, -251.7 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 100.8, -269.3 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 100.8, -269.3 , 0 );

setScaleKey( spep_2 + 330 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 2.4, 2.4 );

setRotateKey( spep_2 + 330 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 363 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 381 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 383 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 385 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 386 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 389 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 390 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 391 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 392 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 393 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 394 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 395 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 396 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 397 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 398 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 399 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 401 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 402 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 403 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 404 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 405 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 406 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 407 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 408 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 409 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 410 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 411 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 412 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 413 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 414 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 415 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 416 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 417 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 418 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 419 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 420 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 421 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 422 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 423 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 424 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 425 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 426 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 427 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 428 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 429 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 430 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 431 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 433 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 435 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 437 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 438 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 439 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 440 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 441 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 442 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 443 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 445 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 446 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 449 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, -10 );

-- ** 音 ** --
--腕あげる
SE015 = playSeVer2( spep_2 + 14, 1182, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 32, 1116, "",spep_2 + 82, 0, 20, -1);

--気弾溜め
SE017 = playSeVer2( spep_2 + 48, 1253, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 48, 1255, "",spep_2 + 190, 0, 22, -1);
SE019 = playSeVer2( spep_2 + 48, 1334, "",spep_2 + 188, 0, 22, -1);
SE021 = playSeVer2( spep_2 + 134, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134, SE021, 79 );

--腕前に出す
SE020 = playSeVer2( spep_2 + 126, 1004, "", 0, 0, 0, -1);

--気弾発射
SE022 = playSeVer2( spep_2 + 154, 1027, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 154, 1448, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 154, SE023, 151 );
SE024 = playSeVer2( spep_2 + 154, 1406, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 154, 1463, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 238, 1463, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 282, 1406, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 326, 1463, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 380, 1448, "",spep_2 + 604, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 380, SE031, 141 );
SE033 = playSeVer2( spep_2 + 408, 1406, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 418, 1463, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 508, 1463, "",spep_2 + 604, 0, 12, -1);
SE039 = playSeVer2( spep_2 + 538, 1406, "",spep_2 + 604, 0, 14, -1);

--爆発
SE029 = playSeVer2( spep_2 + 318, 1159, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 384, 1067, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 454, 1024, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 490, 1188, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 524, 1023, "", 0, 0, 0, -1);

--顔ズーム
SE027 = playSeVer2( spep_2 + 244, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 244, SE027, 126 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 488 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  604f -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 開幕〜地面に激突する
-------------------------------------------------
MAX_FRAME_0 = 388;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 開幕〜地面に激突する(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 開幕〜地面に激突する(ef_001br)
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
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
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
]]
--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 124 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 308 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 124 + OFFSET_X, 1, 1 );
changeAnime( spep_0 + 144 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 280 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 124 + OFFSET_X, 1, -91.9, 104.3 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -91.9, 104.3 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -168.4, 209.6 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -168.4, 209.6 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -294.7, 366.8 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -294.7, 366.8 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -231.5, 288.2 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -231.5, 288.2 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -168.4, 209.6 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -168.4, 209.6 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -250.5, 386.4 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -250.5, 386.4 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -179.1, 222.3 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -179.1, 222.3 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -274.1, 267.2 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -274.1, 267.2 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -204.5, 267 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -204.5, 267 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -241.7, 282.4 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -241.7, 282.4 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -271, 330.5 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -271, 330.5 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -258.9, 318.9 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -258.9, 318.9 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -263.4, 330.5 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -263.4, 330.5 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -271, 325.4 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -271, 325.4 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -272, 333.5 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -272, 333.5 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -266.4, 328.4 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -266.4, 328.4 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -267.4, 336.4 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -267.4, 336.4 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -271.6, 334.4 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -271.6, 334.4 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -272.5, 335.7 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -272.5, 335.7 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -273.3, 336.9 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -273.3, 336.9 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -274.1, 338.1 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -274.1, 338.1 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -274.9, 339.2 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -274.9, 339.2 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -275.6, 340.3 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -275.6, 340.3 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -276.3, 341.3 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -276.3, 341.3 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -276.9, 342.2 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -276.9, 342.2 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -277.5, 343.1 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -277.5, 343.1 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -278.1, 344 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -278.1, 344 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -278.6, 344.7 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -278.6, 344.7 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -279.1, 345.5 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -279.1, 345.5 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -279.6, 346.1 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -279.6, 346.1 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -280, 346.7 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -280, 346.7 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -280.3, 347.3 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -280.3, 347.3 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -280.7, 347.8 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -280.7, 347.8 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -281, 348.2 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -281, 348.2 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -281.2, 348.6 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -281.2, 348.6 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -281.5, 348.9 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -281.5, 348.9 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -281.7, 349.2 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -281.7, 349.2 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -1209.3, 1399.9 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -1209.3, 1399.9 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -967.8, 1103.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -967.8, 1103.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -753.9, 841.4 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -753.9, 841.4 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -567.8, 614.7 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -567.8, 614.7 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -409.4, 423.1 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -409.4, 423.1 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -278.8, 266.6 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -278.8, 266.6 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -175.9, 145.1 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -175.9, 145.1 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -100.7, 58.7 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -100.7, 58.7 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -53.3, 7.3 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -53.3, 7.3 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -49.5, -6.6 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -49.5, -6.6 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -45.8, -20 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -45.8, -20 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -42.2, -32.7 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -42.2, -32.7 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -38.8, -44.7 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -38.8, -44.7 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -35.6, -56.2 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -35.6, -56.2 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -32.5, -67 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -32.5, -67 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -29.6, -77.2 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -29.6, -77.2 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -26.8, -86.8 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -26.8, -86.8 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -24.2, -95.8 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -24.2, -95.8 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -21.6, -104.1 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -21.6, -104.1 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -19.3, -111.8 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -19.3, -111.8 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -17.1, -118.9 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -17.1, -118.9 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -15.1, -125.4 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -15.1, -125.4 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -13.2, -131.2 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -13.2, -131.2 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -11.4, -136.4 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -11.4, -136.4 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -9.8, -141 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -9.8, -141 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -8.4, -145 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -8.4, -145 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -7.1, -148.3 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -7.1, -148.3 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -5.9, -151 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -5.9, -151 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -4.9, -153.1 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -4.9, -153.1 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -176.2, 363 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -176.2, 363 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -187.9, 374.5 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -187.9, 374.5 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -199.6, 385.9 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -199.6, 385.9 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -180.4, 424.5 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -180.4, 424.5 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -123.3, 384.6 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -123.3, 384.6 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -170.4, 434.5 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -170.4, 434.5 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -173, 390.8 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -173, 390.8 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -190.4, 434.5 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -190.4, 434.5 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -170.4, 414.5 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -170.4, 414.5 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -165.9, 408.9 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -165.9, 408.9 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -151.4, 393.2 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -151.4, 393.2 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -129.4, 385.1 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -129.4, 385.1 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -129.9, 354.4 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -129.9, 354.4 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -115.4, 353.8 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -115.4, 353.8 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 56.4, 169.1 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 56.4, 169.1 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 205.6, 7.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 205.6, 7.3 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 370.6, -153.6 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 370.6, -153.6 , 0 );

setScaleKey( spep_0 + 124 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 3.73, 3.73 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 3.39, 3.39 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 5.85, 5.85 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 5.85, 5.85 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 2.44, 2.44 );

setRotateKey( spep_0 + 124 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -18.8 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -17.4 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -17.4 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -16 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -11.9 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -11.9 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, 3.1 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, 18 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, 18 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, 33 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, 33 );

--敵の動き2
setDisp( spep_0 + 330 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 344 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 330 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 330 + OFFSET_X, 1, -393.2, 557.1 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -393.2, 557.1 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -303.8, 414 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -303.8, 414 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -214.5, 271 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -214.5, 271 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -125.1, 127.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -125.1, 127.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -52.5, -4.7 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -52.5, -4.7 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 20, -137.3 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 20, -137.3 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 92.6, -269.9 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 92.6, -269.9 , 0 );

setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 0.41, 0.41 );

setRotateKey( spep_0 + 330 + OFFSET_X, 1, 85.3 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, 85.3 );


-- ** 音 ** --
--入り
SE002 = playSeVer2( spep_0 + 12, 8, "", 0, 0, 0, -1);

--瞬間移動
SE003 = playSeVer2( spep_0 + 80, 1235, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE003, 71 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 112; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);

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
--キック
SE004 = playSeVer2( spep_0 + 126, 1004, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 136, 1187, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 136, 1049, "", 0, 0, 0, -1);

--瞬間移動
SE007 = playSeVer2( spep_0 + 180, 1235, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE007, 79 );

--回り込む
SE008 = playSeVer2( spep_0 + 208, 1182, "", 0, 0, 0, -1);

--殴り飛ばす
SE009 = playSeVer2( spep_0 + 264, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE009, 224 );
SE010 = playSeVer2( spep_0 + 272, 1123, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 274, 1187, "", 0, 0, 0, -1);

--敵落ちていく
SE012 = playSeVer2( spep_0 + 292, 1121, "",spep_0 + 386, 0, 44, -1);

--地面激突
SE013 = playSeVer2( spep_0 + 338, 1159, "",spep_0 + 422, 0, 28, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --388f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-------------------------------------------------
-- 気弾を溜めて放つ〜フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 604;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 気弾を溜めて放つ〜フィニッシュ(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気弾を溜めて放つ〜フィニッシュ(ef_002b)
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
setDisp( spep_2 + 330 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 452 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 330 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 330 + OFFSET_X, 1, 94.6, -257.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 94.6, -257.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 97, -260.5 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 97, -260.5 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 92.1, -260.4 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 92.1, -260.4 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 92, -260.5 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 92, -260.5 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 97.1, -260.4 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 97.1, -260.4 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 94.5, -263 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 94.5, -263 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 97.1, -255.4 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 97.1, -255.4 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 92, -265.5 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 92, -265.5 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 92.1, -255.4 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 92.1, -255.4 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 97, -265.5 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 97, -265.5 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 94.6, -257.9 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 94.6, -257.9 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 97, -260.5 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 97, -260.5 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 92.1, -260.4 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 92.1, -260.4 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 92, -260.5 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 92, -260.5 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 97.1, -260.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 97.1, -260.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 94.5, -263 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 94.5, -263 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 97.1, -255.4 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 97.1, -255.4 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 92, -265.5 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 92, -265.5 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 92.1, -255.4 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 92.1, -255.4 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 97, -265.5 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 97, -265.5 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 94.6, -257.9 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 94.6, -257.9 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 97, -260.5 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 97, -260.5 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 92.1, -260.4 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 92.1, -260.4 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 92, -260.5 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 92, -260.5 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 97.1, -260.4 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 97.1, -260.4 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 94.5, -263 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 94.5, -263 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 97.1, -255.4 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 97.1, -255.4 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 92, -265.5 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 92, -265.5 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 92.1, -255.4 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 92.1, -255.4 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 97, -265.5 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 97, -265.5 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 94.6, -257.9 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 94.6, -257.9 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 97, -260.5 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 97, -260.5 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 92.1, -260.4 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 92.1, -260.4 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 162.9, -457.8 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 162.9, -457.8 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 132.6, -357.2 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 132.6, -357.2 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 94.5, -263 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 94.5, -263 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 148.2, -380.7 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 148.2, -380.7 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 111.9, -335 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 111.9, -335 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 88.4, -251.7 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 88.4, -251.7 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 124.4, -335 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 124.4, -335 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 94.6, -257.9 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 94.6, -257.9 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 100.8, -256.8 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 100.8, -256.8 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 88.4, -264.2 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 88.4, -264.2 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 88.3, -256.8 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 88.3, -256.8 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 100.9, -264.2 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 100.9, -264.2 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 94.5, -263 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 94.5, -263 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 100.9, -251.7 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 100.9, -251.7 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 88.3, -269.3 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 88.3, -269.3 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 88.4, -251.7 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 88.4, -251.7 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 100.8, -269.3 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 100.8, -269.3 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 94.6, -257.9 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 94.6, -257.9 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 100.8, -256.8 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 100.8, -256.8 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 88.4, -264.2 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 88.4, -264.2 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 88.3, -256.8 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 88.3, -256.8 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 100.9, -264.2 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 100.9, -264.2 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 94.5, -263 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 94.5, -263 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 100.9, -251.7 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 100.9, -251.7 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 88.3, -269.3 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 88.3, -269.3 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 88.4, -251.7 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 88.4, -251.7 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 100.8, -269.3 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 100.8, -269.3 , 0 );

setScaleKey( spep_2 + 330 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 2.4, 2.4 );

setRotateKey( spep_2 + 330 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 349 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 351 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 353 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 355 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 357 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 359 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 360 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 361 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 362 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 363 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 364 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 365 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 366 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 369 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 370 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 371 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 372 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 373 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 374 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 375 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 376 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 377 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 378 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 379 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 381 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 383 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 384 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 385 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 386 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 387 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 388 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 389 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 390 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 391 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 392 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 393 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 394 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 395 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 396 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 397 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 398 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 399 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 400 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 401 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 402 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 403 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 404 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 405 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 406 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 407 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 408 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 409 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 410 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 411 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 412 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 413 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 414 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 415 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 416 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 417 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 418 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 419 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 420 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 421 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 422 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 423 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 424 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 425 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 426 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 427 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 428 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 429 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 430 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 431 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 433 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 435 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 437 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 438 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 439 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 440 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 441 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 442 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 443 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 445 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 446 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 449 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, -10 );

-- ** 音 ** --
--腕あげる
SE015 = playSeVer2( spep_2 + 14, 1182, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 32, 1116, "",spep_2 + 82, 0, 20, -1);

--気弾溜め
SE017 = playSeVer2( spep_2 + 48, 1253, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 48, 1255, "",spep_2 + 190, 0, 22, -1);
SE019 = playSeVer2( spep_2 + 48, 1334, "",spep_2 + 188, 0, 22, -1);
SE021 = playSeVer2( spep_2 + 134, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134, SE021, 79 );

--腕前に出す
SE020 = playSeVer2( spep_2 + 126, 1004, "", 0, 0, 0, -1);

--気弾発射
SE022 = playSeVer2( spep_2 + 154, 1027, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 154, 1448, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 154, SE023, 151 );
SE024 = playSeVer2( spep_2 + 154, 1406, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 154, 1463, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 238, 1463, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 282, 1406, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 326, 1463, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 380, 1448, "",spep_2 + 604, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 380, SE031, 141 );
SE033 = playSeVer2( spep_2 + 408, 1406, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 418, 1463, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 508, 1463, "",spep_2 + 604, 0, 12, -1);
SE039 = playSeVer2( spep_2 + 538, 1406, "",spep_2 + 604, 0, 14, -1);

--爆発
SE029 = playSeVer2( spep_2 + 318, 1159, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 384, 1067, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 454, 1024, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 490, 1188, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 524, 1023, "", 0, 0, 0, -1);

--顔ズーム
SE027 = playSeVer2( spep_2 + 244, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 244, SE027, 126 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 488 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 終了フレーム  604f -4


end
end

------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------
 
if (_IS_SPECIAL_AIM_ALL_ == 1) then
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 全体攻撃
------------------------------------------------------
 
spep_z = 0;
 
setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);
 
------------------------------------------------------
-- 回避  2人目以降の場合はエフェクト読み込み前に入れること
------------------------------------------------------
 
    if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える
 
    playSe( SP_dodge-12, 1042);
    -- stopSe( SP_dodge - 12, SE001, 0);
    -- stopSe( SP_dodge - 12, SE002, 0);
    -- stopSe( SP_dodge - 12, SE003, 0);
    pauseAll( SP_dodge, 67);
 
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
 
    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
 
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
 
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

MAX_FRAME_Z = 112;

-- ** エフェクト等 ** --
base_fZ = entryEffect( spep_z + 0, SP_03, 0x100, -1, 0, 0, 0); -- 全体攻撃(ef_003)
setEffMoveKey( spep_z + 0, base_fZ, 0, 0 , 0);
setEffMoveKey( spep_z + MAX_FRAME_Z, base_fZ, 0, 0 , 0);
setEffScaleKey( spep_z + 0, base_fZ, 1.0, 1.0);
setEffScaleKey( spep_z + MAX_FRAME_Z, base_fZ, 1.0, 1.0);
setEffRotateKey( spep_z + 0, base_fZ, 0);
setEffRotateKey( spep_z + MAX_FRAME_Z, base_fZ, 0);
setEffAlphaKey( spep_z + 0, base_fZ, 255);
setEffAlphaKey( spep_z + MAX_FRAME_Z, base_fZ, 255);

base_bZ = entryEffect( spep_z + 0, SP_03b, 0x80, -1, 0, 0, 0); -- 全体攻撃(ef_003b)
setEffMoveKey( spep_z + 0, base_bZ, 0, 0 , 0);
setEffMoveKey( spep_z + MAX_FRAME_Z, base_bZ, 0, 0 , 0);
setEffScaleKey( spep_z + 0, base_bZ, 1.0, 1.0);
setEffScaleKey( spep_z + MAX_FRAME_Z, base_bZ, 1.0, 1.0);
setEffRotateKey( spep_z + 0, base_bZ, 0);
setEffRotateKey( spep_z + MAX_FRAME_Z, base_bZ, 0);
setEffAlphaKey( spep_z + 0, base_bZ, 255);
setEffAlphaKey( spep_z + MAX_FRAME_Z, base_bZ, 255);
 
-- ** 黒背景 ** --
entryFadeBg( spep_z + 0, 0, MAX_FRAME_Z +2, 0, 0, 0, 0, 255);  --黒 背景
 
-- ** 敵キャラクター ** --
setDisp( spep_z + 0, 1, 1 );
setDisp( spep_z + 94 + OFFSET_X, 1, 0 );

changeAnime( spep_z + 0, 1, 104 );
changeAnime( spep_z + 30 + OFFSET_X, 1, 106 );

setMoveKey( spep_z + 0, 1, 73.1, -184 , 0 );
setMoveKey( spep_z + 2 + OFFSET_X, 1, 75.6, -181.5 , 0 );
setMoveKey( spep_z + 3 + OFFSET_X, 1, 75.6, -181.5 , 0 );
setMoveKey( spep_z + 4 + OFFSET_X, 1, 70.6, -186.5 , 0 );
setMoveKey( spep_z + 5 + OFFSET_X, 1, 70.6, -186.5 , 0 );
setMoveKey( spep_z + 6 + OFFSET_X, 1, 70.6, -181.5 , 0 );
setMoveKey( spep_z + 7 + OFFSET_X, 1, 70.6, -181.5 , 0 );
setMoveKey( spep_z + 8 + OFFSET_X, 1, 75.6, -186.5 , 0 );
setMoveKey( spep_z + 9 + OFFSET_X, 1, 75.6, -186.5 , 0 );
setMoveKey( spep_z + 10 + OFFSET_X, 1, 73.1, -184 , 0 );
setMoveKey( spep_z + 11 + OFFSET_X, 1, 73.1, -184 , 0 );
setMoveKey( spep_z + 12 + OFFSET_X, 1, 75.6, -181.5 , 0 );
setMoveKey( spep_z + 13 + OFFSET_X, 1, 75.6, -181.5 , 0 );
setMoveKey( spep_z + 14 + OFFSET_X, 1, 70.6, -186.5 , 0 );
setMoveKey( spep_z + 15 + OFFSET_X, 1, 70.6, -186.5 , 0 );
setMoveKey( spep_z + 16 + OFFSET_X, 1, 70.6, -181.5 , 0 );
setMoveKey( spep_z + 17 + OFFSET_X, 1, 70.6, -181.5 , 0 );
setMoveKey( spep_z + 18 + OFFSET_X, 1, 75.6, -186.5 , 0 );
setMoveKey( spep_z + 19 + OFFSET_X, 1, 75.6, -186.5 , 0 );
setMoveKey( spep_z + 20 + OFFSET_X, 1, 73.1, -184 , 0 );
setMoveKey( spep_z + 21 + OFFSET_X, 1, 73.1, -184 , 0 );
setMoveKey( spep_z + 22 + OFFSET_X, 1, 75.6, -181.5 , 0 );
setMoveKey( spep_z + 23 + OFFSET_X, 1, 75.6, -181.5 , 0 );
setMoveKey( spep_z + 24 + OFFSET_X, 1, 70.6, -186.5 , 0 );
setMoveKey( spep_z + 25 + OFFSET_X, 1, 70.6, -186.5 , 0 );
setMoveKey( spep_z + 26 + OFFSET_X, 1, 70.6, -181.5 , 0 );
setMoveKey( spep_z + 27 + OFFSET_X, 1, 70.6, -181.5 , 0 );
setMoveKey( spep_z + 28 + OFFSET_X, 1, 75.6, -186.5 , 0 );
setMoveKey( spep_z + 29 + OFFSET_X, 1, 75.6, -186.5 , 0 );
setMoveKey( spep_z + 30 + OFFSET_X, 1, 94.7, -232.2 , 0 );
setMoveKey( spep_z + 31 + OFFSET_X, 1, 94.7, -232.2 , 0 );
setMoveKey( spep_z + 32 + OFFSET_X, 1, 168.1, -403.9 , 0 );
setMoveKey( spep_z + 33 + OFFSET_X, 1, 168.1, -403.9 , 0 );
setMoveKey( spep_z + 34 + OFFSET_X, 1, 127.6, -321.8 , 0 );
setMoveKey( spep_z + 35 + OFFSET_X, 1, 127.6, -321.8 , 0 );
setMoveKey( spep_z + 36 + OFFSET_X, 1, 92.2, -229.7 , 0 );
setMoveKey( spep_z + 37 + OFFSET_X, 1, 92.2, -229.7 , 0 );
setMoveKey( spep_z + 38 + OFFSET_X, 1, 148.5, -341.9 , 0 );
setMoveKey( spep_z + 39 + OFFSET_X, 1, 148.5, -341.9 , 0 );
setMoveKey( spep_z + 40 + OFFSET_X, 1, 111.8, -296.8 , 0 );
setMoveKey( spep_z + 41 + OFFSET_X, 1, 111.8, -296.8 , 0 );
setMoveKey( spep_z + 42 + OFFSET_X, 1, 88.2, -225.7 , 0 );
setMoveKey( spep_z + 43 + OFFSET_X, 1, 88.2, -225.7 , 0 );
setMoveKey( spep_z + 44 + OFFSET_X, 1, 124.8, -296.9 , 0 );
setMoveKey( spep_z + 45 + OFFSET_X, 1, 124.8, -296.9 , 0 );
setMoveKey( spep_z + 46 + OFFSET_X, 1, 94.7, -232.2 , 0 );
setMoveKey( spep_z + 47 + OFFSET_X, 1, 94.7, -232.2 , 0 );
setMoveKey( spep_z + 48 + OFFSET_X, 1, 101.2, -225.7 , 0 );
setMoveKey( spep_z + 49 + OFFSET_X, 1, 101.2, -225.7 , 0 );
setMoveKey( spep_z + 50 + OFFSET_X, 1, 88.2, -238.7 , 0 );
setMoveKey( spep_z + 51 + OFFSET_X, 1, 88.2, -238.7 , 0 );
setMoveKey( spep_z + 52 + OFFSET_X, 1, 88.2, -225.7 , 0 );
setMoveKey( spep_z + 53 + OFFSET_X, 1, 88.2, -225.7 , 0 );
setMoveKey( spep_z + 54 + OFFSET_X, 1, 101.2, -238.8 , 0 );
setMoveKey( spep_z + 55 + OFFSET_X, 1, 101.2, -238.8 , 0 );
setMoveKey( spep_z + 56 + OFFSET_X, 1, 94.7, -232.2 , 0 );
setMoveKey( spep_z + 57 + OFFSET_X, 1, 94.7, -232.2 , 0 );
setMoveKey( spep_z + 58 + OFFSET_X, 1, 101.2, -225.7 , 0 );
setMoveKey( spep_z + 59 + OFFSET_X, 1, 101.2, -225.7 , 0 );
setMoveKey( spep_z + 60 + OFFSET_X, 1, 88.2, -238.7 , 0 );
setMoveKey( spep_z + 61 + OFFSET_X, 1, 88.2, -238.7 , 0 );
setMoveKey( spep_z + 62 + OFFSET_X, 1, 88.2, -225.7 , 0 );
setMoveKey( spep_z + 63 + OFFSET_X, 1, 88.2, -225.7 , 0 );
setMoveKey( spep_z + 64 + OFFSET_X, 1, 101.2, -238.8 , 0 );
setMoveKey( spep_z + 65 + OFFSET_X, 1, 101.2, -238.8 , 0 );
setMoveKey( spep_z + 66 + OFFSET_X, 1, 94.7, -232.2 , 0 );
setMoveKey( spep_z + 67 + OFFSET_X, 1, 94.7, -232.2 , 0 );
setMoveKey( spep_z + 68 + OFFSET_X, 1, 101.2, -225.7 , 0 );
setMoveKey( spep_z + 69 + OFFSET_X, 1, 101.2, -225.7 , 0 );
setMoveKey( spep_z + 70 + OFFSET_X, 1, 88.2, -238.7 , 0 );
setMoveKey( spep_z + 71 + OFFSET_X, 1, 88.2, -238.7 , 0 );
setMoveKey( spep_z + 72 + OFFSET_X, 1, 88.2, -225.7 , 0 );
setMoveKey( spep_z + 73 + OFFSET_X, 1, 88.2, -225.7 , 0 );
setMoveKey( spep_z + 74 + OFFSET_X, 1, 101.2, -238.8 , 0 );
setMoveKey( spep_z + 75 + OFFSET_X, 1, 101.2, -238.8 , 0 );
setMoveKey( spep_z + 76 + OFFSET_X, 1, 94.7, -232.2 , 0 );
setMoveKey( spep_z + 77 + OFFSET_X, 1, 94.7, -232.2 , 0 );
setMoveKey( spep_z + 78 + OFFSET_X, 1, 101.2, -225.7 , 0 );
setMoveKey( spep_z + 79 + OFFSET_X, 1, 101.2, -225.7 , 0 );
setMoveKey( spep_z + 80 + OFFSET_X, 1, 88.2, -238.7 , 0 );
setMoveKey( spep_z + 81 + OFFSET_X, 1, 88.2, -238.7 , 0 );
setMoveKey( spep_z + 82 + OFFSET_X, 1, 88.2, -225.7 , 0 );
setMoveKey( spep_z + 83 + OFFSET_X, 1, 88.2, -225.7 , 0 );
setMoveKey( spep_z + 84 + OFFSET_X, 1, 101.2, -238.8 , 0 );
setMoveKey( spep_z + 85 + OFFSET_X, 1, 101.2, -238.8 , 0 );
setMoveKey( spep_z + 86 + OFFSET_X, 1, 94.7, -232.2 , 0 );
setMoveKey( spep_z + 87 + OFFSET_X, 1, 94.7, -232.2 , 0 );
setMoveKey( spep_z + 88 + OFFSET_X, 1, 88.4, -226 , 0 );
setMoveKey( spep_z + 89 + OFFSET_X, 1, 88.4, -226 , 0 );
setMoveKey( spep_z + 90 + OFFSET_X, 1, 101.2, -225.7 , 0 );
setMoveKey( spep_z + 91 + OFFSET_X, 1, 101.2, -225.7 , 0 );
setMoveKey( spep_z + 92 + OFFSET_X, 1, 88.2, -238.7 , 0 );
setMoveKey( spep_z + 94 + OFFSET_X, 1, 88.2, -238.7 , 0 );

setScaleKey( spep_z + 0, 1, 2.4, 2.4 );
setScaleKey( spep_z + 2 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_z + 3 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_z + 4 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_z + 5 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_z + 6 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_z + 7 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_z + 29 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_z + 30 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_z + 31 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_z + 32 + OFFSET_X, 1, 4.02, 4.02 );
setScaleKey( spep_z + 33 + OFFSET_X, 1, 4.02, 4.02 );
setScaleKey( spep_z + 34 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_z + 35 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_z + 36 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_z + 37 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_z + 38 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_z + 39 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_z + 40 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_z + 41 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_z + 42 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_z + 43 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_z + 44 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_z + 45 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_z + 46 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_z + 94 + OFFSET_X, 1, 2.3, 2.3 );

setRotateKey( spep_z + 0, 1, 0 );
setRotateKey( spep_z + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 29 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 30 + OFFSET_X, 1, -9.8 );
setRotateKey( spep_z + 94 + OFFSET_X, 1, -9.8 );

-- ** 音 ** --
--【全体】気弾飛んでくる
SE040 = playSeVer2( spep_z + 0, 1448, "",spep_z + 96, 0, 14, -1);
SE041 = playSeVer2( spep_z + 0, 1406, "",spep_z + 92, 0, 10, -1);
SE042 = playSeVer2( spep_z + 0, 1463, "",spep_z + 96, 0, 14, -1);

--【全体】爆発
SE043 = playSeVer2( spep_z + 22, 1159, "",spep_z + 118, 0, 14, -1);
SE044 = playSeVer2( spep_z + 26, 1067, "",spep_z + 118, 0, 16, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_z + 32 ); -- ダメージ表示フレーム
endPhase( spep_z + MAX_FRAME_Z -0); -- 終了フレーム  112f

else

------------------------------------------------------
-- 敵側
------------------------------------------------------



------------------------------------------------------
-- 全体攻撃
------------------------------------------------------

spep_z = 0;
 
setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);
 
------------------------------------------------------
-- 回避  2人目以降の場合はエフェクト読み込み前に入れること
------------------------------------------------------
 
    if(_IS_DODGE_ == 1) then
 
    SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える
 
    playSe( SP_dodge-12, 1042);
    -- stopSe( SP_dodge - 12, SE001, 0);
    -- stopSe( SP_dodge - 12, SE002, 0);
    -- stopSe( SP_dodge - 12, SE003, 0);
    pauseAll( SP_dodge, 67);
 
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
 
    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
 
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
 
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

MAX_FRAME_Z = 112;

-- ** エフェクト等 ** --
base_fZ = entryEffect( spep_z + 0, SP_03, 0x100, -1, 0, 0, 0); -- 全体攻撃(ef_003)
setEffMoveKey( spep_z + 0, base_fZ, 0, 0 , 0);
setEffMoveKey( spep_z + MAX_FRAME_Z, base_fZ, 0, 0 , 0);
setEffScaleKey( spep_z + 0, base_fZ, 1.0, 1.0);
setEffScaleKey( spep_z + MAX_FRAME_Z, base_fZ, 1.0, 1.0);
setEffRotateKey( spep_z + 0, base_fZ, 0);
setEffRotateKey( spep_z + MAX_FRAME_Z, base_fZ, 0);
setEffAlphaKey( spep_z + 0, base_fZ, 255);
setEffAlphaKey( spep_z + MAX_FRAME_Z, base_fZ, 255);

base_bZ = entryEffect( spep_z + 0, SP_03b, 0x80, -1, 0, 0, 0); -- 全体攻撃(ef_003b)
setEffMoveKey( spep_z + 0, base_bZ, 0, 0 , 0);
setEffMoveKey( spep_z + MAX_FRAME_Z, base_bZ, 0, 0 , 0);
setEffScaleKey( spep_z + 0, base_bZ, 1.0, 1.0);
setEffScaleKey( spep_z + MAX_FRAME_Z, base_bZ, 1.0, 1.0);
setEffRotateKey( spep_z + 0, base_bZ, 0);
setEffRotateKey( spep_z + MAX_FRAME_Z, base_bZ, 0);
setEffAlphaKey( spep_z + 0, base_bZ, 255);
setEffAlphaKey( spep_z + MAX_FRAME_Z, base_bZ, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_z + 0, 0, MAX_FRAME_Z +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_z + 0, 1, 1 );
setDisp( spep_z + 94 + OFFSET_X, 1, 0 );

changeAnime( spep_z + 0, 1, 104 );
changeAnime( spep_z + 30 + OFFSET_X, 1, 106 );

setMoveKey( spep_z + 0, 1, 73.1, -184 , 0 );
setMoveKey( spep_z + 2 + OFFSET_X, 1, 75.6, -181.5 , 0 );
setMoveKey( spep_z + 3 + OFFSET_X, 1, 75.6, -181.5 , 0 );
setMoveKey( spep_z + 4 + OFFSET_X, 1, 70.6, -186.5 , 0 );
setMoveKey( spep_z + 5 + OFFSET_X, 1, 70.6, -186.5 , 0 );
setMoveKey( spep_z + 6 + OFFSET_X, 1, 70.6, -181.5 , 0 );
setMoveKey( spep_z + 7 + OFFSET_X, 1, 70.6, -181.5 , 0 );
setMoveKey( spep_z + 8 + OFFSET_X, 1, 75.6, -186.5 , 0 );
setMoveKey( spep_z + 9 + OFFSET_X, 1, 75.6, -186.5 , 0 );
setMoveKey( spep_z + 10 + OFFSET_X, 1, 73.1, -184 , 0 );
setMoveKey( spep_z + 11 + OFFSET_X, 1, 73.1, -184 , 0 );
setMoveKey( spep_z + 12 + OFFSET_X, 1, 75.6, -181.5 , 0 );
setMoveKey( spep_z + 13 + OFFSET_X, 1, 75.6, -181.5 , 0 );
setMoveKey( spep_z + 14 + OFFSET_X, 1, 70.6, -186.5 , 0 );
setMoveKey( spep_z + 15 + OFFSET_X, 1, 70.6, -186.5 , 0 );
setMoveKey( spep_z + 16 + OFFSET_X, 1, 70.6, -181.5 , 0 );
setMoveKey( spep_z + 17 + OFFSET_X, 1, 70.6, -181.5 , 0 );
setMoveKey( spep_z + 18 + OFFSET_X, 1, 75.6, -186.5 , 0 );
setMoveKey( spep_z + 19 + OFFSET_X, 1, 75.6, -186.5 , 0 );
setMoveKey( spep_z + 20 + OFFSET_X, 1, 73.1, -184 , 0 );
setMoveKey( spep_z + 21 + OFFSET_X, 1, 73.1, -184 , 0 );
setMoveKey( spep_z + 22 + OFFSET_X, 1, 75.6, -181.5 , 0 );
setMoveKey( spep_z + 23 + OFFSET_X, 1, 75.6, -181.5 , 0 );
setMoveKey( spep_z + 24 + OFFSET_X, 1, 70.6, -186.5 , 0 );
setMoveKey( spep_z + 25 + OFFSET_X, 1, 70.6, -186.5 , 0 );
setMoveKey( spep_z + 26 + OFFSET_X, 1, 70.6, -181.5 , 0 );
setMoveKey( spep_z + 27 + OFFSET_X, 1, 70.6, -181.5 , 0 );
setMoveKey( spep_z + 28 + OFFSET_X, 1, 75.6, -186.5 , 0 );
setMoveKey( spep_z + 29 + OFFSET_X, 1, 75.6, -186.5 , 0 );
setMoveKey( spep_z + 30 + OFFSET_X, 1, 94.7, -232.2 , 0 );
setMoveKey( spep_z + 31 + OFFSET_X, 1, 94.7, -232.2 , 0 );
setMoveKey( spep_z + 32 + OFFSET_X, 1, 168.1, -403.9 , 0 );
setMoveKey( spep_z + 33 + OFFSET_X, 1, 168.1, -403.9 , 0 );
setMoveKey( spep_z + 34 + OFFSET_X, 1, 127.6, -321.8 , 0 );
setMoveKey( spep_z + 35 + OFFSET_X, 1, 127.6, -321.8 , 0 );
setMoveKey( spep_z + 36 + OFFSET_X, 1, 92.2, -229.7 , 0 );
setMoveKey( spep_z + 37 + OFFSET_X, 1, 92.2, -229.7 , 0 );
setMoveKey( spep_z + 38 + OFFSET_X, 1, 148.5, -341.9 , 0 );
setMoveKey( spep_z + 39 + OFFSET_X, 1, 148.5, -341.9 , 0 );
setMoveKey( spep_z + 40 + OFFSET_X, 1, 111.8, -296.8 , 0 );
setMoveKey( spep_z + 41 + OFFSET_X, 1, 111.8, -296.8 , 0 );
setMoveKey( spep_z + 42 + OFFSET_X, 1, 88.2, -225.7 , 0 );
setMoveKey( spep_z + 43 + OFFSET_X, 1, 88.2, -225.7 , 0 );
setMoveKey( spep_z + 44 + OFFSET_X, 1, 124.8, -296.9 , 0 );
setMoveKey( spep_z + 45 + OFFSET_X, 1, 124.8, -296.9 , 0 );
setMoveKey( spep_z + 46 + OFFSET_X, 1, 94.7, -232.2 , 0 );
setMoveKey( spep_z + 47 + OFFSET_X, 1, 94.7, -232.2 , 0 );
setMoveKey( spep_z + 48 + OFFSET_X, 1, 101.2, -225.7 , 0 );
setMoveKey( spep_z + 49 + OFFSET_X, 1, 101.2, -225.7 , 0 );
setMoveKey( spep_z + 50 + OFFSET_X, 1, 88.2, -238.7 , 0 );
setMoveKey( spep_z + 51 + OFFSET_X, 1, 88.2, -238.7 , 0 );
setMoveKey( spep_z + 52 + OFFSET_X, 1, 88.2, -225.7 , 0 );
setMoveKey( spep_z + 53 + OFFSET_X, 1, 88.2, -225.7 , 0 );
setMoveKey( spep_z + 54 + OFFSET_X, 1, 101.2, -238.8 , 0 );
setMoveKey( spep_z + 55 + OFFSET_X, 1, 101.2, -238.8 , 0 );
setMoveKey( spep_z + 56 + OFFSET_X, 1, 94.7, -232.2 , 0 );
setMoveKey( spep_z + 57 + OFFSET_X, 1, 94.7, -232.2 , 0 );
setMoveKey( spep_z + 58 + OFFSET_X, 1, 101.2, -225.7 , 0 );
setMoveKey( spep_z + 59 + OFFSET_X, 1, 101.2, -225.7 , 0 );
setMoveKey( spep_z + 60 + OFFSET_X, 1, 88.2, -238.7 , 0 );
setMoveKey( spep_z + 61 + OFFSET_X, 1, 88.2, -238.7 , 0 );
setMoveKey( spep_z + 62 + OFFSET_X, 1, 88.2, -225.7 , 0 );
setMoveKey( spep_z + 63 + OFFSET_X, 1, 88.2, -225.7 , 0 );
setMoveKey( spep_z + 64 + OFFSET_X, 1, 101.2, -238.8 , 0 );
setMoveKey( spep_z + 65 + OFFSET_X, 1, 101.2, -238.8 , 0 );
setMoveKey( spep_z + 66 + OFFSET_X, 1, 94.7, -232.2 , 0 );
setMoveKey( spep_z + 67 + OFFSET_X, 1, 94.7, -232.2 , 0 );
setMoveKey( spep_z + 68 + OFFSET_X, 1, 101.2, -225.7 , 0 );
setMoveKey( spep_z + 69 + OFFSET_X, 1, 101.2, -225.7 , 0 );
setMoveKey( spep_z + 70 + OFFSET_X, 1, 88.2, -238.7 , 0 );
setMoveKey( spep_z + 71 + OFFSET_X, 1, 88.2, -238.7 , 0 );
setMoveKey( spep_z + 72 + OFFSET_X, 1, 88.2, -225.7 , 0 );
setMoveKey( spep_z + 73 + OFFSET_X, 1, 88.2, -225.7 , 0 );
setMoveKey( spep_z + 74 + OFFSET_X, 1, 101.2, -238.8 , 0 );
setMoveKey( spep_z + 75 + OFFSET_X, 1, 101.2, -238.8 , 0 );
setMoveKey( spep_z + 76 + OFFSET_X, 1, 94.7, -232.2 , 0 );
setMoveKey( spep_z + 77 + OFFSET_X, 1, 94.7, -232.2 , 0 );
setMoveKey( spep_z + 78 + OFFSET_X, 1, 101.2, -225.7 , 0 );
setMoveKey( spep_z + 79 + OFFSET_X, 1, 101.2, -225.7 , 0 );
setMoveKey( spep_z + 80 + OFFSET_X, 1, 88.2, -238.7 , 0 );
setMoveKey( spep_z + 81 + OFFSET_X, 1, 88.2, -238.7 , 0 );
setMoveKey( spep_z + 82 + OFFSET_X, 1, 88.2, -225.7 , 0 );
setMoveKey( spep_z + 83 + OFFSET_X, 1, 88.2, -225.7 , 0 );
setMoveKey( spep_z + 84 + OFFSET_X, 1, 101.2, -238.8 , 0 );
setMoveKey( spep_z + 85 + OFFSET_X, 1, 101.2, -238.8 , 0 );
setMoveKey( spep_z + 86 + OFFSET_X, 1, 94.7, -232.2 , 0 );
setMoveKey( spep_z + 87 + OFFSET_X, 1, 94.7, -232.2 , 0 );
setMoveKey( spep_z + 88 + OFFSET_X, 1, 88.4, -226 , 0 );
setMoveKey( spep_z + 89 + OFFSET_X, 1, 88.4, -226 , 0 );
setMoveKey( spep_z + 90 + OFFSET_X, 1, 101.2, -225.7 , 0 );
setMoveKey( spep_z + 91 + OFFSET_X, 1, 101.2, -225.7 , 0 );
setMoveKey( spep_z + 92 + OFFSET_X, 1, 88.2, -238.7 , 0 );
setMoveKey( spep_z + 94 + OFFSET_X, 1, 88.2, -238.7 , 0 );

setScaleKey( spep_z + 0, 1, 2.4, 2.4 );
setScaleKey( spep_z + 2 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_z + 3 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_z + 4 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_z + 5 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_z + 6 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_z + 7 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_z + 29 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_z + 30 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_z + 31 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_z + 32 + OFFSET_X, 1, 4.02, 4.02 );
setScaleKey( spep_z + 33 + OFFSET_X, 1, 4.02, 4.02 );
setScaleKey( spep_z + 34 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_z + 35 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_z + 36 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_z + 37 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_z + 38 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_z + 39 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_z + 40 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_z + 41 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_z + 42 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_z + 43 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_z + 44 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_z + 45 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_z + 46 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_z + 94 + OFFSET_X, 1, 2.3, 2.3 );

setRotateKey( spep_z + 0, 1, 0 );
setRotateKey( spep_z + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 29 + OFFSET_X, 1, 0 );
setRotateKey( spep_z + 30 + OFFSET_X, 1, -9.8 );
setRotateKey( spep_z + 94 + OFFSET_X, 1, -9.8 );

-- ** 音 ** --
--【全体】気弾飛んでくる
SE040 = playSeVer2( spep_z + 0, 1448, "",spep_z + 96, 0, 14, -1);
SE041 = playSeVer2( spep_z + 0, 1406, "",spep_z + 92, 0, 10, -1);
SE042 = playSeVer2( spep_z + 0, 1463, "",spep_z + 96, 0, 14, -1);

--【全体】爆発
SE043 = playSeVer2( spep_z + 22, 1159, "",spep_z + 118, 0, 14, -1);
SE044 = playSeVer2( spep_z + 26, 1067, "",spep_z + 118, 0, 16, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_z + 32 ); -- ダメージ表示フレーム
endPhase( spep_z + MAX_FRAME_Z -0); -- 終了フレーム  112f

end
end