--1033970:LR_フリーザ(最終形態)_超必殺技：デスボール
--sp_effect_a2_00278
--sp3036

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164556; --開幕〜フィニッシュまで ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);

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

--setAlphaKey( 0, 1, 255 );



ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

else

    mirror = -1;

end

------------------------------------------------------------------------------------------------------------
-- 開始
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

-------------------------------------------------
-- 最初〜最後まで
-------------------------------------------------
MAX_FRAME_0 = 1238;
CARD_FRAME = 172;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕〜フィニッシュまで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0 * mirror, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0 * mirror, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 768; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   -- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   -- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
   speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
   setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

   --顔カットイン
   SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

end

--[[
ctgogo_x = 0; -- 演出によって白目にかからないように調整

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
]]


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

showCardCutin(spep_0 + CARD_FRAME, 0);

--------------------------------------
-- 敵キャラクター
--------------------------------------
-- 敵の動き1
setDisp( spep_0 + 498 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 540 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 498 + OFFSET_X, 1, 100 );

setMoveKey( spep_0 + 498 + OFFSET_X, 1, 421 * mirror, -150.8 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 421 * mirror, -150.8 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 353.2 * mirror, -111.3 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 353.2 * mirror, -111.3 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 279.9 * mirror, -80.2 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 279.9 * mirror, -80.2 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 221.2 * mirror, -55.5 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 221.2 * mirror, -55.5 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 173.9 * mirror, -35.7 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 173.9 * mirror, -35.7 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 135.6 * mirror, -19.9 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 135.6 * mirror, -19.9 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 104.9 * mirror, -7.3 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 104.9 * mirror, -7.3 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 80.2 * mirror, 2.4 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 80.2 * mirror, 2.4 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 60.9 * mirror, 10 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 60.9 * mirror, 10 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 46.3 * mirror, 15.9 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 46.3 * mirror, 15.9 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 35.3 * mirror, 19.9 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 35.3 * mirror, 19.9 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 28.1 * mirror, 22.5 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 28.1 * mirror, 22.5 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 23.9 * mirror, 24 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 23.9 * mirror, 24 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 22.6 * mirror, 24.4 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 22.6 * mirror, 24.4 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 22.6 * mirror, 24.3 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 22.6 * mirror, 24.3 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 22.5 * mirror, 24.4 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 22.5 * mirror, 24.4 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 22.5 * mirror, 24.3 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, 22.5 * mirror, 24.3 , 0 );

setScaleKey( spep_0 + 498 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 499 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 500 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 501 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 502 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 503 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 504 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 519 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_0 + 498 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 540 + OFFSET_X, 1, 0 * mirror );

