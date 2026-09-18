--1034380:LR_セルマックス_超必殺技：マキシマムストーム
--sp_effect_a4_00029
--sp3030

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164510; --開幕、掴み投げから尻尾で上空弾き飛ばし	ef_001
SP_02  = 164511; --上空の敵へ連続気弾（ビーム状）→爆発	ef_002

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.76);

OFFSET_X = -1;

mirror = 1;

if (_IS_PLAYER_SIDE_ == 1) then

else
    mirror = -1;

    --SP_01  = SP_01r; --敵側エフェクトがある場合のみ

end

------------------------------------------------------------------------------------------------------------
-- 共通演出
------------------------------------------------------------------------------------------------------------

setupMovie(0, SP_01, 0, 1);

spep_0 = 0;

-------------------------------------------------
-- 開幕、掴み投げから尻尾で上空弾き飛ばし
-------------------------------------------------
MAX_FRAME_0 = 260;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕、掴み投げから尻尾で上空弾き飛ばし(ef_001)
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


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 42 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 0 + OFFSET_X, 1, 104 );
changeAnimeBySide( spep_0 + 24 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 36 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 0, 1, 156.6 * mirror, 145.1 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 157.6 * mirror, 145.3 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 157.6 * mirror, 145.3 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 158.5 * mirror, 145.4 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 158.5 * mirror, 145.4 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 159.4 * mirror, 145.6 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 159.4 * mirror, 145.6 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, 160.3 * mirror, 145.7 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, 160.3 * mirror, 145.7 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, 161.2 * mirror, 145.9 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, 161.2 * mirror, 145.9 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, 162.1 * mirror, 146 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, 162.1 * mirror, 146 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, 165.9 * mirror, 147.9 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, 165.9 * mirror, 147.9 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, 171.7 * mirror, 151.2 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, 171.7 * mirror, 151.2 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, 195.2 * mirror, 161.3 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, 195.2 * mirror, 161.3 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, 218.8 * mirror, 145.8 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, 218.8 * mirror, 145.8 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, 216.8 * mirror, 159.8 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, 216.8 * mirror, 159.8 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, 235 * mirror, 130.4 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, 235 * mirror, 130.4 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, 235.3 * mirror, 149.9 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 235.3 * mirror, 149.9 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 168.8 * mirror, 148.2 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 168.8 * mirror, 148.2 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 173.6 * mirror, 153.6 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 173.6 * mirror, 153.6 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 54.7 * mirror, 203.6 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 54.7 * mirror, 203.6 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 92.7 * mirror, 173.2 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 92.7 * mirror, 173.2 , 0 );

setScaleKey( spep_0 + 0, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 23 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 24 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 25 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 26 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 27 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 28 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 29 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 30 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 31 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 32 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 0.65, 0.65 );

setRotateKey( spep_0 + 0, 1, 0 * mirror );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 23 + OFFSET_X, 1, 0 * mirror );
setRotateKey( spep_0 + 24 + OFFSET_X, 1, -46.4 * mirror );
setRotateKey( spep_0 + 35 + OFFSET_X, 1, -46.4 * mirror );
setRotateKey( spep_0 + 36 + OFFSET_X, 1, 1.8 * mirror );
setRotateKey( spep_0 + 42 + OFFSET_X, 1, 1.8 * mirror );

setBlendColor( spep_0 + 0, 1, 3, 1, 0, 0, 0.25);
setBlendColor( spep_0 + 2 + OFFSET_X, 1, 3, 0.98, 0, 0, 0.25);
setBlendColor( spep_0 + 4 + OFFSET_X, 1, 3, 0.95, 0, 0, 0.25);
setBlendColor( spep_0 + 6 + OFFSET_X, 1, 3, 0.93, 0, 0, 0.25);
setBlendColor( spep_0 + 8 + OFFSET_X, 1, 3, 0.90, 0, 0, 0.25);
setBlendColor( spep_0 + 10 + OFFSET_X, 1, 3, 0.88, 0, 0, 0.25);
setBlendColor( spep_0 + 12 + OFFSET_X, 1, 3, 0.85, 0, 0, 0.25);
setBlendColor( spep_0 + 14 + OFFSET_X, 1, 3, 0.83, 0, 0, 0.25);
setBlendColor( spep_0 + 16 + OFFSET_X, 1, 3, 0.80, 0, 0, 0.25);
setBlendColor( spep_0 + 18 + OFFSET_X, 1, 3, 0.78, 0, 0, 0.25);
setBlendColor( spep_0 + 20 + OFFSET_X, 1, 3, 0.75, 0, 0, 0.25);
setBlendColor( spep_0 + 22 + OFFSET_X, 1, 3, 0.73, 0, 0, 0.25);
setBlendColor( spep_0 + 36 + OFFSET_X, 1, 3, 1, 0, 0, 0.25);
setBlendColor( spep_0 + 42 + OFFSET_X, 1, 3, 1, 0, 0, 0);

