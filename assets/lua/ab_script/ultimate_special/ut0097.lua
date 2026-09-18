--1031360:UR_餃子_アクティブ必殺技：超能力
--sp_effect_b1_00328
--ut0097

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163845 --超能力で敵を止める〜３連攻撃 ef_001
SP_01b = 163846 --超能力で敵を止める〜３連攻撃 ef_001b

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);

setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);

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
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 30 - 13);   -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 340 - 1);  -- スキップ先フレーム指定
       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 超能力で敵を止める〜３連攻撃
-------------------------------------------------

MAX_FRAME_0 = 498;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 超能力で敵を止める〜３連攻撃 (ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 超能力で敵を止める〜３連攻撃 (ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp(spep_0 + 140 + OFFSET_X, 1, 1);
setDisp(spep_0 + 232 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 140 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 160 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 140 + OFFSET_X, 1, 0, -44.1 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 0, -44.1 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 0.2, -43.7 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 0.2, -43.7 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 6.2, 27.7 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 6.2, 27.7 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 6.2, 30.3 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 6.2, 30.3 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 8.7, 25.3 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 8.7, 25.3 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 2.4, 30.3 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 2.4, 30.3 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 6.2, 17.8 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 6.2, 17.8 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 6.2, 30.3 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 6.2, 30.3 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 8.7, 25.3 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 8.7, 25.3 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 2.4, 30.3 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 2.4, 30.3 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 6.2, 17.8 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 6.2, 17.8 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 15.1, 34.1 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 15.1, 34.1 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 10, 36.7 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 10, 36.7 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 19, 22.6 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 19, 22.6 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 16.4, 35.6 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 16.4, 35.6 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 15.1, 34.1 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 15.1, 34.1 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 10, 36.7 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 10, 36.7 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 19, 22.6 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 19, 22.6 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 16.4, 35.6 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 16.4, 35.6 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 15.1, 34.1 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 15.1, 34.1 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 10, 36.7 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 10, 36.7 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 19, 22.6 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 19, 22.6 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 16.4, 35.6 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 16.4, 35.6 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 15.1, 34.1 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 15.1, 34.1 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 10, 36.7 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 10, 36.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 19, 22.6 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 19, 22.6 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 16.4, 35.6 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 16.4, 35.6 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 15.1, 34.1 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 15.1, 34.1 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 10, 36.7 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 10, 36.7 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 19, 22.6 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 19, 22.6 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 16.4, 35.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 16.4, 35.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 15.1, 34.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 15.1, 34.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 10, 36.7 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 10, 36.7 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 19, 22.6 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 19, 22.6 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 16.4, 35.6 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 16.4, 35.6 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 15.1, 34.1 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 15.1, 34.1 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 10, 36.7 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 10, 36.7 , 0 );

setScaleKey( spep_0 + 140 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 2.4, 2.4 );

setRotateKey( spep_0 + 140 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, -46.6 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -46.6 );

setBlendColor( spep_0 + 140 + OFFSET_X, 1, 0, 0, 0, 0, 0 );
setBlendColor( spep_0 + 150 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_0 + 160 + OFFSET_X, 1, 0, 0, 0, 0, 0 );


--敵の動き2
setDisp(spep_0 + 290 + OFFSET_X, 1, 1);
setDisp(spep_0 + 500 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 308 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 324 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 356 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 400 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 290 + OFFSET_X, 1, 221.4, 76.9 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 221.4, 76.9 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 220.9, 89.2 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 220.9, 89.2 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 217.9, 76.6 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 217.9, 76.6 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 209.7, 86.4 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 209.7, 86.4 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 193.8, 77.9 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 193.8, 77.9 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 167.6, 86.1 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 167.6, 86.1 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 128.5, 73.8 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 128.5, 73.8 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 73.9, 68.8 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 73.9, 68.8 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 1.3, 62.2 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 1.3, 62.2 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 15.3, 80 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 15.3, 80 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 76.1, 204.9 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 76.1, 204.9 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 106.6, 128.8 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 106.6, 128.8 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 124, 132.4 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 124, 132.4 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 132.8, 99.3 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 132.8, 99.3 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 129.5, 101.4 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 129.5, 101.4 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 122.9, 98.3 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 122.9, 98.3 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 113.6, 97.6 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 113.6, 97.6 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 33.8, 96.2 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 33.8, 96.2 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 60.7, 116.3 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 60.7, 116.3 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 99.5, 141.5 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 99.5, 141.5 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 131.7, 126.5 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 131.7, 126.5 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 157.8, 131.4 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 157.8, 131.4 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 178.4, 124.2 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 178.4, 124.2 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 194.1, 123.2 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 194.1, 123.2 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 205.2, 122.1 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 205.2, 122.1 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 212.1, 120.9 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 212.1, 120.9 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 215.2, 119.7 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 215.2, 119.7 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 215.2, 118.3 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 215.2, 118.3 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 212.4, 116.8 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 212.4, 116.8 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 207.5, 115.3 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 207.5, 115.3 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 200.8, 113.8 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 200.8, 113.8 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 193.1, 112.2 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 193.1, 112.2 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 184.8, 110.7 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 184.8, 110.7 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 245.8, 205.3 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 245.8, 205.3 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 264.7, 188.9 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 264.7, 188.9 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 234.8, 246.1 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 234.8, 246.1 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 206.6, 185.7 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 206.6, 185.7 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 246.8, 261.1 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 246.8, 261.1 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 214.8, 197.7 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 214.8, 197.7 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 217.8, 216.1 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 217.8, 216.1 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 210.9, 220.6 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 210.9, 220.6 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 214.2, 218.1 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 214.2, 218.1 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 224.2, 215.6 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 224.2, 215.6 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 247.4, 213.2 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 247.4, 213.2 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 333.8, 210.9 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 333.8, 210.9 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -750.4, -12.7 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -750.4, -12.7 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -537.7, -34.3 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -537.7, -34.3 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -351.3, -53.4 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -351.3, -53.4 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -191.4, -70 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -191.4, -70 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -57.8, -84 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -57.8, -84 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 49.4, -95.5 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 49.4, -95.5 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 130.2, -104.4 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 130.2, -104.4 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 184.6, -110.8 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 184.6, -110.8 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 212.6, -114.6 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 212.6, -114.6 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 214.2, -115.9 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 214.2, -115.9 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 179.9, -99.8 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 179.9, -99.8 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 168, -71.8 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 168, -71.8 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 194.7, -30.3 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 194.7, -30.3 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 171.9, -111.9 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 171.9, -111.9 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 187.7, -46.9 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 187.7, -46.9 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 183.9, -99.8 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 183.9, -99.8 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 183.9, -55.8 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 183.9, -55.8 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 179.9, -87.8 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 179.9, -87.8 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 187.9, -39.8 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 187.9, -39.8 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 183.9, -83.8 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 183.9, -83.8 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 175.9, -39.8 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 175.9, -39.8 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 171.9, -71.8 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 171.9, -71.8 , 0 );

setScaleKey( spep_0 + 290 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 3.44, 3.44 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 3.34, 3.34 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 353 + OFFSET_X, 1, 2.85, 2.85 );
setScaleKey( spep_0 + 354 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 2.87, 2.87 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 2.96, 2.96 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 3.5, 3.5 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 1.45, 1.45 );

setRotateKey( spep_0 + 290 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 399 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, -40 );
setRotateKey( spep_0 + 401 + OFFSET_X, 1, -40 );
setRotateKey( spep_0 + 402 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 403 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 404 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 405 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 406 + OFFSET_X, 1, -40 );
setRotateKey( spep_0 + 407 + OFFSET_X, 1, -40 );
setRotateKey( spep_0 + 408 + OFFSET_X, 1, -41.5 );
setRotateKey( spep_0 + 500 + OFFSET_X, 1, -41.5 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 128, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--浮く
SE002 = playSeVer2( spep_0 + 14, 1239, "",spep_0 + 58, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 14, SE002, 86 );
SE003 = playSeVer2( spep_0 + 14, 15, "",spep_0 + 70, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 14, SE003, 56 );
SE004 = playSeVer2( spep_0 + 14, 1130, "",spep_0 + 62, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 14, SE004, 79 );
SE005 = playSeVer2( spep_0 + 14, 1117, "",spep_0 + 70, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 14, SE005, 62 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);

pauseAll( SP_dodge, 67);

setBlendColor( SP_dodge + 2 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

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
--超能力
SE006 = playSeVer2( spep_0 + 62, 1266, "",spep_0 + 330, 26, 30, -1);
setSeVolumeByWorkId( spep_0 + 62, SE006, 86 );
setStartTimeMs( SE006,  733 );
SE007 = playSeVer2( spep_0 + 52, 1127, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE007, 87 );
SE008 = playSeVer2( spep_0 + 52, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 52, SE008, 79 );
SE009 = playSeVer2( spep_0 + 74, 1362, "",spep_0 + 328, 0, 28, -1);
setPitch( spep_0 + 74, SE009, 1200 );
setTimeStretch( SE009, 1.8, 30, 4 );

--敵ヒット
SE010 = playSeVer2( spep_0 + 150, 1415, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE010, 115 );
setStartTimeMs( SE010,  333 );
SE011 = playSeVer2( spep_0 + 154, 1051, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 154, SE011, 83 );

--近づく
SE012 = playSeVer2( spep_0 + 210, 1305, "",spep_0 + 314, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 210, SE012, 145 );

--セリフカットイン
SE013 = playSeVer2( spep_0 + 232, 1018, "", 0, 0, 0, -1);

--連打
SE014 = playSeVer2( spep_0 + 288, 1189, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 296, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 296, 1009, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 314, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 314, SE017, 71 );
SE018 = playSeVer2( spep_0 + 316, 1110, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 346, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE020 = playSeVer2( spep_0 + 360, 1116, "",spep_0 + 406, 0, 20, -1);

--壁激突
SE021 = playSeVer2( spep_0 + 390, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 390, SE021, 84 );

--終わり
-- hideKoScreen();
dealDamage( spep_0 + 400);
endPhase( spep_0 + MAX_FRAME_0); --498F

else end