setGaussBlurKey( spep_0 + 498 + OFFSET_X, 1, 0.003 );
setGaussBlurKey( spep_0 + 539 + OFFSET_X, 1, 0.003 );
setGaussBlurKey( spep_0 + 540 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 962 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1022 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 962 + OFFSET_X, 1, 102 );
changeAnimeBySide( spep_0 + 976 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 962 + OFFSET_X, 1, -347.2 * mirror, -737.1 , 0 );
setMoveKey( spep_0 + 963 + OFFSET_X, 1, -347.2 * mirror, -737.1 , 0 );
setMoveKey( spep_0 + 964 + OFFSET_X, 1, -348 * mirror, -736.5 , 0 );
setMoveKey( spep_0 + 965 + OFFSET_X, 1, -348 * mirror, -736.5 , 0 );
setMoveKey( spep_0 + 966 + OFFSET_X, 1, -8.7 * mirror, -363.9 , 0 );
setMoveKey( spep_0 + 967 + OFFSET_X, 1, -8.7 * mirror, -363.9 , 0 );
setMoveKey( spep_0 + 968 + OFFSET_X, 1, -9 * mirror, -363.7 , 0 );
setMoveKey( spep_0 + 969 + OFFSET_X, 1, -9 * mirror, -363.7 , 0 );
setMoveKey( spep_0 + 970 + OFFSET_X, 1, 138 * mirror, -218.9 , 0 );
setMoveKey( spep_0 + 971 + OFFSET_X, 1, 138 * mirror, -218.9 , 0 );
setMoveKey( spep_0 + 972 + OFFSET_X, 1, 138 * mirror, -218.8 , 0 );
setMoveKey( spep_0 + 973 + OFFSET_X, 1, 138 * mirror, -218.8 , 0 );
setMoveKey( spep_0 + 974 + OFFSET_X, 1, 183.4 * mirror, -174.3 , 0 );
setMoveKey( spep_0 + 975 + OFFSET_X, 1, 183.4 * mirror, -174.3 , 0 );
setMoveKey( spep_0 + 976 + OFFSET_X, 1, 185.8 * mirror, -179 , 0 );
setMoveKey( spep_0 + 977 + OFFSET_X, 1, 185.8 * mirror, -179 , 0 );
setMoveKey( spep_0 + 978 + OFFSET_X, 1, 186.8 * mirror, -180.4 , 0 );
setMoveKey( spep_0 + 979 + OFFSET_X, 1, 186.8 * mirror, -180.4 , 0 );
setMoveKey( spep_0 + 980 + OFFSET_X, 1, 187.5 * mirror, -181.9 , 0 );
setMoveKey( spep_0 + 981 + OFFSET_X, 1, 187.5 * mirror, -181.9 , 0 );
setMoveKey( spep_0 + 982 + OFFSET_X, 1, 188.4 * mirror, -183.3 , 0 );
setMoveKey( spep_0 + 983 + OFFSET_X, 1, 188.4 * mirror, -183.3 , 0 );
setMoveKey( spep_0 + 984 + OFFSET_X, 1, 189.3 * mirror, -184.6 , 0 );
setMoveKey( spep_0 + 985 + OFFSET_X, 1, 189.3 * mirror, -184.6 , 0 );
setMoveKey( spep_0 + 986 + OFFSET_X, 1, 190.2 * mirror, -186 , 0 );
setMoveKey( spep_0 + 987 + OFFSET_X, 1, 190.2 * mirror, -186 , 0 );
setMoveKey( spep_0 + 988 + OFFSET_X, 1, 191.1 * mirror, -187.4 , 0 );
setMoveKey( spep_0 + 989 + OFFSET_X, 1, 191.1 * mirror, -187.4 , 0 );
setMoveKey( spep_0 + 990 + OFFSET_X, 1, 192 * mirror, -188.8 , 0 );
setMoveKey( spep_0 + 991 + OFFSET_X, 1, 192 * mirror, -188.8 , 0 );
setMoveKey( spep_0 + 992 + OFFSET_X, 1, 192.8 * mirror, -190.1 , 0 );
setMoveKey( spep_0 + 993 + OFFSET_X, 1, 192.8 * mirror, -190.1 , 0 );
setMoveKey( spep_0 + 994 + OFFSET_X, 1, 193.8 * mirror, -191.6 , 0 );
setMoveKey( spep_0 + 995 + OFFSET_X, 1, 193.8 * mirror, -191.6 , 0 );
setMoveKey( spep_0 + 996 + OFFSET_X, 1, 194.6 * mirror, -193 , 0 );
setMoveKey( spep_0 + 997 + OFFSET_X, 1, 194.6 * mirror, -193 , 0 );
setMoveKey( spep_0 + 998 + OFFSET_X, 1, 195.5 * mirror, -194.3 , 0 );
setMoveKey( spep_0 + 999 + OFFSET_X, 1, 195.5 * mirror, -194.3 , 0 );
setMoveKey( spep_0 + 1000 + OFFSET_X, 1, 196.4 * mirror, -195.8 , 0 );
setMoveKey( spep_0 + 1001 + OFFSET_X, 1, 196.4 * mirror, -195.8 , 0 );
setMoveKey( spep_0 + 1002 + OFFSET_X, 1, 197.3 * mirror, -197.2 , 0 );
setMoveKey( spep_0 + 1003 + OFFSET_X, 1, 197.3 * mirror, -197.2 , 0 );
setMoveKey( spep_0 + 1004 + OFFSET_X, 1, 198.1 * mirror, -198.6 , 0 );
setMoveKey( spep_0 + 1005 + OFFSET_X, 1, 198.1 * mirror, -198.6 , 0 );
setMoveKey( spep_0 + 1006 + OFFSET_X, 1, 199 * mirror, -200 , 0 );
setMoveKey( spep_0 + 1007 + OFFSET_X, 1, 199 * mirror, -200 , 0 );
setMoveKey( spep_0 + 1008 + OFFSET_X, 1, 199.9 * mirror, -201.3 , 0 );
setMoveKey( spep_0 + 1009 + OFFSET_X, 1, 199.9 * mirror, -201.3 , 0 );
setMoveKey( spep_0 + 1010 + OFFSET_X, 1, 200.7 * mirror, -202.8 , 0 );
setMoveKey( spep_0 + 1011 + OFFSET_X, 1, 200.7 * mirror, -202.8 , 0 );
setMoveKey( spep_0 + 1012 + OFFSET_X, 1, 201.7 * mirror, -204.3 , 0 );
setMoveKey( spep_0 + 1013 + OFFSET_X, 1, 201.7 * mirror, -204.3 , 0 );
setMoveKey( spep_0 + 1014 + OFFSET_X, 1, 202.5 * mirror, -205.7 , 0 );
setMoveKey( spep_0 + 1015 + OFFSET_X, 1, 202.5 * mirror, -205.7 , 0 );
setMoveKey( spep_0 + 1016 + OFFSET_X, 1, 203.3 * mirror, -207.1 , 0 );
setMoveKey( spep_0 + 1017 + OFFSET_X, 1, 203.3 * mirror, -207.1 , 0 );
setMoveKey( spep_0 + 1018 + OFFSET_X, 1, 204.2 * mirror, -208.6 , 0 );
setMoveKey( spep_0 + 1019 + OFFSET_X, 1, 204.2 * mirror, -208.6 , 0 );
setMoveKey( spep_0 + 1020 + OFFSET_X, 1, 205.2 * mirror, -210 , 0 );
setMoveKey( spep_0 + 1022 + OFFSET_X, 1, 205.2 * mirror, -210 , 0 );