setGaussBlurKey( spep_0 + 23 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_0 + 24 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_0 + 35 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_0 + 36 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 52 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 182 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 52 + OFFSET_X, 1, 6 );
changeAnimeBySide( spep_0 + 66 + OFFSET_X, 1, 108 );
changeAnimeBySide( spep_0 + 94 + OFFSET_X, 1, 105 );
changeAnimeBySide( spep_0 + 130 + OFFSET_X, 1, 106 );
changeAnimeBySide( spep_0 + 164 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 52 + OFFSET_X, 1, -325.7 * mirror, -56.8 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -325.7 * mirror, -56.8 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -301.7 * mirror, -49.6 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -301.7 * mirror, -49.6 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -317.7 * mirror, -48 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -317.7 * mirror, -48 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -383.9 * mirror, -46.2 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -383.9 * mirror, -46.2 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -423.7 * mirror, -28.4 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -423.7 * mirror, -28.4 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -455.7 * mirror, -37.2 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -455.7 * mirror, -37.2 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -395.7 * mirror, 22.1 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -395.7 * mirror, 22.1 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -387.7 * mirror, 22.5 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -387.7 * mirror, 22.5 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -268.7 * mirror, 146.3 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -268.7 * mirror, 146.3 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -275.2 * mirror, 154.1 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -275.2 * mirror, 154.1 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -213.9 * mirror, 155.9 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -213.9 * mirror, 155.9 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -195 * mirror, 128 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -195 * mirror, 128 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -57.9 * mirror, 198.2 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -57.9 * mirror, 198.2 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 20.2 * mirror, 273.6 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 20.2 * mirror, 273.6 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 97.5 * mirror, 274.3 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 97.5 * mirror, 274.3 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 187.8 * mirror, 354.2 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 187.8 * mirror, 354.2 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 151.4 * mirror, 371.7 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 151.4 * mirror, 371.7 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 446.5 * mirror, 280.9 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 446.5 * mirror, 280.9 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 410.5 * mirror, 256.9 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 410.5 * mirror, 256.9 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 286.5 * mirror, 300.1 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 286.5 * mirror, 300.1 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 274 * mirror, 307.3 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 274 * mirror, 307.3 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 240.9 * mirror, 299.3 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 240.9 * mirror, 299.3 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 179 * mirror, 346.3 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 179 * mirror, 346.3 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 166.1 * mirror, 341.1 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 166.1 * mirror, 341.1 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 154.1 * mirror, 336.3 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 154.1 * mirror, 336.3 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 143 * mirror, 331.9 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 143 * mirror, 331.9 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 132.7 * mirror, 327.8 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 132.7 * mirror, 327.8 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 123.4 * mirror, 324.1 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 123.4 * mirror, 324.1 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 114.9 * mirror, 320.7 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 114.9 * mirror, 320.7 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 107.3 * mirror, 317.7 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 107.3 * mirror, 317.7 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 100.6 * mirror, 315 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 100.6 * mirror, 315 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 94.9 * mirror, 312.7 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 94.9 * mirror, 312.7 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 90 * mirror, 310.8 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 90 * mirror, 310.8 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -1.8 * mirror, 269.2 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -1.8 * mirror, 269.2 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -1.4 * mirror, 264.7 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -1.4 * mirror, 264.7 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -1 * mirror, 260.3 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -1 * mirror, 260.3 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -0.6 * mirror, 255.8 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -0.6 * mirror, 255.8 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -0.4 * mirror, 251.4 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -0.4 * mirror, 251.4 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -1.5 * mirror, 247 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -1.5 * mirror, 247 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 0 * mirror, 239.6 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 0 * mirror, 239.6 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 0.2 * mirror, 234.9 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 0.2 * mirror, 234.9 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 0.5 * mirror, 231.1 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 0.5 * mirror, 231.1 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 0.7 * mirror, 221.1 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 0.7 * mirror, 221.1 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 1.1 * mirror, 222.4 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 1.1 * mirror, 222.4 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 1.8 * mirror, 217.6 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 1.8 * mirror, 217.6 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 1.8 * mirror, 212.8 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 1.8 * mirror, 212.8 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 2.2 * mirror, 206.4 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 2.2 * mirror, 206.4 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -6.3 * mirror, 214 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -6.3 * mirror, 214 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -6.6 * mirror, 203.5 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -6.6 * mirror, 203.5 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -4.3 * mirror, 221.7 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -4.3 * mirror, 221.7 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -5.3 * mirror, 209.2 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -5.3 * mirror, 209.2 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -2.8 * mirror, 226.7 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -2.8 * mirror, 226.7 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -39.6 * mirror, 327.9 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -39.6 * mirror, 327.9 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -42 * mirror, 413.1 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -42 * mirror, 413.1 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -53.8 * mirror, 592.6 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -53.8 * mirror, 592.6 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -82.8 * mirror, 998.6 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -82.8 * mirror, 998.6 , 0 );

