-- 1030640:UR_グロリオ_必殺技：フラッシュボルト
-- sp_effect_a4_00026
-- sp2810

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 共通
--SP_001 = 163518;  -- 冒頭腕上げ ef_001
SP_002 = 163519;  -- 技攻撃からラストまで ef_002

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

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭腕上げ ef_001
------------------------------------------------------
MAX_FRAME_0 = 148;

setupMovie(0 , SP_002, 0, 1);

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

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 168, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--腕上げる
SE003 = playSeVer2( spep_0 + 84, 1004, "", 0, 0, 0, -1);
setPitch( spep_0 + 84, SE003, -600 );
setTimeStretch( SE003, 0.6, 30, 4 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 148f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--気弾溜め
SE005 = playSeVer2( spep_1 + 40, 1442, "",spep_2 + 84, 0, 36, -1);
setSeVolumeByWorkId( spep_1 + 40, SE005, 216 );

------------------------------------------------------
-- 技攻撃からラストまで ef_002
------------------------------------------------------
MAX_FRAME_2 = 614;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- 技攻撃からラストまで ef_002
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

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 146 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 236 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 146 + OFFSET_X, 1, 117 );

setMoveKey( spep_2 + 146 + OFFSET_X, 1, 263.7, -88 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 263.7, -88 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 262.3, -88 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 262.3, -88 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 260.9, -88 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 260.9, -88 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 259.5, -88 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 259.5, -88 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 258.1, -88 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 258.1, -88 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 256.7, -88 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 256.7, -88 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 255.3, -88 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 255.3, -88 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 253.9, -88 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 253.9, -88 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 252.5, -88 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 252.5, -88 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 251.1, -88 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 251.1, -88 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 249.7, -88 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 249.7, -88 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 248.3, -88 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 248.3, -88 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 246.9, -88 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 246.9, -88 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 245.5, -88 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 245.5, -88 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 244.1, -88 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 244.1, -88 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 242.7, -88 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 242.7, -88 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 241.3, -88 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 241.3, -88 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 239.9, -88 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 239.9, -88 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 238.5, -88 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 238.5, -88 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 237.1, -88 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 237.1, -88 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 235.7, -88 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 235.7, -88 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 234.3, -88 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 234.3, -88 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 232.9, -88 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 232.9, -88 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 231.5, -88 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 231.5, -88 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 230.1, -88 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 230.1, -88 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 228.7, -88 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 228.7, -88 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 227.3, -88 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 227.3, -88 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 225.9, -88 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 225.9, -88 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 224.5, -88 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 224.5, -88 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 223.1, -88 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 223.1, -88 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 221.7, -88 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 221.7, -88 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 220.3, -88 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 220.3, -88 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 218.9, -88 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 218.9, -88 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 217.5, -88 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 217.5, -88 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 216, -88 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 216, -88 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 214.6, -87.9 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 214.6, -87.9 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 213.2, -87.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 213.2, -87.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 211.8, -87.9 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 211.8, -87.9 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 210.4, -87.9 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 210.4, -87.9 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 209, -87.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 209, -87.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 207.6, -87.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 207.6, -87.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 206.2, -87.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 206.2, -87.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 204.8, -87.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 204.8, -87.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 203.4, -87.9 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 203.4, -87.9 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 202, -87.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 202, -87.9 , 0 );

setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.63, 0.63 );

setRotateKey( spep_2 + 146 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 0 );

setAlphaKey( spep_2 + 146 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 236 + OFFSET_X, 1, 255 );

