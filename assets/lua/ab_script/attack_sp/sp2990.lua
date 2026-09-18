-- 1032550:LR_超サイヤ人4孫悟空(DAIMA)_アクティブ必殺：ゼンカイかめはめ波(敵側)
-- sp_effect_b4_00413
-- sp2990

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 敵側
SP_01 = 164343 --最初〜最後まで ef_001(ムービー再生用)
SP_01r = 164363 --最初〜最後まで ef_001r

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
else
------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 最初〜最後まで ef_001r
------------------------------------------------------
MAX_FRAME_0 = 1292;
setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 最初〜最後まで(ef_001r)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp(spep_0 + 652 + OFFSET_X, 1, 1)
setDisp(spep_0 + 660 + OFFSET_X, 1, 0)

changeAnime( spep_0 + 652 + OFFSET_X, 1, 4 );

setMoveKey( spep_0 + 652 + OFFSET_X, 1, -243.1, 109.5 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, -243.1, 109.5 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, -215.2, 82.8 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, -215.2, 82.8 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, -189.7, 58.3 , 0 );
setMoveKey( spep_0 + 657 + OFFSET_X, 1, -189.7, 58.3 , 0 );
setMoveKey( spep_0 + 658 + OFFSET_X, 1, -165.3, 39.4 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, -165.3, 39.4 , 0 );

setScaleKey( spep_0 + 652 + OFFSET_X, 1, 0.02, 0.02 );
setScaleKey( spep_0 + 653 + OFFSET_X, 1, 0.02, 0.02 );
setScaleKey( spep_0 + 654 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 655 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 656 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 657 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 658 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 660 + OFFSET_X, 1, 0.24, 0.24 );

