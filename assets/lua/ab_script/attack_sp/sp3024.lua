--4033850:UR_メタルクウラ軍団_必殺技：フルメタルフラッシャー
--sp_effect_b4_00435
--sp3024

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_02  = 164492; --気弾を手に集めているメタルクウラ達が映る～フィニッシュまで ef_002

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

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;  -- 記載するspepの数には要注意！
        spep_1 = spep_0 + 92;  -- MAX_FRAME_0のフレーム数を記載。
        spep_2 = spep_1 + 94;

        timing_skip = 268;

        skipFrame(0, spep_2 + timing_skip );  -- スキップ先フレーム指定
        setupMovie(spep_2 + timing_skip , SP_02, spep_2 + timing_skip -1 + 2, 1);  -- スキップ先フレームに実行し、ムービーのスキップ先+2F目から再生する。

        -- ** 音 ** --
        --気弾溜め
        SE015 = playSeVer2( spep_2 + 268 + 3, 1449, "",spep_2 + 298, 0, 18, -1);
        SE016 = playSeVer2( spep_2 + 268 + 3, 1396, "",spep_2 + 299, 0, 20, -1);
        SE019 = playSeVer2( spep_2 + 268 + 3, 1296, "",spep_2 + 291, 0, 19, -1);

        --気弾発射
        SE020 = playSeVer2( spep_2 + 268 + 3, 1145, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 268 + 3, SE020, 65 );
        SE021 = playSeVer2( spep_2 + 268 + 3, 1177, "",spep_2 + 403, 0, 35, -1);
        setSeVolumeByWorkId( spep_2 + 268 + 3, SE021, 83 );
        SE018 = playSeVer2( spep_2 + 268 + 3, 1336, "",spep_2 + 401, 16, 34, -1);
        setSeVolumeByWorkId( spep_2 + 268 + 3, SE018, 146 );
        setStartTimeMs( SE018,  1150 );

    else
        setupMovie(0, SP_02, 0, 1);
    end

else

    setupMovie(0, SP_02, 0, 1);

    mirror = -1;

    --SP_01  = SP_01r; --敵側エフェクトがある場合のみ

end

------------------------------------------------------------------------------------------------------------
-- 共通演出
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜崖の上にメタルクウラ軍団が映る
-------------------------------------------------
MAX_FRAME_0 = 92;

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

ctgogo_x = -52; -- 演出によって白目にかからないように調整

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, ctgogo_x * mirror, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, ctgogo_x * mirror, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7 * mirror, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7 * mirror, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0 * mirror, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09 * mirror, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39 * mirror, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69 * mirror, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );


-- ** 音 ** --
--大量に歩いてくる
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 117, 0, 21, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 44 );
SE002 = playSeVer2( spep_0 + 0, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 42 );
setPitch( spep_0 + 0, SE002, -600 );
setTimeStretch( SE002, 0.6, 30, 4 );
SE003 = playSeVer2( spep_0 + 6, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE003, 85 );
SE005 = playSeVer2( spep_0 + 16, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 16, SE005, 43 );
setPitch( spep_0 + 16, SE005, -400 );
setTimeStretch( SE005, 0.73, 30, 4 );
SE006 = playSeVer2( spep_0 + 30, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE006, 54 );
setPitch( spep_0 + 30, SE006, -300 );
setTimeStretch( SE006, 0.8, 30, 4 );
SE007 = playSeVer2( spep_0 + 30, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE007, 81 );
SE008 = playSeVer2( spep_0 + 50, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE008, 35 );
setPitch( spep_0 + 50, SE008, -100 );
setTimeStretch( SE008, 0.93, 30, 4 );
SE009 = playSeVer2( spep_0 + 56, 1472, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE009, 81 );
SE010 = playSeVer2( spep_0 + 66, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE010, 54 );
setPitch( spep_0 + 66, SE010, -800 );
setTimeStretch( SE010, 0.47, 30, 4 );
SE011 = playSeVer2( spep_0 + 86, 1135, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE011, 46 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 92f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--気弾溜め
SE013 = playSeVer2( spep_1 + 82, 1296, "",spep_2 + 165, 6, 7, -1);
setSeVolumeByWorkId( spep_1 + 82, SE013, 64 );
setStartTimeMs( SE013,  383 );
SE015 = playSeVer2( spep_1 + 84, 1449, "",spep_2 + 298, 0, 18, -1);
SE016 = playSeVer2( spep_1 + 84, 1396, "",spep_2 + 299, 0, 20, -1);

--画面遷移
SE014 = playSeVer2( spep_1 + 60, 1468, "", 0, 0, 0, -1);


-------------------------------------------------
-- 気弾を手に集めているメタルクウラ達が映る～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 490;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾を手に集めているメタルクウラ達が映る～フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0 * mirror, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0 * mirror, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 140 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 200 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_2 + 140 + OFFSET_X, 1, 118 );