setScaleKey( spep_0 + 52 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 55 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 56 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 59 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 60 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 113 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 114 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.43, 0.43 );

setRotateKey( spep_0 + 52 + OFFSET_X, 1, 21.3 * mirror );
setRotateKey( spep_0 + 65 + OFFSET_X, 1, 21.3 * mirror );
setRotateKey( spep_0 + 66 + OFFSET_X, 1, -40 * mirror );
setRotateKey( spep_0 + 67 + OFFSET_X, 1, -40 * mirror );
setRotateKey( spep_0 + 68 + OFFSET_X, 1, -44.9 * mirror );
setRotateKey( spep_0 + 69 + OFFSET_X, 1, -44.9 * mirror );
setRotateKey( spep_0 + 70 + OFFSET_X, 1, -49.8 * mirror );
setRotateKey( spep_0 + 73 + OFFSET_X, 1, -49.8 * mirror );
setRotateKey( spep_0 + 74 + OFFSET_X, 1, -30.9 * mirror );
setRotateKey( spep_0 + 77 + OFFSET_X, 1, -30.9 * mirror );
setRotateKey( spep_0 + 78 + OFFSET_X, 1, -44.5 * mirror );
setRotateKey( spep_0 + 81 + OFFSET_X, 1, -44.5 * mirror );
setRotateKey( spep_0 + 82 + OFFSET_X, 1, -43.4 * mirror );
setRotateKey( spep_0 + 89 + OFFSET_X, 1, -43.4 * mirror );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, -40.1 * mirror );
setRotateKey( spep_0 + 93 + OFFSET_X, 1, -40.1 * mirror );
setRotateKey( spep_0 + 94 + OFFSET_X, 1, -36.9 * mirror );
setRotateKey( spep_0 + 105 + OFFSET_X, 1, -36.9 * mirror );
setRotateKey( spep_0 + 106 + OFFSET_X, 1, -43.6 * mirror );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, -43.6 * mirror );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, -9 * mirror );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, -9 * mirror );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, 75.7 * mirror );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, 75.7 * mirror );

