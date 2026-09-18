-- 1027160: UR_人造人間18号_パニッシュブリッツ
-- sp_effect_a4_00023
-- sp2583

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162090;  -- 開幕　セリフカットイン～パンチ後ジャンプ ef_001
SP_001b = 162091;  -- 開幕　セリフカットイン～パンチ後ジャンプ ef_001b
SP_002 = 162094;  -- 構え前～フィニッシュ ef_002

-- 敵側
SP_001r = 162092;  -- 開幕　セリフカットイン～パンチ後ジャンプ ef_001r
SP_001br = 162093;  -- 開幕　セリフカットイン～パンチ後ジャンプ ef_001br

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

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_2 = 424 + 94;

        timing_skip = 150;

        skipFrame(0, spep_2 + timing_skip );  -- スキップ先フレーム指定
    end
------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕　セリフカットイン～パンチ後ジャンプ ef_001 (424F)
------------------------------------------------------
MAX_FRAME_0 = 424;

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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 46;

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
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** -
setDisp( spep_0 + 144 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 236 + OFFSET_X, 1, 0 );
setDisp( spep_0 + 296 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 308 + OFFSET_X, 1, 0 );
setDisp( spep_0 + 326 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 362 + OFFSET_X, 1, 0 );
changeAnime( spep_0 + 144 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 296 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 326 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 342 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 144 + OFFSET_X, 1, 515.4, -275.2 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 552.3, -289.8 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 589.3, -304.4 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 626.6, -319.2 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 663.9, -333.9 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 701.4, -348.8 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 738.9, -363.6 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 776.6, -378.5 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 814.2, -393.4 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 851.9, -408.3 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 889.6, -423.2 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 927.3, -438.1 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 964.9, -453 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 1002.4, -467.9 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 1039.9, -482.7 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 1077.3, -497.4 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 1114.5, -512.2 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 1151.5, -526.8 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 1188.4, -541.4 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 1225.1, -555.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 1261.5, -570.4 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 1297.8, -584.7 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 1333.7, -598.9 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 1369.4, -613 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 1404.8, -627 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 1439.9, -640.9 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 1472.6, -652.4 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 1491.1, -659.6 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 1509.6, -666.9 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 1528.3, -674.2 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 1547, -681.6 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 1565.8, -689 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 1584.6, -696.3 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 1603.4, -703.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 1622.2, -711.1 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 1640.9, -718.4 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 1659.5, -725.7 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 1678, -733 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 1696.4, -740.2 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 1714.6, -747.4 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 1732.7, -754.4 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 1750.5, -761.4 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 1768.2, -768.4 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 1784.7, -774.3 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 1784.7, -774.3 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 2192.1, -989.1 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 2192.1, -989.1 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 2539.8, -1150.1 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 2539.8, -1150.1 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 2832.5, -1277.7 , 0 );
--
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 153.6, -316.4 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 125.6, -255.3 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 103.9, -207.7 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 88.3, -173.8 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 79, -153.4 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 75.9, -146.6 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 75.9, -146.6 , 0 );
--
ax = -80;
ay = 50;
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 26.1 + ax, 42.2 + ay , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 26.1 + ax, 42.2 + ay , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 14.8 + ax, 21.8 + ay , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 14.8 + ax, 21.8 + ay , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 26.4 + ax, 36.2 + ay , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 26.4 + ax, 36.2 + ay , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 18.1 + ax, 23.4 + ay , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 18.1 + ax, 23.4 + ay , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 25.7 + ax, 31.3 + ay , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 25.7 + ax, 31.3 + ay , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 21.6 + ax, 25 + ay , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 21.6 + ax, 25 + ay , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 25.6 + ax, 28.7 + ay , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 25.6 + ax, 28.7 + ay , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 23.4 + ax, 25.4 + ay , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 23.4 + ax, 25.4 + ay , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 24.9, 26.7 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 24.9, 26.7 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 24.6, 26.5 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 24.6, 26.5 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 137.2, -186.4 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 137.2, -186.4 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 127.7, -186.5 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 127.7, -186.5 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 117, -184.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 117, -184.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 103.5, -178.8 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 103.5, -178.8 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 78.7, -152.2 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 78.7, -152.2 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 54.3, -124 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 54.3, -124 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 66.1, -121.3 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 66.1, -121.3 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 49.2, -124.7 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 49.2, -124.7 , 0 );

