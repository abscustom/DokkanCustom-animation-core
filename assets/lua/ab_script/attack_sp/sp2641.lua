-- 1027680: UR_人造人間21号(変身・悪)_必殺技：アブソリュートリリースボール
-- sp_effect_a2_00230
-- sp2641

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162469;  -- 冒頭カットイン～カードカットインまで ef_001

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

ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_2 = 388 + 94;

        timing_skip = 32;

        skipFrame( 0, spep_2 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_2 + timing_skip, SP_001, spep_2 + timing_skip+2, 1);

        -- ** 音 ** --
        --気弾溜め
        SE031 = playSeVer2( spep_2 + 32+3, 1248, "", 0, 8, 0, -1);
        setStartTimeMs( SE031,  233 );
        SE033 = playSeVer2( spep_2 + 34+3, 1158, "",spep_2 + 102, 0, 24, -1);
        SE034 = playSeVer2( spep_2 + 34+3, 1199, "", 0, 0, 0, -1);
        SE035 = playSeVer2( spep_2 + 34+3, 1240, "",spep_2 + 86, 0, 16, -1);
        setSeVolumeByWorkId( spep_2 + 34+3, SE035, 120 );
        SE036 = playSeVer2( spep_2 + 34+3, 1296, "",spep_2 + 80, 0, 10, -1);
    else
        setupMovie(0, SP_001, 2, 1);
    end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭カットイン～カードカットインまで
------------------------------------------------------
MAX_FRAME_0 = 388;

--setupMovie(0, SP_001, 2, 1);

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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0, 515.5 , 0 );
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
setDisp(spep_0 + 180 + OFFSET_X, 1, 1)
setDisp(spep_0 + 318 + OFFSET_X, 1, 0)

changeAnime( spep_0 + 180 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 242 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 288 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 180 + OFFSET_X, 1, -86.9, 21.5 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -86.9, 21.5 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -39.2, 29.7 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -39.2, 29.7 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -15.9, 43 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -15.9, 43 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -13.3, 69.4 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -13.3, 69.4 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -8.3, 49 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -8.3, 49 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -9.7, 65.3 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -9.7, 65.3 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -6.4, 50 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -6.4, 50 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -6.8, 61 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -6.8, 61 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -4.9, 50.8 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -4.9, 50.8 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -4.9, 59.1 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -4.9, 59.1 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -3.7, 51.4 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -3.7, 51.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -3.3, 51.7 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -3.3, 51.7 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -3, 51.9 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -3, 51.9 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -2.7, 52.1 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -2.7, 52.1 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -2.5, 52.2 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -2.5, 52.2 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -2.3, 52.3 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -2.3, 52.3 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -2.2, 52.3 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -2.2, 52.3 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -0.1, 22.3 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -0.1, 22.3 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 1.2, 4.4 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 1.2, 4.4 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 1.7, -1.6 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 1.7, -1.6 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 1.4, -2.4 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 1.4, -2.4 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 1.2, -3.2 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 1.2, -3.2 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 1, -4 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 1, -4 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 0.7, -4.7 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 0.7, -4.7 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 0.5, -5.4 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 0.5, -5.4 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 0.3, -6.1 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 0.3, -6.1 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 0.2, -6.7 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 0.2, -6.7 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 0, -7.2 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 0, -7.2 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -0.1, -7.6 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -0.1, -7.6 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -0.2, -8 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -0.2, -8 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -0.2, -8.4 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -0.2, -8.4 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 79.8, 9.5 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 79.8, 9.5 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 81.8, 8.6 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 81.8, 8.6 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 83.7, 7.6 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 83.7, 7.6 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 85.7, 6.7 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 85.7, 6.7 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 87.6, 5.8 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 87.6, 5.8 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 89.4, 4.9 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 89.4, 4.9 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 91.2, 4.1 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 91.2, 4.1 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 92.8, 3.3 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 92.8, 3.3 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 94.3, 2.6 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 94.3, 2.6 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 95.6, 1.9 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 95.6, 1.9 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 96.9, 1.4 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 96.9, 1.4 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 98, 0.8 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 98, 0.8 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 99, 0.4 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 99, 0.4 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 99.8, 0 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 99.8, 0 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 100.6, -0.4 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 100.6, -0.4 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 101.3, -0.7 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 101.3, -0.7 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 101.9, -1 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 101.9, -1 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 102.4, -1.3 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 102.4, -1.3 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 102.8, -1.5 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 102.8, -1.5 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 103.2, -1.7 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 103.2, -1.7 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 103.5, -1.8 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 103.5, -1.8 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 103.8, -1.9 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 103.8, -1.9 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 104, -2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 104, -2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 102.2, -167.8 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 102.2, -167.8 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 164.7, -284.2 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 164.7, -284.2 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 200.2, -371.1 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 200.2, -371.1 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 387.3, -750.3 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 387.3, -750.3 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 494.3, -981.1 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 494.3, -981.1 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -248.5, 313.6 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -248.5, 313.6 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -222.4, 281.7 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -222.4, 281.7 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -212, 271.6 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -212, 271.6 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -194.7, 254.7 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -194.7, 254.7 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -170.5, 231 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -170.5, 231 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -139.3, 200.6 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -139.3, 200.6 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -101.2, 163.4 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -101.2, 163.4 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -56.2, 119.4 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -56.2, 119.4 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -4.2, 68.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -4.2, 68.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 54.7, 11.2 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 54.7, 11.2 , 0 );