-- 敵の動き2
setDisp( spep_2 + 416 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 496 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 416 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 472 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 476 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 480 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 484 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 488 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 492 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 416 + OFFSET_X, 1, -67.1, -1973.9 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -67.1, -1973.9 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -88.2, -1912.3 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, -88.2, -1912.3 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, -69.4, -1766.9 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, -69.4, -1766.9 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, -74.6, -1590.5 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, -74.6, -1590.5 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, -55.7, -1441.6 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, -55.7, -1441.6 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -40.1, -1312.9 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, -40.1, -1312.9 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, -25.6, -1200.1 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, -25.6, -1200.1 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, -15.2, -1083 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, -15.2, -1083 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, -19.2, -987.5 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, -19.2, -987.5 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, -23.2, -906.2 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, -23.2, -906.2 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, -19.2, -836.2 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, -19.2, -836.2 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -15.2, -773.5 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, -15.2, -773.5 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, -19.1, -718 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, -19.1, -718 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -23.1, -647.3 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, -23.1, -647.3 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -21.1, -596.6 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, -21.1, -596.6 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -19.1, -545.3 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -19.1, -545.3 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -17, -515.1 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, -17, -515.1 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -15.1, -473.7 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, -15.1, -473.7 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -19, -455.6 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, -19, -455.6 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -23, -419.9 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, -23, -419.9 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, -18.9, -387.8 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, -18.9, -387.8 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, -14.9, -357.7 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, -14.9, -357.7 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, -18.9, -331 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, -18.9, -331 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, -22.9, -306 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, -22.9, -306 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, -20.8, -278.7 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, -20.8, -278.7 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, -0.1, 20.2 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, -0.1, 20.2 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 0.8, -69.1 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 0.8, -69.1 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 30.9, 41.1 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 30.9, 41.1 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -1.2, -18.2 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, -1.2, -18.2 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 0.8, -40.2 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 0.8, -40.2 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -3.3, 25.3 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, -3.3, 25.3 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 25.7, -1.7 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 25.7, -1.7 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 5.8, -62 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 5.8, -62 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 6.8, -40 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 6.8, -40 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 34, -69.7 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 34, -69.7 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 25, -45.7 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 25, -45.7 , 0 );

setScaleKey( spep_2 + 416 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 465 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 466 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 471 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 472 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 475 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 479 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 480 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 483 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 484 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 487 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 488 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 491 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 492 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 496 + OFFSET_X, 1, 1.67, 1.67 );

setRotateKey( spep_2 + 416 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 417 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 418 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 419 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 420 + OFFSET_X, 1, -12 );
setRotateKey( spep_2 + 421 + OFFSET_X, 1, -12 );
setRotateKey( spep_2 + 422 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 423 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 424 + OFFSET_X, 1, -9 );
setRotateKey( spep_2 + 425 + OFFSET_X, 1, -9 );
setRotateKey( spep_2 + 426 + OFFSET_X, 1, -8 );
setRotateKey( spep_2 + 427 + OFFSET_X, 1, -8 );
setRotateKey( spep_2 + 428 + OFFSET_X, 1, -7 );
setRotateKey( spep_2 + 429 + OFFSET_X, 1, -7 );
setRotateKey( spep_2 + 430 + OFFSET_X, 1, -6 );
setRotateKey( spep_2 + 431 + OFFSET_X, 1, -6 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, -5.4 );
setRotateKey( spep_2 + 433 + OFFSET_X, 1, -5.4 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_2 + 435 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_2 + 437 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_2 + 438 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 439 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 440 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_2 + 441 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_2 + 442 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_2 + 443 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 445 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 446 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_2 + 449 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_2 + 451 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_2 + 453 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 455 + OFFSET_X, 1, -2 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_2 + 457 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_2 + 458 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_2 + 459 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_2 + 460 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_2 + 461 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_2 + 462 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 463 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_2 + 464 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 465 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 466 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 471 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 472 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 475 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 476 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 479 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 480 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 483 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 484 + OFFSET_X, 1, 35 );
setRotateKey( spep_2 + 487 + OFFSET_X, 1, 35 );
setRotateKey( spep_2 + 488 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 491 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 492 + OFFSET_X, 1, 40 );
setRotateKey( spep_2 + 496 + OFFSET_X, 1, 40 );

setAlphaKey( spep_2 + 416 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 483 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 484 + OFFSET_X, 1, 191 );
setAlphaKey( spep_2 + 487 + OFFSET_X, 1, 191 );
setAlphaKey( spep_2 + 488 + OFFSET_X, 1, 128 );
setAlphaKey( spep_2 + 491 + OFFSET_X, 1, 128 );
setAlphaKey( spep_2 + 492 + OFFSET_X, 1, 64 );
setAlphaKey( spep_2 + 495 + OFFSET_X, 1, 64 );
setAlphaKey( spep_2 + 496 + OFFSET_X, 1, 255 );