setBlendColor( spep_0 + 52 + OFFSET_X, 1, 3, 1, 0, 0, 0.25);
setBlendColor( spep_0 + 68 + OFFSET_X, 1, 3, 0.93, 0, 0, 0.25);
setBlendColor( spep_0 + 70 + OFFSET_X, 1, 3, 0.86, 0, 0, 0.25);
setBlendColor( spep_0 + 72 + OFFSET_X, 1, 3, 0.80, 0, 0, 0.25);
setBlendColor( spep_0 + 74 + OFFSET_X, 1, 3, 0.73, 0, 0, 0.25);
setBlendColor( spep_0 + 94 + OFFSET_X, 1, 3, 1, 0, 0, 0.25);
setBlendColor( spep_0 + 96 + OFFSET_X, 1, 3, 0.73, 0, 0, 0.25);
setBlendColor( spep_0 + 108 + OFFSET_X, 1, 3, 0.67, 0, 0, 0.23);
setBlendColor( spep_0 + 110 + OFFSET_X, 1, 3, 0.61, 0, 0, 0.21);
setBlendColor( spep_0 + 112 + OFFSET_X, 1, 3, 0.55, 0, 0, 0.19);
setBlendColor( spep_0 + 114 + OFFSET_X, 1, 3, 0.49, 0, 0, 0.17);
setBlendColor( spep_0 + 116 + OFFSET_X, 1, 3, 0.43, 0, 0, 0.15);
setBlendColor( spep_0 + 118 + OFFSET_X, 1, 3, 0.37, 0, 0, 0.13);
setBlendColor( spep_0 + 120 + OFFSET_X, 1, 3, 0.30, 0, 0, 0.10);
setBlendColor( spep_0 + 122 + OFFSET_X, 1, 3, 0.24, 0, 0, 0.08);
setBlendColor( spep_0 + 124 + OFFSET_X, 1, 3, 0.18, 0, 0, 0.06);
setBlendColor( spep_0 + 126 + OFFSET_X, 1, 3, 0.12, 0, 0, 0.04);
setBlendColor( spep_0 + 128 + OFFSET_X, 1, 3, 0.06, 0, 0, 0.02);
setBlendColor( spep_0 + 130 + OFFSET_X, 1, 3, 0, 0, 0, 0);
setBlendColor( spep_0 + 132 + OFFSET_X, 1, 3, 0.94, 0, 0, 0.06);
setBlendColor( spep_0 + 134 + OFFSET_X, 1, 3, 0.88, 0, 0, 0.12);
setBlendColor( spep_0 + 136 + OFFSET_X, 1, 3, 0.82, 0, 0, 0.18);
setBlendColor( spep_0 + 138 + OFFSET_X, 1, 3, 0.75, 0, 0, 0.25);
setBlendColor( spep_0 + 164 + OFFSET_X, 1, 3, 1.0, 0.30, 0, 0.20);
setBlendColor( spep_0 + 166 + OFFSET_X, 1, 3, 0.94, 0.23, 0, 0.21);
setBlendColor( spep_0 + 168 + OFFSET_X, 1, 3, 0.88, 0.15, 0, 0.22);
setBlendColor( spep_0 + 170 + OFFSET_X, 1, 3, 0.82, 0.078, 0, 0.23);
setBlendColor( spep_0 + 172 + OFFSET_X, 1, 3, 0.75, 0, 0, 0.25);
setBlendColor( spep_0 + 182 + OFFSET_X, 1, 0, 0, 0, 0, 0);

setGaussBlurKey( spep_0 + 51 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_0 + 52 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_0 + 69 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_0 + 70 + OFFSET_X, 1, 0 );

setGaussBlurKey( spep_0 + 171 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_0 + 172 + OFFSET_X, 1, 0.004 );
setGaussBlurKey( spep_0 + 175 + OFFSET_X, 1, 0.004 );
setGaussBlurKey( spep_0 + 176 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_0 + 177 + OFFSET_X, 1, 0 );
setGaussBlurKey( spep_0 + 178 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_0 + 179 + OFFSET_X, 1, 0.002 );
setGaussBlurKey( spep_0 + 180 + OFFSET_X, 1, 0 );