setScaleKey( spep_0 + 180 + OFFSET_X, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 0.36, 0.36 );

setRotateKey( spep_0 + 180 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, -19 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, -19 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -20 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -20 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -20.4 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, -20.4 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, -21.2 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, -21.2 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, -26.2 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -26.2 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -25.8 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -25.8 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, -25 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -25 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -24.3 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -24.3 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -24 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, -24 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, 10.7 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, 10.7 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, 10.9 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, 10.9 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, 11.1 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, 11.1 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, 11.9 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, 11.9 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, 74.9 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, 74.9 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, 82.4 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, 82.4 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE009, 71 );
SE010 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE010, 71 );
SE013 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE013, 71 );
--浮く
SE006 = playSeVer2( spep_0 + 84, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE006, 188 );
SE007 = playSeVer2( spep_0 + 84, 44, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 84, 1232, "", 0, 0, 0, -1);
--向かってくる
SE011 = playSeVer2( spep_0 + 118, 1182, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 118, 9, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 158;  -- エンドフェイズのフレーム数を置き換える

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
stopSe( SP_dodge - 12, SE00X, 0);
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
--回避しなかった場合
-----------------------------
-- ** 音 ** --
--オーラ
SE014 = playSeVer2( spep_0 + 168, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE014, 71 );
SE017 = playSeVer2( spep_0 + 192, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE017, 71 );
SE020 = playSeVer2( spep_0 + 216, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE020, 71 );
SE021 = playSeVer2( spep_0 + 240, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE021, 71 );
SE023 = playSeVer2( spep_0 + 264, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE023, 71 );
SE025 = playSeVer2( spep_0 + 288, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE025, 71 );
--殴る
SE015 = playSeVer2( spep_0 + 176, 1187, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 176, 1180, "",spep_0 + 236, 0, 26, -1);
--ジャンプ
SE018 = playSeVer2( spep_0 + 214, 1116, "",spep_0 + 258, 0, 24, -1);
SE019 = playSeVer2( spep_0 + 214, 1117, "",spep_0 + 264, 0, 28, -1);
--画面遷移
SE022 = playSeVer2( spep_0 + 236, 1232, "", 0, 0, 0, -1);
--殴りとばす
SE024 = playSeVer2( spep_0 + 284, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 284, SE024, 170 );
SE026 = playSeVer2( spep_0 + 288, 1120, "", 0, 0, 0, -1);
--飛んでいく
SE027 = playSeVer2( spep_0 + 290, 1121, "",spep_0 + 340, 0, 12, -1);
--岩激突
SE028 = playSeVer2( spep_0 + 318, 1159, "",spep_0 + 406, 0, 14, -1);
--瞬間移動
SE029 = playSeVer2( spep_0 + 356, 1235, "",spep_0 + 406, 0, 22, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 388

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0)+4;

------------------------------------------------------
-- カードカットインからフィニッシュまで
------------------------------------------------------
MAX_FRAME_2 = 292;

-- ** 音 ** --
--気弾溜め
SE031 = playSeVer2( spep_2 + 0, 1248, "", 0, 8, 0, -1);
setStartTimeMs( SE031,  233 );
SE033 = playSeVer2( spep_2 + 2, 1158, "",spep_2 + 102, 0, 24, -1);
SE034 = playSeVer2( spep_2 + 2, 1199, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 2, 1240, "",spep_2 + 86, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 2, SE035, 120 );
SE036 = playSeVer2( spep_2 + 2, 1296, "",spep_2 + 80, 0, 10, -1);
--オーラ
SE032 = playSeVer2( spep_2 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE032, 63 );
SE037 = playSeVer2( spep_2 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE037, 63 );
SE038 = playSeVer2( spep_2 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE038, 63 );
SE047 = playSeVer2( spep_2 + 168, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 168, SE047, 56 );
SE048 = playSeVer2( spep_2 + 192, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 192, SE048, 56 );
SE049 = playSeVer2( spep_2 + 216, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 216, SE049, 56 );
SE050 = playSeVer2( spep_2 + 240, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 240, SE050, 56 );
--気弾発射
SE039 = playSeVer2( spep_2 + 86, 1212, "",spep_2 + 144, 18, 12, -1);
setSeVolumeByWorkId( spep_2 + 86, SE039, 75 );
setStartTimeMs( SE039,  600 );
SE040 = playSeVer2( spep_2 + 70, 1027, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 70, 1193, "",spep_2 + 144, 0, 12, 0.6);
SE042 = playSeVer2( spep_2 + 70, 1201, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 70, SE042, 136 );
--気弾飛んでいく
SE043 = playSeVer2( spep_2 + 90, 1202, "",spep_2 + 146, 0, 6, 0.6);
setSeVolumeByWorkId( spep_2 + 90, SE043, 172 );
--爆発
SE044 = playSeVer2( spep_2 + 136, 1159, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 156, 1067, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 180 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 292

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
spep_0 = 0;

------------------------------------------------------
-- 冒頭カットイン～カードカットインまで
------------------------------------------------------
MAX_FRAME_0 = 388;

setupMovie(0, SP_001, 2, 1);

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );
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

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0, 515.5 , 0 );
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
setDisp(spep_0 + 180 + OFFSET_X, 1, 1)
setDisp(spep_0 + 318 + OFFSET_X, 1, 0)