setScaleKey( spep_0 + 962 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 965 + OFFSET_X, 1, 3.12, 3.12 );
setScaleKey( spep_0 + 966 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 969 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 970 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 973 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 974 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 975 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 976 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 1022 + OFFSET_X, 1, 0.2, 0.2 );

setRotateKey( spep_0 + 962 + OFFSET_X, 1, 10 * mirror );
setRotateKey( spep_0 + 975 + OFFSET_X, 1, 10 * mirror );
setRotateKey( spep_0 + 976 + OFFSET_X, 1, -15 * mirror );
setRotateKey( spep_0 + 1022 + OFFSET_X, 1, -15 * mirror );

setGaussBlurKey( spep_0 + 962 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_0 + 969 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_0 + 970 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_0 + 975 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_0 + 976 + OFFSET_X, 1, 0.004 );
setGaussBlurKey( spep_0 + 1021 + OFFSET_X, 1, 0.004 );
setGaussBlurKey( spep_0 + 1022 + OFFSET_X, 1, 0 )

setBlendColor( spep_0 + 962 + OFFSET_X, 1, 6, 1, 0.454, 0.917, 0.43 );
setBlendColor( spep_0 + 970 + OFFSET_X, 1, 6, 0.882, 0.337, 0.8, 0.4 );
setBlendColor( spep_0 + 976 + OFFSET_X, 1, 6, 0.882, 0.337, 0.8, 0.6 );
setBlendColor( spep_0 + 1022 + OFFSET_X, 1, 6, 0, 0, 0, 0 );


--------------------------------------
-- 音
--------------------------------------
-- ** SE ** --
--フリーザにズームする
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 202, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 11, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 11, SE002, 72 );
setTimeStretch( SE002, 1.67, 30, 4 );
SE003 = playSeVer2( spep_0 + 11, 63, "", 0, 0, 0, -1);

--構える
SE004 = playSeVer2( spep_0 + 85, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 85, SE004, 72 );
setPitch( spep_0 + 85, SE004, -400 );
setTimeStretch( SE004, 0.73, 30, 4 );
SE005 = playSeVer2( spep_0 + 130, 1189, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 130, 1208, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE006, 85 );
setPitch( spep_0 + 130, SE006, -200 );
setTimeStretch( SE006, 0.87, 30, 4 );
SE007 = playSeVer2( spep_0 + 139, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 139, SE007, 54 );