setRotateKey( spep_0 + 652 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 660 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp(spep_0 + 946 + OFFSET_X, 1, 1)
setDisp(spep_0 + 1010 + OFFSET_X, 1, 0)

changeAnime( spep_0 + 946 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 950 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 946 + OFFSET_X, 1, -1.3, -50.8 , 0 );
setMoveKey( spep_0 + 949 + OFFSET_X, 1, -1.3, -50.8 , 0 );
setMoveKey( spep_0 + 950 + OFFSET_X, 1, -27.3, -57.5 , 0 );
setMoveKey( spep_0 + 951 + OFFSET_X, 1, -27.3, -57.5 , 0 );
setMoveKey( spep_0 + 952 + OFFSET_X, 1, 4.1, -32.2 , 0 );
setMoveKey( spep_0 + 953 + OFFSET_X, 1, 4.1, -32.2 , 0 );
setMoveKey( spep_0 + 954 + OFFSET_X, 1, -7.8, -21.1 , 0 );
setMoveKey( spep_0 + 955 + OFFSET_X, 1, -7.8, -21.1 , 0 );
setMoveKey( spep_0 + 956 + OFFSET_X, 1, -26, -23.9 , 0 );
setMoveKey( spep_0 + 957 + OFFSET_X, 1, -26, -23.9 , 0 );
setMoveKey( spep_0 + 958 + OFFSET_X, 1, -34.9, -18.1 , 0 );
setMoveKey( spep_0 + 959 + OFFSET_X, 1, -34.9, -18.1 , 0 );
setMoveKey( spep_0 + 960 + OFFSET_X, 1, -47.9, -6.8 , 0 );
setMoveKey( spep_0 + 961 + OFFSET_X, 1, -47.9, -6.8 , 0 );
setMoveKey( spep_0 + 962 + OFFSET_X, 1, -57, -7.4 , 0 );
setMoveKey( spep_0 + 963 + OFFSET_X, 1, -57, -7.4 , 0 );
setMoveKey( spep_0 + 964 + OFFSET_X, 1, -65.6, -9.4 , 0 );
setMoveKey( spep_0 + 965 + OFFSET_X, 1, -65.6, -9.4 , 0 );
setMoveKey( spep_0 + 966 + OFFSET_X, 1, -77, -6 , 0 );
setMoveKey( spep_0 + 967 + OFFSET_X, 1, -77, -6 , 0 );
setMoveKey( spep_0 + 968 + OFFSET_X, 1, -87, -9.9 , 0 );
setMoveKey( spep_0 + 969 + OFFSET_X, 1, -87, -9.9 , 0 );
setMoveKey( spep_0 + 970 + OFFSET_X, 1, -96.3, -8.9 , 0 );
setMoveKey( spep_0 + 971 + OFFSET_X, 1, -96.3, -8.9 , 0 );
setMoveKey( spep_0 + 972 + OFFSET_X, 1, -101.5, -8.6 , 0 );
setMoveKey( spep_0 + 973 + OFFSET_X, 1, -101.5, -8.6 , 0 );
setMoveKey( spep_0 + 974 + OFFSET_X, 1, -109.3, -6.4 , 0 );
setMoveKey( spep_0 + 975 + OFFSET_X, 1, -109.3, -6.4 , 0 );
setMoveKey( spep_0 + 976 + OFFSET_X, 1, -113.8, -6 , 0 );
setMoveKey( spep_0 + 977 + OFFSET_X, 1, -113.8, -6 , 0 );
setMoveKey( spep_0 + 978 + OFFSET_X, 1, -122, -5.6 , 0 );
setMoveKey( spep_0 + 979 + OFFSET_X, 1, -122, -5.6 , 0 );
setMoveKey( spep_0 + 980 + OFFSET_X, 1, -126, -5.4 , 0 );
setMoveKey( spep_0 + 981 + OFFSET_X, 1, -126, -5.4 , 0 );
setMoveKey( spep_0 + 982 + OFFSET_X, 1, -132.3, -4.7 , 0 );
setMoveKey( spep_0 + 983 + OFFSET_X, 1, -132.3, -4.7 , 0 );
setMoveKey( spep_0 + 984 + OFFSET_X, 1, -135.8, -4.5 , 0 );
setMoveKey( spep_0 + 985 + OFFSET_X, 1, -135.8, -4.5 , 0 );
setMoveKey( spep_0 + 986 + OFFSET_X, 1, -144.1, -4.6 , 0 );
setMoveKey( spep_0 + 987 + OFFSET_X, 1, -144.1, -4.6 , 0 );
setMoveKey( spep_0 + 988 + OFFSET_X, 1, -147, -4.5 , 0 );
setMoveKey( spep_0 + 989 + OFFSET_X, 1, -147, -4.5 , 0 );
setMoveKey( spep_0 + 990 + OFFSET_X, 1, -147.4, -3.7 , 0 );
setMoveKey( spep_0 + 991 + OFFSET_X, 1, -147.4, -3.7 , 0 );
setMoveKey( spep_0 + 992 + OFFSET_X, 1, -149.8, -3.6 , 0 );
setMoveKey( spep_0 + 993 + OFFSET_X, 1, -149.8, -3.6 , 0 );
setMoveKey( spep_0 + 994 + OFFSET_X, 1, -157.4, -2.8 , 0 );
setMoveKey( spep_0 + 995 + OFFSET_X, 1, -157.4, -2.8 , 0 );
setMoveKey( spep_0 + 996 + OFFSET_X, 1, -159.4, -2.8 , 0 );
setMoveKey( spep_0 + 997 + OFFSET_X, 1, -159.4, -2.8 , 0 );
setMoveKey( spep_0 + 998 + OFFSET_X, 1, -162.7, -2 , 0 );
setMoveKey( spep_0 + 999 + OFFSET_X, 1, -162.7, -2 , 0 );
setMoveKey( spep_0 + 1000 + OFFSET_X, 1, -165.4, -2.4 , 0 );
setMoveKey( spep_0 + 1001 + OFFSET_X, 1, -165.4, -2.4 , 0 );
setMoveKey( spep_0 + 1002 + OFFSET_X, 1, -166.8, -2.4 , 0 );
setMoveKey( spep_0 + 1003 + OFFSET_X, 1, -166.8, -2.4 , 0 );
setMoveKey( spep_0 + 1004 + OFFSET_X, 1, -170.6, -2.1 , 0 );
setMoveKey( spep_0 + 1005 + OFFSET_X, 1, -170.6, -2.1 , 0 );
setMoveKey( spep_0 + 1006 + OFFSET_X, 1, -171.6, -2 , 0 );
setMoveKey( spep_0 + 1007 + OFFSET_X, 1, -171.6, -2 , 0 );
setMoveKey( spep_0 + 1008 + OFFSET_X, 1, -172.2, -2 , 0 );
setMoveKey( spep_0 + 1010 + OFFSET_X, 1, -172.2, -2 , 0 );

setScaleKey( spep_0 + 946 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 949 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 950 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 1010 + OFFSET_X, 1, 0.64, 0.64 );

setRotateKey( spep_0 + 946 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 949 + OFFSET_X, 1, 45.4 );
setRotateKey( spep_0 + 950 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_0 + 951 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_0 + 952 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 953 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 954 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_0 + 955 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_0 + 956 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_0 + 957 + OFFSET_X, 1, -3.7 );
setRotateKey( spep_0 + 958 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 959 + OFFSET_X, 1, -5 );
setRotateKey( spep_0 + 960 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_0 + 961 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_0 + 962 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_0 + 963 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_0 + 964 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_0 + 965 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_0 + 966 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_0 + 967 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_0 + 968 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_0 + 969 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_0 + 970 + OFFSET_X, 1, -11.3 );
setRotateKey( spep_0 + 971 + OFFSET_X, 1, -11.3 );
setRotateKey( spep_0 + 972 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_0 + 973 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_0 + 974 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 975 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 976 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_0 + 977 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_0 + 978 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_0 + 979 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_0 + 980 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_0 + 981 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_0 + 982 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_0 + 983 + OFFSET_X, 1, -15.8 );
setRotateKey( spep_0 + 984 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_0 + 985 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_0 + 986 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_0 + 987 + OFFSET_X, 1, -16.9 );
setRotateKey( spep_0 + 988 + OFFSET_X, 1, -17.4 );
setRotateKey( spep_0 + 989 + OFFSET_X, 1, -17.4 );
setRotateKey( spep_0 + 990 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_0 + 991 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_0 + 992 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_0 + 993 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_0 + 994 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_0 + 995 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_0 + 996 + OFFSET_X, 1, -19 );
setRotateKey( spep_0 + 997 + OFFSET_X, 1, -19 );
setRotateKey( spep_0 + 998 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_0 + 999 + OFFSET_X, 1, -19.3 );
setRotateKey( spep_0 + 1000 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 1001 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 1002 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_0 + 1003 + OFFSET_X, 1, -19.7 );
setRotateKey( spep_0 + 1004 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_0 + 1005 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_0 + 1006 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_0 + 1007 + OFFSET_X, 1, -20.1 );
setRotateKey( spep_0 + 1008 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_0 + 1010 + OFFSET_X, 1, -20.2 );

setBlendColor( spep_0 + 946 + OFFSET_X, 1, 3, 0.247, 0.515, 0.635, 1.0 );
setBlendColor( spep_0 + 950 + OFFSET_X, 1, 3, 0, 0, 0.211, 1.0 );
setBlendColor( spep_0 + 952 + OFFSET_X, 1, 3, 0.012, 0.026, 0.235, 1.0 );
setBlendColor( spep_0 + 954 + OFFSET_X, 1, 3, 0.025, 0.053, 0.259, 1.0 );
setBlendColor( spep_0 + 956 + OFFSET_X, 1, 3, 0.037, 0.08, 0.283, 1.0 );
setBlendColor( spep_0 + 958 + OFFSET_X, 1, 3, 0.05, 0.107, 0.307, 1.0 );
setBlendColor( spep_0 + 960 + OFFSET_X, 1, 3, 0.062, 0.134, 0.331, 1.0 );
setBlendColor( spep_0 + 962 + OFFSET_X, 1, 3, 0.075, 0.161, 0.355, 1.0 );
setBlendColor( spep_0 + 964 + OFFSET_X, 1, 3, 0.087, 0.188, 0.379, 1.0 );
setBlendColor( spep_0 + 966 + OFFSET_X, 1, 3, 0.1, 0.215, 0.403, 1.0 );
setBlendColor( spep_0 + 968 + OFFSET_X, 1, 3, 0.112, 0.242, 0.427, 1.0 );
setBlendColor( spep_0 + 970 + OFFSET_X, 1, 3, 0.125, 0.268, 0.451, 1.0 );
setBlendColor( spep_0 + 972 + OFFSET_X, 1, 3, 0.138, 0.295, 0.475, 1.0 );
setBlendColor( spep_0 + 974 + OFFSET_X, 1, 3, 0.15, 0.322, 0.499, 1.0 );
setBlendColor( spep_0 + 976 + OFFSET_X, 1, 3, 0.163, 0.349, 0.523, 1.0 );
setBlendColor( spep_0 + 978 + OFFSET_X, 1, 3, 0.175, 0.376, 0.547, 1.0 );
setBlendColor( spep_0 + 980 + OFFSET_X, 1, 3, 0.188, 0.403, 0.572, 1.0 );
setBlendColor( spep_0 + 982 + OFFSET_X, 1, 3, 0.2, 0.43, 0.596, 1.0 );
setBlendColor( spep_0 + 984 + OFFSET_X, 1, 3, 0.213, 0.457, 0.62, 1.0 );
setBlendColor( spep_0 + 986 + OFFSET_X, 1, 3, 0.225, 0.484, 0.644, 1.0 );
setBlendColor( spep_0 + 988 + OFFSET_X, 1, 3, 0.238, 0.511, 0.668, 1.0 );
setBlendColor( spep_0 + 990 + OFFSET_X, 1, 3, 0.251, 0.537, 0.692, 1.0 );
setBlendColor( spep_0 + 992 + OFFSET_X, 1, 3, 0.263, 0.564, 0.716, 1.0 );
setBlendColor( spep_0 + 994 + OFFSET_X, 1, 3, 0.276, 0.591, 0.74, 1.0 );
setBlendColor( spep_0 + 996 + OFFSET_X, 1, 3, 0.288, 0.618, 0.764, 1.0 );
setBlendColor( spep_0 + 998 + OFFSET_X, 1, 3, 0.301, 0.645, 0.788, 1.0 );
setBlendColor( spep_0 + 1000 + OFFSET_X, 1, 3, 0.313, 0.672, 0.812, 1.0 );
setBlendColor( spep_0 + 1002 + OFFSET_X, 1, 3, 0.326, 0.699, 0.836, 1.0 );
setBlendColor( spep_0 + 1004 + OFFSET_X, 1, 3, 0.338, 0.726, 0.86, 1.0 );
setBlendColor( spep_0 + 1006 + OFFSET_X, 1, 3, 0.351, 0.753, 0.884, 1.0 );
setBlendColor( spep_0 + 1008 + OFFSET_X, 1, 3, 0.364, 0.78, 0.909, 1.0 );
setBlendColor( spep_0 + 1010 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--地響き
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 500, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 52 );
setBandpassFilter( spep_0 + 0, SE001, 24, 330 );

--かめはめ波溜め
SE002 = playSeVer2( spep_0 + 24, 1209, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE002, 65 );
SE003 = playSeVer2( spep_0 + 24, 1210, "",spep_0 + 490, 0, 44, -1);
SE004 = playSeVer2( spep_0 + 24, 1181, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 24, 1152, "", 0, 0, 0, -1);
setPitch( spep_0 + 24, SE005, -200 );
setTimeStretch( SE005, 0.87, 30, 4 );

--セリフカットイン
-- SE006 = playSeVer2( spep_0 + 94, 1018, "", 0, 0, 0, -1);
-- setSeVolumeByWorkId( spep_0 + 94, SE006, 63 );

--かめはめ波溜め拡大
SE007 = playSeVer2( spep_0 + 120, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE007, 178 );
SE008 = playSeVer2( spep_0 + 206, 1137, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE008, 71 );
SE009 = playSeVer2( spep_0 + 210, 1356, "",spep_0 + 492, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 210, SE009, 87 );
SE010 = playSeVer2( spep_0 + 218, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 218, SE010, 68 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 396; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
--setVoiceVolume( SP_dodge - 12, 1082, 0 );

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, - 1, 0, 0, - 350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, - 1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge + 5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge + 10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --

--かめはめ波正面発射
SE011 = playSeVer2( spep_0 + 426, 1054, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 426, SE011, 126 );
SE012 = playSeVer2( spep_0 + 430, 1213, "",spep_0 + 618, 0, 72, -1);
setSeVolumeByWorkId( spep_0 + 430, SE012, 79 );
SE013 = playSeVer2( spep_0 + 430, 1284, "",spep_0 + 626, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 430, SE013, 74 );
SE014 = playSeVer2( spep_0 + 434, 1223, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 434, SE014, 89 );

--かめはめ波横向き
SE015 = playSeVer2( spep_0 + 488, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 488, SE015, 77 );
SE016 = playSeVer2( spep_0 + 502, 1193, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 502, SE016, 74 );

--かめはめ波飛んでいく
SE017 = playSeVer2( spep_0 + 526, 1211, "",spep_0 + 994, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 526, SE017, 224 );
SE018 = playSeVer2( spep_0 + 564, 1212, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 564, SE018, 56 );

--かめはめ波中
SE019 = playSeVer2( spep_0 + 650, 1161, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 650, SE019, 76 );

--かめはめ波飛んでいく
SE020 = playSeVer2( spep_0 + 658, 1491, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 668, 1052, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 716, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 716, SE022, 60 );
setTimeStretch( SE022, 1.14, 30, 4 );

--悟空集中線
SE023 = playSeVer2( spep_0 + 756, 1303, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 756, SE023, 72 );

--かめはめ波中
SE024 = playSeVer2( spep_0 + 864, 1161, "",spep_0 + 980, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 864, SE024, 82 );

--かめはめ波加速
SE025 = playSeVer2( spep_0 + 886, 1258, "",spep_0 + 1002, 0, 46, -1);
setSeVolumeByWorkId( spep_0 + 886, SE025, 83 );

--敵貫く
SE026 = playSeVer2( spep_0 + 948, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 948, SE026, 67 );
SE027 = playSeVer2( spep_0 + 950, 1032, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 958, 1512, "",spep_0 + 1060, 0, 64, -1);
setSeVolumeByWorkId( spep_0 + 958, SE028, 51 );

--かめはめ波飛んでいく
SE029 = playSeVer2( spep_0 + 998, 1304, "", 0, 0, 0, 0.5);
SE030 = playSeVer2( spep_0 + 1012, 1423, "",spep_0 + 1194, 0, 40, -1);
SE031 = playSeVer2( spep_0 + 1026, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1026, SE031, 151 );
SE032 = playSeVer2( spep_0 + 1060, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1060, SE032, 63 );

--爆発
SE033 = playSeVer2( spep_0 + 1146, 1159, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 1162, 1067, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 1176, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1176, SE035, 72 );
SE036 = playSeVer2( spep_0 + 1194, 1427, "", 0, 0, 0, -1);

-- ** おわり ** --
-- hideKoScreen();
-- fadeKoLabel(1.0,0.5)
dealDamage( spep_0 + 1150 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 終了フレーム 1292F

end
