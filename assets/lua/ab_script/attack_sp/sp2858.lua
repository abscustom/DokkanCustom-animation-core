--4031130:UR_ヒット_必殺技：時とばし(変身後)
--sp_effect_b1_00332
--sp2858

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163799;  --ef_001 冒頭構え→突進してラッシュ
SP_01b = 163801;  --ef_001_b 冒頭構え→突進してラッシュ 背景
SP_02  = 163802;  --ef_002 突進してフィニッシュブロー
SP_02b = 163804;  --ef_002_b 突進してフィニッシュブロー 背景

--エフェクト(敵)
SP_01r = 163800;  --ef_001_r 冒頭構え→突進してラッシュ 敵側
SP_02r = 163803;  --ef_002_r 突進してフィニッシュブロー 敵側


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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭構え→突進してラッシュ
-------------------------------------------------
MAX_FRAME_0 = 400;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 冒頭構え→突進してラッシュ(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 冒頭構え→突進してラッシュ 背景(ef_001_b)
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
spep_x = spep_0 + 314;

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
setDisp( spep_0 + 136 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 194 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 136 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 144 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 156 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 170 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 136 + OFFSET_X, 1, 529.5, -52.7 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 529.5, -52.7 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 401.5, -52.7 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 401.5, -52.7 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 225.5, -52.7 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 225.5, -52.7 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 226.7, -6.6 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 226.7, -6.6 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 164.2, 28.3 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 164.2, 28.3 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 162.6, -2.5 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 162.6, -2.5 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 167.3, 27.4 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 167.3, 27.4 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 194.7, 3 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 194.7, 3 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 203.9, 24 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 203.9, 24 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 152.8, -4.7 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 152.8, -4.7 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 159.5, 2.6 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 159.5, 2.6 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 166.2, 2.8 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 166.2, 2.8 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 172.9, 3.1 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 172.9, 3.1 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 179.5, 3.4 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 179.5, 3.4 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 186.2, 3.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 186.2, 3.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 192.9, 3.9 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 192.9, 3.9 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 275.5, 26.4 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 275.5, 26.4 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 275.5, 9.4 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 275.5, 9.4 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 275.5, 43.5 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 275.5, 43.5 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 275.5, 11.5 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 275.5, 11.5 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 275.5, 38.7 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 275.5, 38.7 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 275.5, 14.3 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 275.5, 14.3 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 275.5, 35.3 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 275.5, 35.3 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 275.5, 16.3 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 275.5, 16.3 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 291.5, 32.3 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 291.5, 32.3 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 437.3, 26.4 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 437.3, 26.4 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 634.3, 19.4 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 634.3, 19.4 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 770.4, 12.4 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 770.4, 12.4 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 757.5, 12.4 , 0 );

setScaleKey( spep_0 + 136 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 1.9, 1.9 );

setRotateKey( spep_0 + 136 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, 10.7 );
setRotateKey( spep_0 + 145 + OFFSET_X, 1, 10.7 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, 12.7 );
setRotateKey( spep_0 + 149 + OFFSET_X, 1, 12.7 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_0 + 155 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, -28.2 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, -28.2 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, -27.1 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, -27.1 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, -25 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, -25 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, -23.9 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, -23.9 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, 10.7 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, 10.7 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, 15.5 );

--敵の動き2
setDisp( spep_0 + 246 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 312 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 246 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 280 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 246 + OFFSET_X, 1, 105, 92.6 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 105, 92.6 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 111.8, 161.1 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 111.8, 161.1 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 108.5, 117.1 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 108.5, 117.1 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 107.3, 158.2 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 107.3, 158.2 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 113, 120.8 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 113, 120.8 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 110.5, 155.3 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 110.5, 155.3 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 110.3, 122 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 110.3, 122 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 106, 153.6 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 106, 153.6 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 112.3, 124.3 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 112.3, 124.3 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 108.3, 151.6 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 108.3, 151.6 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 107.3, 125.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 107.3, 125.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 107.5, 150.5 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 107.5, 150.5 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 110, 126.3 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 110, 126.3 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 105, 143.4 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 105, 143.4 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 106.2, 136.8 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 106.2, 136.8 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 105.9, 141.6 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 105.9, 141.6 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 104.7, 138.6 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 104.7, 138.6 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 133.4, 115.4 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 133.4, 115.4 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 191.5, 134.8 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 191.5, 134.8 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 248.6, 158.3 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 248.6, 158.3 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 370.1, 192.7 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 370.1, 192.7 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 575.6, 235.9 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 575.6, 235.9 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 605.1, 239.7 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 605.1, 239.7 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 686.5, 251.3 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 686.5, 251.3 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 734.8, 254.2 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 734.8, 254.2 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 829.1, 260.4 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 829.1, 260.4 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 923.3, 266.6 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 923.3, 266.6 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 1010.5, 272.9 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 1010.5, 272.9 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 1097.6, 279.1 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 1097.6, 279.1 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 1191.9, 285.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 1191.9, 285.3 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 1286.1, 291.5 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 1286.1, 291.5 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 1391, 297.8 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 1391, 297.8 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 1499.4, 304 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 1499.4, 304 , 0 );

setScaleKey( spep_0 + 246 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 1.9, 1.9 );

setRotateKey( spep_0 + 246 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -18.2 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -18.2 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -9.9 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -9.9 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, -5.8 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--踏み込む
SE002 = playSeVer2( spep_0 + 60, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE002, 85 );
SE003 = playSeVer2( spep_0 + 70, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE003, 129 );

--走り出す
SE004 = playSeVer2( spep_0 + 96, 1000, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 96, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 96, 1277, "", 0, 0, 0, -1);

--瞬間移動
SE007 = playSeVer2( spep_0 + 112, 1109, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 130; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
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
--パンチ
SE008 = playSeVer2( spep_0 + 128, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE008, 130 );
SE009 = playSeVer2( spep_0 + 134, 1009, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 134, 1187, "",spep_0 + 184, 0, 22, -1);

--キック
SE011 = playSeVer2( spep_0 + 150, 1004, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 162, 1153, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 162, 1187, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 166, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 166, SE014, 68 );

--背景音
SE015 = playSeVer2( spep_0 + 180, 1379, "",spep_0 + 262, 0, 22, -1);

--振りかぶる
SE016 = playSeVer2( spep_0 + 212, 1116, "",spep_0 + 270, 0, 26, -1);

--蹴り飛ばす
SE017 = playSeVer2( spep_0 + 234, 1187, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 234, 1120, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 238, 1259, "",spep_0 + 404, 0, 20, -1);

--残像になる
SE021 = playSeVer2( spep_0 + 376, 1235, "",spep_0 + 426, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 376, SE021, 74 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --400f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--向かってくる
SE023 = playSeVer2( spep_1 + 74, 1182, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 82, 1117, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_1 + 86, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE025, 56 );
setTimeStretch( SE025, 1.33, 30, 4 );

-------------------------------------------------
-- 突進してフィニッシュブロー
-------------------------------------------------
MAX_FRAME_2 = 512;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 突進してフィニッシュブロー(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 突進してフィニッシュブロー 背景(ef_002_b)
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
setDisp( spep_2 + 178 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 264 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 178 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 184 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 226 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 178 + OFFSET_X, 1, 7.7, -19 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 7.7, -19 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 44.5, 56.4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 44.5, 56.4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 61.1, 146.7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 61.1, 146.7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 25.4, 60.1 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 25.4, 60.1 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 27.9, 144 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 27.9, 144 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 61.1, 64 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 61.1, 64 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 32.3, 140.8 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 32.3, 140.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 56.6, 67.5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 56.6, 67.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 35.3, 137.5 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 35.3, 137.5 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 31.5, 71 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 31.5, 71 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 57.1, 134.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 57.1, 134.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 35.5, 74.5 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 35.5, 74.5 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 57.4, 130.8 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 57.4, 130.8 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 31.5, 78 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 31.5, 78 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 31.5, 127.3 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 31.5, 127.3 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 57.4, 81 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 57.4, 81 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 37.2, 122.8 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 37.2, 122.8 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 49.8, 84 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 49.8, 84 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 39.2, 119.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 39.2, 119.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 51.8, 85.5 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 51.8, 85.5 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 35.2, 118.1 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 35.2, 118.1 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 51.1, 86.8 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 51.1, 86.8 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 11.6, 104.7 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 11.6, 104.7 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 50.1, 95.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 50.1, 95.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 59, 109.6 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 59, 109.6 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 68.5, 90 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 68.5, 90 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 78.7, 104.2 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 78.7, 104.2 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 82.8, 92.1 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 82.8, 92.1 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 81.6, 101.1 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 81.6, 101.1 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 9.2, 86.3 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 9.2, 86.3 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 26.6, 15.3 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 26.6, 15.3 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 32.5, -18.1 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 32.5, -18.1 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 36.6, -30.1 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 36.6, -30.1 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 39.5, -44.2 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 39.5, -44.2 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 41.8, -52.6 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 41.8, -52.6 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 43.7, -60.1 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 43.7, -60.1 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 45.2, -66.1 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 45.2, -66.1 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 46.3, -70.8 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 46.3, -70.8 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 47.2, -74.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 47.2, -74.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 47.8, -77.2 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 47.8, -77.2 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 48.3, -79.1 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 48.3, -79.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 48.6, -95.3 , 0 );

setScaleKey( spep_2 + 178 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 7.99, 7.99 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 7.99, 7.99 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.32, 0.32 );

setRotateKey( spep_2 + 178 + OFFSET_X, 1, -61.2 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -61.2 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, 41.1 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, 41.1 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 12.1 );

-- ** 音 ** --
--時とばし発動
SE026 = playSeVer2( spep_2 + 60, 1426, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE026, 85 );
setStartTimeMs( SE026,  333 );
SE027 = playSeVer2( spep_2 + 62, 1172, "",spep_2 + 192, 0, 60, -1);
setSeVolumeByWorkId( spep_2 + 62, SE027, 91 );
setPitch( spep_2 + 62, SE027, -100 );
setTimeStretch( SE027, 0.93, 30, 4 );
SE028 = playSeVer2( spep_2 + 62, 1264, "",spep_2 + 192, 0, 60, -1);
setSeVolumeByWorkId( spep_2 + 62, SE028, 111 );
setPitch( spep_2 + 62, SE028, -200 );
setTimeStretch( SE028, 0.87, 30, 4 );

--振りかぶる
SE029 = playSeVer2( spep_2 + 106, 1004, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 130, 1116, "",spep_2 + 178, 0, 26, -1);

--パンチ
SE031 = playSeVer2( spep_2 + 166, 1187, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 166, 1359, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 166, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 166, SE033, 76 );

--敵飛んでいく
SE034 = playSeVer2( spep_2 + 196, 1121, "",spep_2 + 276, 0, 38, -1);

--爆発
SE035 = playSeVer2( spep_2 + 244, 1159, "", 0, 0, 0, -1);

--振り返る
SE036 = playSeVer2( spep_2 + 372, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 372, SE036, 71 );
SE037 = playSeVer2( spep_2 + 386, 1192, "",spep_2 + 418, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 386, SE037, 78 );
SE038 = playSeVer2( spep_2 + 390, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 390, SE038, 158 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 360 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 終了フレーム  512f -2


else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 冒頭構え→突進してラッシュ
-------------------------------------------------
MAX_FRAME_0 = 400;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 冒頭構え→突進してラッシュ 敵側(ef_001_r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 冒頭構え→突進してラッシュ 背景(ef_001_b)
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
spep_x = spep_0 + 314;

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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 136 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 194 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 136 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 144 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 156 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 170 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 136 + OFFSET_X, 1, 529.5, -52.7 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 529.5, -52.7 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 401.5, -52.7 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 401.5, -52.7 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 225.5, -52.7 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 225.5, -52.7 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 226.7, -6.6 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 226.7, -6.6 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 164.2, 28.3 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 164.2, 28.3 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 162.6, -2.5 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 162.6, -2.5 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 167.3, 27.4 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 167.3, 27.4 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 194.7, 3 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 194.7, 3 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 203.9, 24 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 203.9, 24 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 152.8, -4.7 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 152.8, -4.7 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 159.5, 2.6 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 159.5, 2.6 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 166.2, 2.8 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 166.2, 2.8 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 172.9, 3.1 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 172.9, 3.1 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 179.5, 3.4 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 179.5, 3.4 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 186.2, 3.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 186.2, 3.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 192.9, 3.9 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 192.9, 3.9 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 275.5, 26.4 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 275.5, 26.4 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 275.5, 9.4 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 275.5, 9.4 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 275.5, 43.5 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 275.5, 43.5 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 275.5, 11.5 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 275.5, 11.5 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 275.5, 38.7 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 275.5, 38.7 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 275.5, 14.3 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 275.5, 14.3 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 275.5, 35.3 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 275.5, 35.3 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 275.5, 16.3 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 275.5, 16.3 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 291.5, 32.3 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 291.5, 32.3 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 437.3, 26.4 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 437.3, 26.4 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 634.3, 19.4 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 634.3, 19.4 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 770.4, 12.4 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 770.4, 12.4 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 757.5, 12.4 , 0 );

setScaleKey( spep_0 + 136 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 1.9, 1.9 );

setRotateKey( spep_0 + 136 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, 10.7 );
setRotateKey( spep_0 + 145 + OFFSET_X, 1, 10.7 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, 12.7 );
setRotateKey( spep_0 + 149 + OFFSET_X, 1, 12.7 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_0 + 155 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, -28.2 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, -28.2 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, -27.1 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, -27.1 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, -25 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, -25 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, -23.9 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, -23.9 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, -22.8 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, 10.7 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, 10.7 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, 15.5 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, 15.5 );

--敵の動き2
setDisp( spep_0 + 246 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 312 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 246 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 280 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 246 + OFFSET_X, 1, 105, 92.6 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 105, 92.6 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 111.8, 161.1 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 111.8, 161.1 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 108.5, 117.1 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 108.5, 117.1 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 107.3, 158.2 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 107.3, 158.2 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 113, 120.8 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 113, 120.8 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 110.5, 155.3 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 110.5, 155.3 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 110.3, 122 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 110.3, 122 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 106, 153.6 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 106, 153.6 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 112.3, 124.3 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 112.3, 124.3 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 108.3, 151.6 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 108.3, 151.6 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 107.3, 125.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 107.3, 125.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 107.5, 150.5 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 107.5, 150.5 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 110, 126.3 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 110, 126.3 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 105, 143.4 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 105, 143.4 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 106.2, 136.8 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 106.2, 136.8 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 105.9, 141.6 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 105.9, 141.6 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 104.7, 138.6 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 104.7, 138.6 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 133.4, 115.4 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 133.4, 115.4 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 191.5, 134.8 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 191.5, 134.8 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 248.6, 158.3 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 248.6, 158.3 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 370.1, 192.7 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 370.1, 192.7 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 575.6, 235.9 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 575.6, 235.9 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 605.1, 239.7 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 605.1, 239.7 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 686.5, 251.3 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 686.5, 251.3 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 734.8, 254.2 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 734.8, 254.2 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 829.1, 260.4 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 829.1, 260.4 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 923.3, 266.6 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 923.3, 266.6 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 1010.5, 272.9 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 1010.5, 272.9 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 1097.6, 279.1 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 1097.6, 279.1 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 1191.9, 285.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 1191.9, 285.3 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 1286.1, 291.5 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 1286.1, 291.5 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 1391, 297.8 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 1391, 297.8 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 1499.4, 304 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 1499.4, 304 , 0 );

setScaleKey( spep_0 + 246 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 1.9, 1.9 );

setRotateKey( spep_0 + 246 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -22.3 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -20.3 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -18.2 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -18.2 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -9.9 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -9.9 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, -5.8 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);

--踏み込む
SE002 = playSeVer2( spep_0 + 60, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE002, 85 );
SE003 = playSeVer2( spep_0 + 70, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE003, 129 );

--走り出す
SE004 = playSeVer2( spep_0 + 96, 1000, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 96, 1182, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 96, 1277, "", 0, 0, 0, -1);

--瞬間移動
SE007 = playSeVer2( spep_0 + 112, 1109, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 130; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
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
--パンチ
SE008 = playSeVer2( spep_0 + 128, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE008, 130 );
SE009 = playSeVer2( spep_0 + 134, 1009, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 134, 1187, "",spep_0 + 184, 0, 22, -1);

--キック
SE011 = playSeVer2( spep_0 + 150, 1004, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 162, 1153, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 162, 1187, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 166, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 166, SE014, 68 );

--背景音
SE015 = playSeVer2( spep_0 + 180, 1379, "",spep_0 + 262, 0, 22, -1);

--振りかぶる
SE016 = playSeVer2( spep_0 + 212, 1116, "",spep_0 + 270, 0, 26, -1);

--蹴り飛ばす
SE017 = playSeVer2( spep_0 + 234, 1187, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 234, 1120, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 238, 1259, "",spep_0 + 404, 0, 20, -1);

--残像になる
SE021 = playSeVer2( spep_0 + 376, 1235, "",spep_0 + 426, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 376, SE021, 74 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --400f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--向かってくる
SE023 = playSeVer2( spep_1 + 74, 1182, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_1 + 82, 1117, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_1 + 86, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE025, 56 );
setTimeStretch( SE025, 1.33, 30, 4 );

-------------------------------------------------
-- 突進してフィニッシュブロー
-------------------------------------------------
MAX_FRAME_2 = 512;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 突進してフィニッシュブロー(ef_002_r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 突進してフィニッシュブロー 背景(ef_002_b)
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
setDisp( spep_2 + 178 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 264 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 178 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 184 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 226 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 178 + OFFSET_X, 1, 7.7, -19 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 7.7, -19 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 44.5, 56.4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 44.5, 56.4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 61.1, 146.7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 61.1, 146.7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 25.4, 60.1 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 25.4, 60.1 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 27.9, 144 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 27.9, 144 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 61.1, 64 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 61.1, 64 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 32.3, 140.8 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 32.3, 140.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 56.6, 67.5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 56.6, 67.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 35.3, 137.5 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 35.3, 137.5 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 31.5, 71 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 31.5, 71 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 57.1, 134.1 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 57.1, 134.1 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 35.5, 74.5 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 35.5, 74.5 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 57.4, 130.8 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 57.4, 130.8 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 31.5, 78 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 31.5, 78 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 31.5, 127.3 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 31.5, 127.3 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 57.4, 81 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 57.4, 81 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 37.2, 122.8 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 37.2, 122.8 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 49.8, 84 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 49.8, 84 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 39.2, 119.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 39.2, 119.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 51.8, 85.5 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 51.8, 85.5 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 35.2, 118.1 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 35.2, 118.1 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 51.1, 86.8 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 51.1, 86.8 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 11.6, 104.7 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 11.6, 104.7 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 50.1, 95.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 50.1, 95.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 59, 109.6 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 59, 109.6 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 68.5, 90 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 68.5, 90 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 78.7, 104.2 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 78.7, 104.2 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 82.8, 92.1 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 82.8, 92.1 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 81.6, 101.1 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 81.6, 101.1 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 9.2, 86.3 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 9.2, 86.3 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 26.6, 15.3 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 26.6, 15.3 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 32.5, -18.1 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 32.5, -18.1 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 36.6, -30.1 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 36.6, -30.1 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 39.5, -44.2 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 39.5, -44.2 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 41.8, -52.6 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 41.8, -52.6 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 43.7, -60.1 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 43.7, -60.1 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 45.2, -66.1 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 45.2, -66.1 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 46.3, -70.8 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 46.3, -70.8 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 47.2, -74.5 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 47.2, -74.5 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 47.8, -77.2 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 47.8, -77.2 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 48.3, -79.1 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 48.3, -79.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 48.6, -95.3 , 0 );

setScaleKey( spep_2 + 178 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 7.99, 7.99 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 7.99, 7.99 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.32, 0.32 );

setRotateKey( spep_2 + 178 + OFFSET_X, 1, -61.2 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -61.2 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, 41.2 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, 41.1 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, 41.1 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_2 + 264 + OFFSET_X, 1, 12.1 );

-- ** 音 ** --
--時とばし発動
SE026 = playSeVer2( spep_2 + 60, 1426, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE026, 85 );
setStartTimeMs( SE026,  333 );
SE027 = playSeVer2( spep_2 + 62, 1172, "",spep_2 + 192, 0, 60, -1);
setSeVolumeByWorkId( spep_2 + 62, SE027, 91 );
setPitch( spep_2 + 62, SE027, -100 );
setTimeStretch( SE027, 0.93, 30, 4 );
SE028 = playSeVer2( spep_2 + 62, 1264, "",spep_2 + 192, 0, 60, -1);
setSeVolumeByWorkId( spep_2 + 62, SE028, 111 );
setPitch( spep_2 + 62, SE028, -200 );
setTimeStretch( SE028, 0.87, 30, 4 );

--振りかぶる
SE029 = playSeVer2( spep_2 + 106, 1004, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 130, 1116, "",spep_2 + 178, 0, 26, -1);

--パンチ
SE031 = playSeVer2( spep_2 + 166, 1187, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 166, 1359, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 166, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 166, SE033, 76 );

--敵飛んでいく
SE034 = playSeVer2( spep_2 + 196, 1121, "",spep_2 + 276, 0, 38, -1);

--爆発
SE035 = playSeVer2( spep_2 + 244, 1159, "", 0, 0, 0, -1);

--振り返る
SE036 = playSeVer2( spep_2 + 372, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 372, SE036, 71 );
SE037 = playSeVer2( spep_2 + 386, 1192, "",spep_2 + 418, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 386, SE037, 78 );
SE038 = playSeVer2( spep_2 + 390, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 390, SE038, 158 );


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 360 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 終了フレーム  512f -2


end