setMoveKey( spep_2 + 140 + OFFSET_X, 1, 31.5 * mirror, -221 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 31.5 * mirror, -221 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 63.5 * mirror, -221 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 63.5 * mirror, -221 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 93.2 * mirror, -221 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 93.2 * mirror, -221 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 120.6 * mirror, -221 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 120.6 * mirror, -221 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 145.7 * mirror, -221 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 145.7 * mirror, -221 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 179.1 * mirror, -221 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 179.1 * mirror, -221 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 198.5 * mirror, -221 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 198.5 * mirror, -221 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 223.3 * mirror, -221 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 223.3 * mirror, -221 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 237 * mirror, -221 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 237 * mirror, -221 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 248.4 * mirror, -221 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 248.4 * mirror, -221 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 253.3 * mirror, -221 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 253.3 * mirror, -221 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 261.2 * mirror, -221 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 261.2 * mirror, -221 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 264.4 * mirror, -221 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 264.4 * mirror, -221 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 267 * mirror, -221 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 267 * mirror, -221 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 268.9 * mirror, -221 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 268.9 * mirror, -221 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 270.4 * mirror, -221 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 270.4 * mirror, -221 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 271.2 * mirror, -221 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 271.2 * mirror, -221 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 271.5 * mirror, -221 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 271.5 * mirror, -221 , 0 );

setScaleKey( spep_2 + 140 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 2.4, 2.4 );

setRotateKey( spep_2 + 140 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 0 * mirror );


--敵の動き2
setDisp( spep_2 + 300 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 352 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_2 + 300 + OFFSET_X, 1, 117 );
changeAnimeBySide( spep_2 + 338 + OFFSET_X, 1, 104 );

setMoveKey( spep_2 + 300 + OFFSET_X, 1, 15.6 * mirror, -26.9 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 15.6 * mirror, -26.9 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 38.5 * mirror, 17.5 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 38.5 * mirror, 17.5 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 75 * mirror, 22.7 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 75 * mirror, 22.7 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 91.8 * mirror, 47 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 91.8 * mirror, 47 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 95.1 * mirror, 36.6 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 95.1 * mirror, 36.6 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 111.1 * mirror, 49.4 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 111.1 * mirror, 49.4 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 141.7 * mirror, 31.1 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 141.7 * mirror, 31.1 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 152.6 * mirror, 39.1 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 152.6 * mirror, 39.1 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 149.6 * mirror, 18.6 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 149.6 * mirror, 18.6 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 158.5 * mirror, 26.6 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 158.5 * mirror, 26.6 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 181.1 * mirror, 7.7 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 181.1 * mirror, 7.7 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 183.1 * mirror, 18.7 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 183.1 * mirror, 18.7 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 185.4 * mirror, 2.6 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 185.4 * mirror, 2.6 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 189.4 * mirror, 0.6 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 189.4 * mirror, 0.6 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 179.4 * mirror, 8.6 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 179.4 * mirror, 8.6 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 175.4 * mirror, 12.6 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 175.4 * mirror, 12.6 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 181.4 * mirror, 14.6 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 181.4 * mirror, 14.6 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 171.4 * mirror, 4.6 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 171.4 * mirror, 4.6 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 179.4 * mirror, 8.6 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 179.4 * mirror, 8.6 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 175.4 * mirror, 12.6 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 175.4 * mirror, 12.6 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 181.4 * mirror, 14.6 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 181.4 * mirror, 14.6 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 171.4 * mirror, 4.6 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 171.4 * mirror, 4.6 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 177.4 * mirror, 10.6 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 177.4 * mirror, 10.6 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 177.5 * mirror, 10.5 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 177.5 * mirror, 10.5 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 177.7 * mirror, 10.3 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 177.7 * mirror, 10.3 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 177.8 * mirror, 10.2 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 177.8 * mirror, 10.2 , 0 );

setScaleKey( spep_2 + 300 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 0.66, 0.66 );

setRotateKey( spep_2 + 300 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, -3 * mirror );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, -3 * mirror );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, -5.8 * mirror );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, -5.8 * mirror );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, -8.3 * mirror );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, -8.3 * mirror );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -10.6 * mirror );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, -10.6 * mirror );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, -12.6 * mirror );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, -12.6 * mirror );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, -14.3 * mirror );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, -14.3 * mirror );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -15.8 * mirror );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -15.8 * mirror );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -17 * mirror );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -17 * mirror );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -17.9 * mirror );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -17.9 * mirror );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -18.5 * mirror );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -18.5 * mirror );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -18.9 * mirror );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, -18.9 * mirror );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, -19.1 * mirror );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, -19.1 * mirror );


-- ** 音 ** --
--気弾溜め
SE017 = playSeVer2( spep_2 + 128, 1296, "",spep_2 + 239, 26, 23, -1);
setSeVolumeByWorkId( spep_2 + 128, SE017, 43 );
setStartTimeMs( SE017,  383 );
SE019 = playSeVer2( spep_2 + 215, 1296, "",spep_2 + 291, 0, 19, -1);

--気弾発射
SE020 = playSeVer2( spep_2 + 254, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 254, SE020, 65 );
SE021 = playSeVer2( spep_2 + 254, 1177, "",spep_2 + 403, 0, 35, -1);
setSeVolumeByWorkId( spep_2 + 254, SE021, 83 );
SE018 = playSeVer2( spep_2 + 264, 1336, "",spep_2 + 401, 16, 34, -1);
setSeVolumeByWorkId( spep_2 + 264, SE018, 146 );
setStartTimeMs( SE018,  1150 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 304; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE018, 0);
--stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--爆発
SE022 = playSeVer2( spep_2 + 360, 1159, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 360, 1427, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 368); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 - 4); -- 490f - 4f