setBlendColor( spep_2 + 416 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 472 + OFFSET_X, 1, 3, 0, 0, 0, 0.9 );
setBlendColor( spep_2 + 492 + OFFSET_X, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_2 + 496 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--気弾溜め
SE006 = playSeVer2( spep_2 + 4, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE006, 146 );
SE007 = playSeVer2( spep_2 + 4, 1393, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 4, 1356, "",spep_2 + 386, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 4, SE008, 79 );
SE009 = playSeVer2( spep_2 + 6, 1154, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 6, 1243, "",spep_2 + 466, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 6, SE010, 72 );
SE011 = playSeVer2( spep_2 + 6, 1362, "", 0, 0, 0, -1);
setPitch( spep_2 + 6, SE011, 900 );
setTimeStretch( SE011, 1.6, 30, 4 );
SE012 = playSeVer2( spep_2 + 56, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE012, 84 );
SE014 = playSeVer2( spep_2 + 262, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 262, SE014, 81 );

--画面遷移
SE013 = playSeVer2( spep_2 + 234, 1232, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 234, 1243, "",spep_2 + 614, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 234, SE030, 72 );

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 348;  -- エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE030, 0);

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
--気弾発射
SE015 = playSeVer2( spep_2 + 350, 1256, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 350, 1312, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 350, 1423, "",spep_2 + 502, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 350, SE017, 63 );
SE018 = playSeVer2( spep_2 + 350, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 350, SE018, 61 );
SE019 = playSeVer2( spep_2 + 352, 1212, "",spep_2 + 482, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 352, SE019, 71 );

--敵ヒット
SE020 = playSeVer2( spep_2 + 458, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 458, SE020, 164 );
SE021 = playSeVer2( spep_2 + 458, 1213, "",spep_2 + 614, 0, 172, -1);
setSeVolumeByWorkId( spep_2 + 458, SE021, 73 );
SE022 = playSeVer2( spep_2 + 458, 1067, "", 0, 0, 0, -1);

--煙
--SE023 = playSeVer2( spep_2 + 486, 1219, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 496 );
endPhase( spep_2 + MAX_FRAME_2 - 4);  -- 614f -4f


else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭腕上げ ef_001
------------------------------------------------------
MAX_FRAME_0 = 148;

setupMovie(0 , SP_002, 0, 1);

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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 168, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--腕上げる
SE003 = playSeVer2( spep_0 + 84, 1004, "", 0, 0, 0, -1);
setPitch( spep_0 + 84, SE003, -600 );
setTimeStretch( SE003, 0.6, 30, 4 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 148f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--気弾溜め
SE005 = playSeVer2( spep_1 + 40, 1442, "",spep_2 + 84, 0, 36, -1);
setSeVolumeByWorkId( spep_1 + 40, SE005, 216 );

------------------------------------------------------
-- 技攻撃からラストまで ef_002
------------------------------------------------------
MAX_FRAME_2 = 614;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- 技攻撃からラストまで ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 146 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 236 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 146 + OFFSET_X, 1, 17 );

setMoveKey( spep_2 + 146 + OFFSET_X, 1, -263.7, -88 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -263.7, -88 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -262.3, -88 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -262.3, -88 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -260.9, -88 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -260.9, -88 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -259.5, -88 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -259.5, -88 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -258.1, -88 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -258.1, -88 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -256.7, -88 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -256.7, -88 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -255.3, -88 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -255.3, -88 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -253.9, -88 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -253.9, -88 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -252.5, -88 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -252.5, -88 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -251.1, -88 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -251.1, -88 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -249.7, -88 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -249.7, -88 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -248.3, -88 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -248.3, -88 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -246.9, -88 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -246.9, -88 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -245.5, -88 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -245.5, -88 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -244.1, -88 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -244.1, -88 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -242.7, -88 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -242.7, -88 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -241.3, -88 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -241.3, -88 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -239.9, -88 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -239.9, -88 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -238.5, -88 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -238.5, -88 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -237.1, -88 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -237.1, -88 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -235.7, -88 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -235.7, -88 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -234.3, -88 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -234.3, -88 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -232.9, -88 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -232.9, -88 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -231.5, -88 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -231.5, -88 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -230.1, -88 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -230.1, -88 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -228.7, -88 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -228.7, -88 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -227.3, -88 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -227.3, -88 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -225.9, -88 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -225.9, -88 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -224.5, -88 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -224.5, -88 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -223.1, -88 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -223.1, -88 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -221.7, -88 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -221.7, -88 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -220.3, -88 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -220.3, -88 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -218.9, -88 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -218.9, -88 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -217.5, -88 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -217.5, -88 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -216, -88 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -216, -88 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -214.6, -87.9 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -214.6, -87.9 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -213.2, -87.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -213.2, -87.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -211.8, -87.9 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -211.8, -87.9 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -210.4, -87.9 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -210.4, -87.9 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -209, -87.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -209, -87.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -207.6, -87.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -207.6, -87.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -206.2, -87.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -206.2, -87.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -204.8, -87.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -204.8, -87.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -203.4, -87.9 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -203.4, -87.9 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -202, -87.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -202, -87.9 , 0 );

setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.63, 0.63 );

setRotateKey( spep_2 + 146 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 0 );

setAlphaKey( spep_2 + 146 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 236 + OFFSET_X, 1, 255 );

-- 敵の動き2
setDisp( spep_2 + 416 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 496 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 416 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 472 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 476 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 480 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 484 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 488 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 492 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 416 + OFFSET_X, 1, 67.1, -1973.9 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 67.1, -1973.9 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 88.2, -1912.3 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 88.2, -1912.3 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 69.4, -1766.9 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 69.4, -1766.9 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 74.6, -1590.5 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 74.6, -1590.5 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 55.7, -1441.6 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 55.7, -1441.6 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 40.1, -1312.9 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 40.1, -1312.9 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 25.6, -1200.1 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 25.6, -1200.1 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 15.2, -1083 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 15.2, -1083 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 19.2, -987.5 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 19.2, -987.5 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 23.2, -906.2 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 23.2, -906.2 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 19.2, -836.2 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 19.2, -836.2 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 15.2, -773.5 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 15.2, -773.5 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 19.1, -718 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 19.1, -718 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 23.1, -647.3 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 23.1, -647.3 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 21.1, -596.6 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 21.1, -596.6 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 19.1, -545.3 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 19.1, -545.3 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 17, -515.1 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 17, -515.1 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 15.1, -473.7 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 15.1, -473.7 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 19, -455.6 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 19, -455.6 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 23, -419.9 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 23, -419.9 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 18.9, -387.8 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 18.9, -387.8 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 14.9, -357.7 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 14.9, -357.7 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 18.9, -331 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 18.9, -331 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 22.9, -306 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 22.9, -306 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 20.8, -278.7 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 20.8, -278.7 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 0.1, 20.2 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 0.1, 20.2 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, -0.8, -69.1 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, -0.8, -69.1 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, -30.9, 41.1 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, -30.9, 41.1 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 1.2, -18.2 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 1.2, -18.2 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -0.8, -40.2 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, -0.8, -40.2 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 3.3, 25.3 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 3.3, 25.3 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -25.7, -1.7 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, -25.7, -1.7 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -5.8, -62 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, -5.8, -62 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -6.8, -40 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, -6.8, -40 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -34, -69.7 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -34, -69.7 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -25, -45.7 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -25, -45.7 , 0 );

setScaleKey( spep_2 + 416 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 465 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 466 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 471 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_2 + 472 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 475 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 476 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 479 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 480 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 483 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 484 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 487 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 488 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 491 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 492 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 496 + OFFSET_X, 1, 1.67, 1.67 );