--敵の動き3
setDisp( spep_0 + 188 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 262 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_0 + 188 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 188 + OFFSET_X, 1, 10.1 * mirror, -96.8 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 10.1 * mirror, -96.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 8.1 * mirror, -98.8 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 8.1 * mirror, -98.8 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 10.1 * mirror, -14.3 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 10.1 * mirror, -14.3 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 8.6 * mirror, 33.7 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 8.6 * mirror, 33.7 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 10.1 * mirror, 31.7 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 10.1 * mirror, 31.7 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 8.1 * mirror, 75.2 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 8.1 * mirror, 75.2 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 10.1 * mirror, 75.7 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 10.1 * mirror, 75.7 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 8.1 * mirror, 94.7 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 8.1 * mirror, 94.7 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 10.1 * mirror, 115.7 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 10.1 * mirror, 115.7 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 8.1 * mirror, 117.7 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 8.1 * mirror, 117.7 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 10.1 * mirror, 145.7 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 10.1 * mirror, 145.7 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 8.1 * mirror, 141.2 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 8.1 * mirror, 141.2 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 10.1 * mirror, 144.2 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 10.1 * mirror, 144.2 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 8.6 * mirror, 163.2 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 8.6 * mirror, 163.2 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 9.7 * mirror, 160.3 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 9.7 * mirror, 160.3 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 8.2 * mirror, 159.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 8.2 * mirror, 159.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 10.3 * mirror, 163.4 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 10.3 * mirror, 163.4 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 8.4 * mirror, 162.4 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 8.4 * mirror, 162.4 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 10.4 * mirror, 160.5 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 10.4 * mirror, 160.5 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 7.9 * mirror, 163.1 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 7.9 * mirror, 163.1 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 10.1 * mirror, 165.4 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 10.1 * mirror, 165.4 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 8.1 * mirror, 164.1 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 8.1 * mirror, 164.1 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 10.2 * mirror, 162.8 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 10.2 * mirror, 162.8 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 8.2 * mirror, 164.9 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 8.2 * mirror, 164.9 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 10.3 * mirror, 167.8 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 10.3 * mirror, 167.8 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 8.3 * mirror, 165.9 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 8.3 * mirror, 165.9 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 10.5 * mirror, 164.4 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 10.5 * mirror, 164.4 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 8.4 * mirror, 168.9 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 8.4 * mirror, 168.9 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 10.6 * mirror, 167.6 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 10.6 * mirror, 167.6 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 8.6 * mirror, 166.2 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 8.6 * mirror, 166.2 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 10.8 * mirror, 168.5 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 10.8 * mirror, 168.5 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 8.7 * mirror, 171 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 8.7 * mirror, 171 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 10.5 * mirror, 169.6 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 10.5 * mirror, 169.6 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 8.4 * mirror, 168.2 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 8.4 * mirror, 168.2 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 10.9 * mirror, 170.7 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 10.9 * mirror, 170.7 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 9 * mirror, 172.9 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 9 * mirror, 172.9 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 10.6 * mirror, 171.2 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 10.6 * mirror, 171.2 , 0 );

setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 0.4, 0.4 );

setRotateKey( spep_0 + 188 + OFFSET_X, 1, -83.5 * mirror );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -83.5 * mirror );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 300, 0, 29, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

setBlendColor( spep_0 + 14 + OFFSET_X, 1, 0, 0, 0, 0, 0);

SP_dodge = spep_0 + 4; --spep名とフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止


playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
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

--敵つかむ
SE002 = playSeVer2( spep_0 + 18, 1004, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 32, 1188, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_0 + 32, SE003, 75 );
setStartTimeMs( SE003,  167 );
SE004 = playSeVer2( spep_0 + 22, 1414, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 26, 1170, "",spep_0 + 69, 0, 19, -1);
SE006 = playSeVer2( spep_0 + 26, 1012, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 26, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 64, 1116, "",spep_0 + 122, 0, 19, -1);
--敵投げる
SE009 = playSeVer2( spep_0 + 99, 1312, "",spep_0 + 178, 0, 24, -1);
SE010 = playSeVer2( spep_0 + 99, 1027, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 99, 1452, "",spep_0 + 168, 0, 31, -1);
--尻尾で追い討ち
SE012 = playSeVer2( spep_0 + 153, 1003, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 162, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE013, 85 );
SE014 = playSeVer2( spep_0 + 162, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE014, 76 );
SE015 = playSeVer2( spep_0 + 162, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE015, 61 );
SE016 = playSeVer2( spep_0 + 163, 1359, "", 0, 0, 0, -1);
--敵飛び上がる
SE017 = playSeVer2( spep_0 + 188, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 188, SE017, 76 );
SE018 = playSeVer2( spep_0 + 188, 1501, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 188, 1117, "",spep_0 + 278, 0, 38, -1);
SE020 = playSeVer2( spep_0 + 188, 1017, "", 0, 0, 0, -1);
--カードカットイン
--SE021 = playSeVer2( spep_1 + 7, 1035, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 434

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 上空の敵へ連続気弾（ビーム状）→爆発
-------------------------------------------------
MAX_FRAME_2 = 320;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 上空の敵へ連続気弾（ビーム状）→爆発(ef_002)
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

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 80; --spep名とフレーム数を置き換える

if (_IS_PLAYER_SIDE_ == 1) then

   -- ** 顔カットイン ** --
   --speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
   --setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
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

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 32 + OFFSET_X, 1, 0 );