setScaleKey( spep_0 + 144 + OFFSET_X, 1, 5.12, 5.12 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 5.82, 5.82 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 6.18, 6.18 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 6.54, 6.54 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 6.89, 6.89 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 7.25, 7.25 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 7.61, 7.61 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 7.97, 7.97 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 8.33, 8.33 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 8.69, 8.69 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 9.05, 9.05 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 9.41, 9.41 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 9.77, 9.77 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 10.13, 10.13 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 10.49, 10.49 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 10.84, 10.84 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 11.2, 11.2 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 11.55, 11.55 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 11.9, 11.9 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 12.25, 12.25 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 12.6, 12.6 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 12.94, 12.94 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 13.28, 13.28 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 13.62, 13.62 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 13.95, 13.95 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 14.29, 14.29 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 14.47, 14.47 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 14.65, 14.65 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 14.84, 14.84 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 15.02, 15.02 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 15.21, 15.21 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 15.39, 15.39 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 15.58, 15.58 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 15.77, 15.77 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 15.95, 15.95 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 16.14, 16.14 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 16.32, 16.32 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 16.5, 16.5 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 16.68, 16.68 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 16.86, 16.86 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 17.04, 17.04 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 17.21, 17.21 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 17.38, 17.38 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 17.38, 17.38 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 20.53, 20.53 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 20.53, 20.53 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 23.09, 23.09 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 23.09, 23.09 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 25.59, 25.59 );
--
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 4.69, 4.69 );
--
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 6.1, 6.1 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 6.1, 6.1 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 5.54, 5.54 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 5.54, 5.54 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 1.3, 1.3 );

setRotateKey( spep_0 + 144 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, 3 );
--
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, 3 );
--
setRotateKey( spep_0 + 326 + OFFSET_X, 1, 67.8 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, 67.8 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, 68.8 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, 68.8 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, 69.7 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, 69.7 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 70.5 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, 70.5 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, 71.2 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, 71.2 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, 71.8 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, 71.8 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, 72.2 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, 72.2 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, 72.5 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, 72.5 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, 72.7 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, 72.7 );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, 72.7 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, 74.6 );
setRotateKey( spep_0 + 347 + OFFSET_X, 1, 74.6 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, 77 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, 77 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, 79.1 );
setRotateKey( spep_0 + 351 + OFFSET_X, 1, 79.1 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, 80.9 );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, 80.9 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, 83.6 );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, 83.6 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, 89.6 );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, 89.6 );

-- ** 音 ** --
--カメラパン
SE001 = playSeVer2( spep_0 + 8, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE001, 83 );

--画面遷移
SE003 = playSeVer2( spep_0 + 148, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 148, SE003, 73 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 164; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE00X, 0);
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
--飛び込んでくる
SE004 = playSeVer2( spep_0 + 224, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE004, 124 );

--土煙
SE005 = playSeVer2( spep_0 + 234, 1188, "", 0, 18, 0, -1);
setStartTimeMs( SE005,  100 );

--飛び込んでくる
SE006 = playSeVer2( spep_0 + 226, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 226, SE006, 120 );
SE007 = playSeVer2( spep_0 + 234, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 234, 1117, "", 0, 0, 0, -1);

--飛行音
SE009 = playSeVer2( spep_0 + 268, 1019, "",spep_0 + 326, 0, 16, -1);

--パンチ
SE010 = playSeVer2( spep_0 + 312, 1110, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 312, 1120, "", 0, 0, 0, -1);

--敵地面ヒット
SE012 = playSeVer2( spep_0 + 352, 1011, "", 0, 0, 0, 0.6);

--翻る
SE013 = playSeVer2( spep_0 + 356, 1116, "",spep_0 + 414, 0, 36, -1);
SE014 = playSeVer2( spep_0 + 362, 1117, "",spep_0 + 436, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 362, SE014, 120 );
SE015 = playSeVer2( spep_0 + 364, 1119, "",spep_0 + 424, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 364, SE015, 60 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 424


--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 構え前～フィニッシュ ef_002 (514F)
------------------------------------------------------
MAX_FRAME_2 = 514;

-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_002, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_002, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_002, 255 );