--顔アップ
SE009 = playSeVer2( spep_0 + 272, 1240, "",spep_0 + 390, 0, 47, -1);
setSeVolumeByWorkId( spep_0 + 272, SE009, 49 );
setPitch( spep_0 + 272, SE009, -500 );
setTimeStretch( SE009, 0.67, 30, 4 );
SE010 = playSeVer2( spep_0 + 290, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 290, SE010, 79 );

--腕ゆっくりあげる
SE011 = playSeVer2( spep_0 + 308, 1468, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 308, SE011, 62 );
setPitch( spep_0 + 308, SE011, -600 );
setTimeStretch( SE011, 0.6, 30, 4 );

--指あがりきり
SE012 = playSeVer2( spep_0 + 435, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 435, SE012, 172 );

--画面遷移
SE013 = playSeVer2( spep_0 + 468, 1072, "", 0, 0, 0, -1);

--空の色変わる
SE014 = playSeVer2( spep_0 + 497, 1495, "",spep_0 + 621, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 497, SE014, 51 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 524; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

-- ** 敵キャラクター ** --
setBlendColor( SP_dodge + 9, 1, 6, 0, 0, 0, 0);
setGaussBlurKey( SP_dodge + 9, 1, 0 )

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------
--空の色変わる
SE015 = playSeVer2( spep_0 + 535, 1391, "",spep_0 + 666, 0, 63, -1);
setSeVolumeByWorkId( spep_0 + 535, SE015, 72 );
SE016 = playSeVer2( spep_0 + 535, 1214, "",spep_0 + 681, 0, 63, -1);

--気弾溜め
SE017 = playSeVer2( spep_0 + 598, 1281, "",spep_0 + 1010, 39, 97, -1);
setPitch( spep_0 + 598, SE017, -600 );
setTimeStretch( SE017, 0.6, 30, 4 );
SE018 = playSeVer2( spep_0 + 605, 1224, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 610, 1500, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 610, SE019, 122 );
SE020 = playSeVer2( spep_0 + 610, 1158, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 611, 1513, "",spep_0 + 971, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 611, SE021, 85 );
SE022 = playSeVer2( spep_0 + 613, 1049, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 621, 1409, "",spep_0 + 945, 0, 31, -1);
setSeVolumeByWorkId( spep_0 + 621, SE023, 266 );
SE024 = playSeVer2( spep_0 + 690, 1278, "", 0, 0, 0, -1);

--気弾発射
SE026 = playSeVer2( spep_0 + 897, 1027, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 897, 1193, "",spep_0 + 1091, 0, 35, -1);
SE028 = playSeVer2( spep_0 + 910, 1512, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 910, SE028, 46 );
SE029 = playSeVer2( spep_0 + 936, 1226, "",spep_0 + 1110, 0, 40, -1);

--気弾アップ
SE030 = playSeVer2( spep_0 + 968, 1021, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 968, 1466, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 968, SE031, 219 );

--水面激突
SE032 = playSeVer2( spep_0 + 1067, 1023, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 1067, 1068, "", 0, 0, 0, -1);

--水飛沫
SE034 = playSeVer2( spep_0 + 1086, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1086, SE034, 174 );
setPitch( spep_0 + 1086, SE034, -700 );
setTimeStretch( SE034, 0.53, 30, 4 );
SE035 = playSeVer2( spep_0 + 1093, 1163, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1093, SE035, 214 );
SE036 = playSeVer2( spep_0 + 1116, 1166, "",spep_0 + 1256, 0, 79, -1);
SE037 = playSeVer2( spep_0 + 1116, 1067, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 1129, 1428, "", 0, 0, 0, -1);


-----------------------------
-- 終了
-----------------------------
hideKoScreen();
fadeKoLabel(1,0.5)
dealDamage( spep_0 + 1148); -- ダメージ表示フレーム
endPhase( spep_0 + MAX_FRAME_0); -- 1238f