setRotateKey( spep_2 + 416 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 417 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 418 + OFFSET_X, 1, 14 );
setRotateKey( spep_2 + 419 + OFFSET_X, 1, 14 );
setRotateKey( spep_2 + 420 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 421 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 422 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 423 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 424 + OFFSET_X, 1, 9 );
setRotateKey( spep_2 + 425 + OFFSET_X, 1, 9 );
setRotateKey( spep_2 + 426 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 427 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 428 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 429 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 430 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 431 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 432 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 433 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_2 + 434 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_2 + 435 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_2 + 437 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_2 + 438 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 439 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 440 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 441 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_2 + 442 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_2 + 443 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 445 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_2 + 446 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 449 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_2 + 450 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 451 + OFFSET_X, 1, 2.4 );
setRotateKey( spep_2 + 452 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_2 + 453 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 455 + OFFSET_X, 1, 2 );
setRotateKey( spep_2 + 456 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_2 + 457 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_2 + 458 + OFFSET_X, 1, 1.6 );
setRotateKey( spep_2 + 459 + OFFSET_X, 1, 1.6 );
setRotateKey( spep_2 + 460 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_2 + 461 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_2 + 462 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_2 + 463 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_2 + 464 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_2 + 465 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_2 + 466 + OFFSET_X, 1, -6 );
setRotateKey( spep_2 + 471 + OFFSET_X, 1, -6 );
setRotateKey( spep_2 + 472 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 475 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 476 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 479 + OFFSET_X, 1, -30 );
setRotateKey( spep_2 + 480 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 483 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 484 + OFFSET_X, 1, -35 );
setRotateKey( spep_2 + 487 + OFFSET_X, 1, -35 );
setRotateKey( spep_2 + 488 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 491 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 492 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 496 + OFFSET_X, 1, -40 );

setAlphaKey( spep_2 + 416 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 483 + OFFSET_X, 1, 255 );
setAlphaKey( spep_2 + 484 + OFFSET_X, 1, 191 );
setAlphaKey( spep_2 + 487 + OFFSET_X, 1, 191 );
setAlphaKey( spep_2 + 488 + OFFSET_X, 1, 128 );
setAlphaKey( spep_2 + 491 + OFFSET_X, 1, 128 );
setAlphaKey( spep_2 + 492 + OFFSET_X, 1, 64 );
setAlphaKey( spep_2 + 495 + OFFSET_X, 1, 64 );
setAlphaKey( spep_2 + 496 + OFFSET_X, 1, 255 );

setBlendColor( spep_2 + 416 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 472 + OFFSET_X, 1, 3, 0, 0, 0, 0.9 );
setBlendColor( spep_2 + 492 + OFFSET_X, 1, 3, 0, 0, 0, 1.0 );
setBlendColor( spep_2 + 496 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--気弾溜め
SE006 = playSeVer2( spep_2 + 4, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE006, 146 );
SE007 = playSeVer2( spep_2 + 4, 1393, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 4, 1356, "",spep_2 + 386, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 4, SE008, 79 );
SE009 = playSeVer2( spep_2 + 6, 1154, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 6, 1243, "",spep_2 + 466, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 6, SE010, 72 );
SE011 = playSeVer2( spep_2 + 6, 1362, "", 0, 0, 0, -1);
setPitch( spep_2 + 6, SE011, 900 );
setTimeStretch( SE011, 1.6, 30, 4 );
SE012 = playSeVer2( spep_2 + 56, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE012, 84 );
SE014 = playSeVer2( spep_2 + 262, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 262, SE014, 81 );

--画面遷移
SE013 = playSeVer2( spep_2 + 234, 1232, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 234, 1243, "",spep_2 + 614, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 234, SE030, 72 );

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 348;  -- エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE030, 0);

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
--気弾発射
SE015 = playSeVer2( spep_2 + 350, 1256, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 350, 1312, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 350, 1423, "",spep_2 + 502, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 350, SE017, 63 );
SE018 = playSeVer2( spep_2 + 350, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 350, SE018, 61 );
SE019 = playSeVer2( spep_2 + 352, 1212, "",spep_2 + 482, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 352, SE019, 71 );

--敵ヒット
SE020 = playSeVer2( spep_2 + 458, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 458, SE020, 164 );
SE021 = playSeVer2( spep_2 + 458, 1213, "",spep_2 + 614, 0, 172, -1);
setSeVolumeByWorkId( spep_2 + 458, SE021, 73 );
SE022 = playSeVer2( spep_2 + 458, 1067, "", 0, 0, 0, -1);

--煙
--SE023 = playSeVer2( spep_2 + 486, 1219, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 496 );
endPhase( spep_2 + MAX_FRAME_2 - 4);  -- 614f -4f


end