-- ** 音 ** --
--爆発余韻
SE017 = playSeVer2( spep_1 + 90, 1168, "", 0, 22, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 90, SE017, 58 );
setStartTimeMs( SE017,  500 );
SE018 = playSeVer2( spep_1 + 86, 1188, "", 0, 16, 0, 0.5);
setStartTimeMs( SE018,  233 );
SE019 = playSeVer2( spep_1 + 84, 1229, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE019, 151 );

--手にいなづま走る
SE020 = playSeVer2( spep_2 + 154, 1147, "",spep_2 + 318, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 154, SE020, 79 );
SE021 = playSeVer2( spep_2 + 162, 1038, "", 0, 0, 0, -1);

--土煙
SE022 = playSeVer2( spep_2 + 222, 1168, "",spep_2 + 376, 12, 22, 0.5);
setSeVolumeByWorkId( spep_2 + 222, SE022, 52 );
setStartTimeMs( SE022,  700 );

--爆発
SE023 = playSeVer2( spep_2 + 212, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 212, SE023, 124 );
SE024 = playSeVer2( spep_2 + 212, 1049, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 226, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 226, SE025, 81 );

--土煙
SE026 = playSeVer2( spep_2 + 244, 1229, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 244, SE026, 200 );

--画面遷移
SE027 = playSeVer2( spep_2 + 278, 1232, "", 0, 0, 0, -1);

--爆発
SE028 = playSeVer2( spep_2 + 348, 1159, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 354, 1067, "", 0, 0, 0, -1);

--いなづま余韻
SE030 = playSeVer2( spep_2 + 380, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 380, SE030, 52 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 380 );
endPhase( spep_2 +  MAX_FRAME_2 );  -- 514

else


------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕　セリフカットイン～パンチ後ジャンプ ef_001 (424F)
------------------------------------------------------
MAX_FRAME_0 = 424;

-- ** エフェクト等 ** --
entry_SP_001 = entryEffect( spep_0 + 0, SP_001r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001, 255 );
entry_SP_001b = entryEffect( spep_0 + 0, SP_001br, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, entry_SP_001b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, entry_SP_001b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry_SP_001b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 0 );
setEffAlphaKey( spep_0 + 0, entry_SP_001b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, entry_SP_001b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 46;

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
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** -
setDisp( spep_0 + 144 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 236 + OFFSET_X, 1, 0 );
setDisp( spep_0 + 296 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 308 + OFFSET_X, 1, 0 );
setDisp( spep_0 + 326 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 362 + OFFSET_X, 1, 0 );
changeAnime( spep_0 + 144 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 296 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 326 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 342 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 144 + OFFSET_X, 1, 515.4, -275.2 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 552.3, -289.8 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 589.3, -304.4 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 626.6, -319.2 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 663.9, -333.9 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 701.4, -348.8 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 738.9, -363.6 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 776.6, -378.5 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 814.2, -393.4 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 851.9, -408.3 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 889.6, -423.2 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 927.3, -438.1 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 964.9, -453 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 1002.4, -467.9 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 1039.9, -482.7 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 1077.3, -497.4 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 1114.5, -512.2 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 1151.5, -526.8 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 1188.4, -541.4 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 1225.1, -555.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 1261.5, -570.4 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 1297.8, -584.7 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 1333.7, -598.9 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 1369.4, -613 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 1404.8, -627 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 1439.9, -640.9 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 1472.6, -652.4 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 1491.1, -659.6 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 1509.6, -666.9 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 1528.3, -674.2 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 1547, -681.6 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 1565.8, -689 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 1584.6, -696.3 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 1603.4, -703.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 1622.2, -711.1 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 1640.9, -718.4 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 1659.5, -725.7 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 1678, -733 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 1696.4, -740.2 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 1714.6, -747.4 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 1732.7, -754.4 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 1750.5, -761.4 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 1768.2, -768.4 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 1784.7, -774.3 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 1784.7, -774.3 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 2192.1, -989.1 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 2192.1, -989.1 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 2539.8, -1150.1 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 2539.8, -1150.1 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 2832.5, -1277.7 , 0 );
--
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 153.6, -316.4 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 125.6, -255.3 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 103.9, -207.7 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 88.3, -173.8 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 79, -153.4 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 75.9, -146.6 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 75.9, -146.6 , 0 );
--
ax = -80;
ay = 50;
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 26.1 + ax, 42.2 + ay , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 26.1 + ax, 42.2 + ay , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 14.8 + ax, 21.8 + ay , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 14.8 + ax, 21.8 + ay , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 26.4 + ax, 36.2 + ay , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 26.4 + ax, 36.2 + ay , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 18.1 + ax, 23.4 + ay , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 18.1 + ax, 23.4 + ay , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 25.7 + ax, 31.3 + ay , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 25.7 + ax, 31.3 + ay , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 21.6 + ax, 25 + ay , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 21.6 + ax, 25 + ay , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 25.6 + ax, 28.7 + ay , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 25.6 + ax, 28.7 + ay , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 23.4 + ax, 25.4 + ay , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 23.4 + ax, 25.4 + ay , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 24.9, 26.7 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 24.9, 26.7 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 24.6, 26.5 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 24.6, 26.5 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 137.2, -186.4 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 137.2, -186.4 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 127.7, -186.5 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 127.7, -186.5 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 117, -184.9 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 117, -184.9 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 103.5, -178.8 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, 103.5, -178.8 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, 78.7, -152.2 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, 78.7, -152.2 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, 54.3, -124 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 54.3, -124 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 66.1, -121.3 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 66.1, -121.3 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 49.2, -124.7 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 49.2, -124.7 , 0 );