changeAnime( spep_0 + 180 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 242 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 288 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 180 + OFFSET_X, 1, -86.9, 21.5 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -86.9, 21.5 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -39.2, 29.7 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -39.2, 29.7 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -15.9, 43 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -15.9, 43 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -13.3, 69.4 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -13.3, 69.4 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -8.3, 49 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -8.3, 49 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -9.7, 65.3 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -9.7, 65.3 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -6.4, 50 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -6.4, 50 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -6.8, 61 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -6.8, 61 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -4.9, 50.8 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -4.9, 50.8 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -4.9, 59.1 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -4.9, 59.1 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -3.7, 51.4 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -3.7, 51.4 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -3.3, 51.7 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -3.3, 51.7 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -3, 51.9 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -3, 51.9 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -2.7, 52.1 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -2.7, 52.1 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -2.5, 52.2 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -2.5, 52.2 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -2.3, 52.3 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -2.3, 52.3 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -2.2, 52.3 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -2.2, 52.3 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -0.1, 22.3 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -0.1, 22.3 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 1.2, 4.4 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 1.2, 4.4 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 1.7, -1.6 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 1.7, -1.6 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 1.4, -2.4 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 1.4, -2.4 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 1.2, -3.2 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 1.2, -3.2 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 1, -4 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 1, -4 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 0.7, -4.7 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 0.7, -4.7 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 0.5, -5.4 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 0.5, -5.4 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 0.3, -6.1 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 0.3, -6.1 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 0.2, -6.7 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 0.2, -6.7 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 0, -7.2 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 0, -7.2 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -0.1, -7.6 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -0.1, -7.6 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -0.2, -8 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -0.2, -8 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -0.2, -8.4 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -0.2, -8.4 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -79.8, 9.5 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -79.8, 9.5 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -81.8, 8.6 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -81.8, 8.6 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -83.7, 7.6 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -83.7, 7.6 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -85.7, 6.7 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -85.7, 6.7 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -87.6, 5.8 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -87.6, 5.8 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -89.4, 4.9 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -89.4, 4.9 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -91.2, 4.1 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -91.2, 4.1 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -92.8, 3.3 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -92.8, 3.3 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -94.3, 2.6 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -94.3, 2.6 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -95.6, 1.9 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -95.6, 1.9 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -96.9, 1.4 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -96.9, 1.4 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -98, 0.8 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -98, 0.8 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -99, 0.4 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -99, 0.4 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -99.8, 0 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -99.8, 0 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -100.6, -0.4 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -100.6, -0.4 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -101.3, -0.7 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -101.3, -0.7 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -101.9, -1 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -101.9, -1 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -102.4, -1.3 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -102.4, -1.3 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -102.8, -1.5 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -102.8, -1.5 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -103.2, -1.7 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -103.2, -1.7 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -103.5, -1.8 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -103.5, -1.8 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -103.8, -1.9 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -103.8, -1.9 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -104, -2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -104, -2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -102.2, -167.8 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -102.2, -167.8 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -164.7, -284.2 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -164.7, -284.2 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -200.2, -371.1 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -200.2, -371.1 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -387.3, -750.3 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -387.3, -750.3 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -494.3, -981.1 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -494.3, -981.1 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 248.5, 313.6 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 248.5, 313.6 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 222.4, 281.7 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 222.4, 281.7 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 212, 271.6 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 212, 271.6 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 194.7, 254.7 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 194.7, 254.7 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 170.5, 231 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 170.5, 231 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 139.3, 200.6 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 139.3, 200.6 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 101.2, 163.4 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 101.2, 163.4 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 56.2, 119.4 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 56.2, 119.4 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 4.2, 68.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 4.2, 68.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -54.7, 11.2 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -54.7, 11.2 , 0 );