changeAnimeBySide( spep_2 + 0, 1, 108 );

setMoveKey( spep_2 + 0, 1, 12.5 * mirror, 172.5 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 12.2 * mirror, 169.9 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 12.2 * mirror, 169.9 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 11.9 * mirror, 167.3 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 11.9 * mirror, 167.3 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 11.9 * mirror, 166.3 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 11.9 * mirror, 166.3 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 12 * mirror, 165.4 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 12 * mirror, 165.4 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 12.1 * mirror, 164.5 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 12.1 * mirror, 164.5 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 12.1 * mirror, 164.1 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 12.1 * mirror, 164.1 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 12.1 * mirror, 163.7 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 12.1 * mirror, 163.7 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 12.9 * mirror, 163.8 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 12.9 * mirror, 163.8 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 12.5 * mirror, 164.2 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 12.5 * mirror, 164.2 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 12.9 * mirror, 163.8 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 12.9 * mirror, 163.8 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 12.5 * mirror, 164.2 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 12.5 * mirror, 164.2 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 12.9 * mirror, 164.6 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 12.9 * mirror, 164.6 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 12.5 * mirror, 164.2 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 12.5 * mirror, 164.2 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 12.9 * mirror, 164.2 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 12.9 * mirror, 164.2 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 12.5 * mirror, 163.8 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 12.5 * mirror, 163.8 , 0 );

setScaleKey( spep_2 + 0, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 0.4, 0.4 );

setRotateKey( spep_2 + 0, 1, -83.5 * mirror );
setRotateKey( spep_2 + 32 + OFFSET_X, 1, -83.5 * mirror );

setBlendColor( spep_2 + 16 + OFFSET_X, 1, 3, 0.89, 0, 0.63, 0.58);
setBlendColor( spep_2 + 32 + OFFSET_X, 1, 0, 0, 0, 0);

-- ** 音 ** --
--連続気弾
SE022 = playSeVer2( spep_2 + 10, 3, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE022, 78 );
SE023 = playSeVer2( spep_2 + 10, 1448, "",spep_2 + 222, 0, 21, -1);
setSeVolumeByWorkId( spep_2 + 10, SE023, 219 );
SE024 = playSeVer2( spep_2 + 10, 1463, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE024, 130 );
SE025 = playSeVer2( spep_2 + 10, 1353, "", 0, 0, 0, -1);
--爆発
SE026 = playSeVer2( spep_2 + 10, 1024, "", 0, 0, 0, -1);
--セリフカットイン
--SE027 = playSeVer2( spep_2 + 91, 1018, "", 0, 0, 0, -1);
--連続気弾
SE028 = playSeVer2( spep_2 + 87, 1353, "", 0, 0, 0, -1);
--爆発
SE029 = playSeVer2( spep_2 + 98, 1137, "", 0, 0, 0, -1);
--連続気弾
SE030 = playSeVer2( spep_2 + 105, 1463, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 105, SE030, 130 );
SE031 = playSeVer2( spep_2 + 154, 1353, "",spep_2 + 230, 0, 26, -1);
--爆発
SE032 = playSeVer2( spep_2 + 197, 1067, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 197, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 200); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 - 0); -- 320