setScaleKey( spep_0 + 144 + OFFSET_X, 1, 5.12, 5.12 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 5.47, 5.47 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 5.82, 5.82 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 6.18, 6.18 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 6.54, 6.54 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 6.89, 6.89 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 7.25, 7.25 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 7.61, 7.61 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 7.97, 7.97 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 8.33, 8.33 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 8.69, 8.69 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 9.05, 9.05 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 9.41, 9.41 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 9.77, 9.77 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 10.13, 10.13 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 10.49, 10.49 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 10.84, 10.84 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 11.2, 11.2 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 11.55, 11.55 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 11.9, 11.9 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 12.25, 12.25 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 12.6, 12.6 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 12.94, 12.94 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 13.28, 13.28 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 13.62, 13.62 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 13.95, 13.95 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 14.29, 14.29 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 14.47, 14.47 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 14.65, 14.65 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 14.84, 14.84 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 15.02, 15.02 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 15.21, 15.21 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 15.39, 15.39 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 15.58, 15.58 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 15.77, 15.77 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 15.95, 15.95 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 16.14, 16.14 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 16.32, 16.32 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 16.5, 16.5 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 16.68, 16.68 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 16.86, 16.86 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 17.04, 17.04 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 17.21, 17.21 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 17.38, 17.38 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 17.38, 17.38 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 20.53, 20.53 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 20.53, 20.53 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 23.09, 23.09 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 23.09, 23.09 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 25.59, 25.59 );
--
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 4.62, 4.62 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 4.69, 4.69 );
--
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 6.1, 6.1 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 6.1, 6.1 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 5.54, 5.54 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 5.54, 5.54 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 5.01, 5.01 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 4.08, 4.08 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 1.3, 1.3 );

setRotateKey( spep_0 + 144 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, 3 );
--
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, 3 );
--
setRotateKey( spep_0 + 326 + OFFSET_X, 1, 67.8 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, 67.8 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, 68.8 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, 68.8 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, 69.7 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, 69.7 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 70.5 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, 70.5 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, 71.2 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, 71.2 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, 71.8 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, 71.8 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, 72.2 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, 72.2 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, 72.5 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, 72.5 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, 72.7 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, 72.7 );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, 72.7 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, 74.6 );
setRotateKey( spep_0 + 347 + OFFSET_X, 1, 74.6 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, 77 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, 77 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, 79.1 );
setRotateKey( spep_0 + 351 + OFFSET_X, 1, 79.1 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, 80.9 );
setRotateKey( spep_0 + 353 + OFFSET_X, 1, 80.9 );
setRotateKey( spep_0 + 354 + OFFSET_X, 1, 83.6 );
setRotateKey( spep_0 + 355 + OFFSET_X, 1, 83.6 );
setRotateKey( spep_0 + 356 + OFFSET_X, 1, 89.6 );
setRotateKey( spep_0 + 362 + OFFSET_X, 1, 89.6 );