setScaleKey( spep_0 + 180 + OFFSET_X, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 5.17, 5.17 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 3.3, 3.3 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 0.36, 0.36 );

setRotateKey( spep_0 + 180 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, -17.6 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, -19 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, -19 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -20 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -20 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -20.4 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, -20.4 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, -20.8 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, -21 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, -21.2 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, -21.2 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, -21.7 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -24.4 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, -26.2 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -26.2 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -25.8 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -25.8 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, -25 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -25 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -24.3 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -24.3 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -24 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, -24 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -11.3 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -11.3 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -11.5 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -11.5 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -11.9 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -11.9 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, -12.1 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, -12.1 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, -12.4 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, -12.4 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -74.9 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -74.9 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -82.4 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, -82.4 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE009, 71 );
SE010 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE010, 71 );
SE013 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE013, 71 );
--浮く
SE006 = playSeVer2( spep_0 + 84, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE006, 188 );
SE007 = playSeVer2( spep_0 + 84, 44, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 84, 1232, "", 0, 0, 0, -1);
--向かってくる
SE011 = playSeVer2( spep_0 + 118, 1182, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 118, 9, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 158;  -- エンドフェイズのフレーム数を置き換える

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
stopSe( SP_dodge - 12, SE00X, 0);
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
--回避しなかった場合
-----------------------------
-- ** 音 ** --
--オーラ
SE014 = playSeVer2( spep_0 + 168, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 168, SE014, 71 );
SE017 = playSeVer2( spep_0 + 192, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE017, 71 );
SE020 = playSeVer2( spep_0 + 216, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE020, 71 );
SE021 = playSeVer2( spep_0 + 240, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 240, SE021, 71 );
SE023 = playSeVer2( spep_0 + 264, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE023, 71 );
SE025 = playSeVer2( spep_0 + 288, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 288, SE025, 71 );
--殴る
SE015 = playSeVer2( spep_0 + 176, 1187, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 176, 1180, "",spep_0 + 236, 0, 26, -1);
--ジャンプ
SE018 = playSeVer2( spep_0 + 214, 1116, "",spep_0 + 258, 0, 24, -1);
SE019 = playSeVer2( spep_0 + 214, 1117, "",spep_0 + 264, 0, 28, -1);
--画面遷移
SE022 = playSeVer2( spep_0 + 236, 1232, "", 0, 0, 0, -1);
--殴りとばす
SE024 = playSeVer2( spep_0 + 284, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 284, SE024, 170 );
SE026 = playSeVer2( spep_0 + 288, 1120, "", 0, 0, 0, -1);
--飛んでいく
SE027 = playSeVer2( spep_0 + 290, 1121, "",spep_0 + 340, 0, 12, -1);
--岩激突
SE028 = playSeVer2( spep_0 + 318, 1159, "",spep_0 + 406, 0, 14, -1);
--瞬間移動
SE029 = playSeVer2( spep_0 + 356, 1235, "",spep_0 + 406, 0, 22, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 388

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0)+4;

------------------------------------------------------
-- カードカットインからフィニッシュまで
------------------------------------------------------
MAX_FRAME_2 = 292;

-- ** 音 ** --
--気弾溜め
SE031 = playSeVer2( spep_2 + 0, 1248, "", 0, 8, 0, -1);
setStartTimeMs( SE031,  233 );
SE033 = playSeVer2( spep_2 + 2, 1158, "",spep_2 + 102, 0, 24, -1);
SE034 = playSeVer2( spep_2 + 2, 1199, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 2, 1240, "",spep_2 + 86, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 2, SE035, 120 );
SE036 = playSeVer2( spep_2 + 2, 1296, "",spep_2 + 80, 0, 10, -1);
--オーラ
SE032 = playSeVer2( spep_2 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE032, 63 );
SE037 = playSeVer2( spep_2 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE037, 63 );
SE038 = playSeVer2( spep_2 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE038, 63 );
SE047 = playSeVer2( spep_2 + 168, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 168, SE047, 56 );
SE048 = playSeVer2( spep_2 + 192, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 192, SE048, 56 );
SE049 = playSeVer2( spep_2 + 216, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 216, SE049, 56 );
SE050 = playSeVer2( spep_2 + 240, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 240, SE050, 56 );
--気弾発射
SE039 = playSeVer2( spep_2 + 86, 1212, "",spep_2 + 144, 18, 12, -1);
setSeVolumeByWorkId( spep_2 + 86, SE039, 75 );
setStartTimeMs( SE039,  600 );
SE040 = playSeVer2( spep_2 + 70, 1027, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 70, 1193, "",spep_2 + 144, 0, 12, 0.6);
SE042 = playSeVer2( spep_2 + 70, 1201, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 70, SE042, 136 );
--気弾飛んでいく
SE043 = playSeVer2( spep_2 + 90, 1202, "",spep_2 + 146, 0, 6, 0.6);
setSeVolumeByWorkId( spep_2 + 90, SE043, 172 );
--爆発
SE044 = playSeVer2( spep_2 + 136, 1159, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 156, 1067, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 180 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 292

end