-- ** 音 ** --
--カメラパン
SE001 = playSeVer2( spep_0 + 8, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE001, 83 );

--画面遷移
SE003 = playSeVer2( spep_0 + 148, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 148, SE003, 73 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 164; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE00X, 0);
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
--飛び込んでくる
SE004 = playSeVer2( spep_0 + 224, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE004, 124 );

--土煙
SE005 = playSeVer2( spep_0 + 234, 1188, "", 0, 18, 0, -1);
setStartTimeMs( SE005,  100 );

--飛び込んでくる
SE006 = playSeVer2( spep_0 + 226, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 226, SE006, 120 );
SE007 = playSeVer2( spep_0 + 234, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 234, 1117, "", 0, 0, 0, -1);

--飛行音
SE009 = playSeVer2( spep_0 + 268, 1019, "",spep_0 + 326, 0, 16, -1);

--パンチ
SE010 = playSeVer2( spep_0 + 312, 1110, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 312, 1120, "", 0, 0, 0, -1);

--敵地面ヒット
SE012 = playSeVer2( spep_0 + 352, 1011, "", 0, 0, 0, 0.6);

--翻る
SE013 = playSeVer2( spep_0 + 356, 1116, "",spep_0 + 414, 0, 36, -1);
SE014 = playSeVer2( spep_0 + 362, 1117, "",spep_0 + 436, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 362, SE014, 120 );
SE015 = playSeVer2( spep_0 + 364, 1119, "",spep_0 + 424, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 364, SE015, 60 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 424


--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- 構え前～フィニッシュ ef_002 (514F)
------------------------------------------------------
MAX_FRAME_2 = 514;

-- ** エフェクト等 ** --
entry_SP_002 = entryEffect( spep_2 + 0, SP_002, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, entry_SP_002, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, entry_SP_002, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, entry_SP_002, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, entry_SP_002, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, entry_SP_002, 0 );
setEffAlphaKey( spep_2 + 0, entry_SP_002, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, entry_SP_002, 255 );

-- ** 音 ** --
--爆発余韻
SE017 = playSeVer2( spep_1 + 90, 1168, "", 0, 22, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 90, SE017, 58 );
setStartTimeMs( SE017,  500 );
SE018 = playSeVer2( spep_1 + 86, 1188, "", 0, 16, 0, 0.5);
setStartTimeMs( SE018,  233 );
SE019 = playSeVer2( spep_1 + 84, 1229, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE019, 151 );

--手にいなづま走る
SE020 = playSeVer2( spep_2 + 154, 1147, "",spep_2 + 318, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 154, SE020, 79 );
SE021 = playSeVer2( spep_2 + 162, 1038, "", 0, 0, 0, -1);

--土煙
SE022 = playSeVer2( spep_2 + 222, 1168, "",spep_2 + 376, 12, 22, 0.5);
setSeVolumeByWorkId( spep_2 + 222, SE022, 52 );
setStartTimeMs( SE022,  700 );

--爆発
SE023 = playSeVer2( spep_2 + 212, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 212, SE023, 124 );
SE024 = playSeVer2( spep_2 + 212, 1049, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 226, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 226, SE025, 81 );

--土煙
SE026 = playSeVer2( spep_2 + 244, 1229, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 244, SE026, 200 );

--画面遷移
SE027 = playSeVer2( spep_2 + 278, 1232, "", 0, 0, 0, -1);

--爆発
SE028 = playSeVer2( spep_2 + 348, 1159, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 354, 1067, "", 0, 0, 0, -1);

--いなづま余韻
SE030 = playSeVer2( spep_2 + 380, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 380, SE030, 52 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_2 + 380 );
endPhase( spep_2 +  MAX_FRAME_2 );  -- 514


end
