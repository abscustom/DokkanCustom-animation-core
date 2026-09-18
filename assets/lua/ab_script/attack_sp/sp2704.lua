-- 9028690:UR_トッポ(破壊神モード)_アクティブ必殺技：破壊玉(エネミー側)
-- sp_effect_a2_00238
-- sp2704

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01  = 162808;  -- 開幕～フィニッシュまで ef_001
--SP_01b = 162809;  -- 開幕～フィニッシュまで背景 ef_001b

-- 敵側
SP_01r  = 162810;  -- 開幕～フィニッシュまで ef_001r

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
--[[
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
]]
ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------
-- 味方側
------------------------------------------------------



else 

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

setupMovie(0, SP_01, 0, 1);

------------------------------------------------------
-- 開幕～フィニッシュまで
------------------------------------------------------
MAX_FRAME_0 = 908;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 開幕～フィニッシュまで(ef_001r)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
--[[
base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕～フィニッシュまで背景(ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);
]]
-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp(spep_0 + 0, 1, 1)
setDisp(spep_0 + 90 + OFFSET_X, 1, 0)

changeAnime( spep_0 + 0, 1, 0 );

setMoveKey( spep_0 + 0, 1, -178.5, 102.4 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, -179, 102.7 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, -179, 102.7 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, -179.5, 103 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, -179.5, 103 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, -180, 103.4 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, -180, 103.4 , 0 );
setMoveKey( spep_0 + 8 + OFFSET_X, 1, -180.5, 103.7 , 0 );
setMoveKey( spep_0 + 9 + OFFSET_X, 1, -180.5, 103.7 , 0 );
setMoveKey( spep_0 + 10 + OFFSET_X, 1, -181, 104 , 0 );
setMoveKey( spep_0 + 11 + OFFSET_X, 1, -181, 104 , 0 );
setMoveKey( spep_0 + 12 + OFFSET_X, 1, -181.5, 104.3 , 0 );
setMoveKey( spep_0 + 13 + OFFSET_X, 1, -181.5, 104.3 , 0 );
setMoveKey( spep_0 + 14 + OFFSET_X, 1, -182, 104.6 , 0 );
setMoveKey( spep_0 + 15 + OFFSET_X, 1, -182, 104.6 , 0 );
setMoveKey( spep_0 + 16 + OFFSET_X, 1, -182.5, 105 , 0 );
setMoveKey( spep_0 + 17 + OFFSET_X, 1, -182.5, 105 , 0 );
setMoveKey( spep_0 + 18 + OFFSET_X, 1, -183, 105.3 , 0 );
setMoveKey( spep_0 + 19 + OFFSET_X, 1, -183, 105.3 , 0 );
setMoveKey( spep_0 + 20 + OFFSET_X, 1, -183.5, 105.6 , 0 );
setMoveKey( spep_0 + 21 + OFFSET_X, 1, -183.5, 105.6 , 0 );
setMoveKey( spep_0 + 22 + OFFSET_X, 1, -184, 105.9 , 0 );
setMoveKey( spep_0 + 23 + OFFSET_X, 1, -184, 105.9 , 0 );
setMoveKey( spep_0 + 24 + OFFSET_X, 1, -184.5, 106.3 , 0 );
setMoveKey( spep_0 + 25 + OFFSET_X, 1, -184.5, 106.3 , 0 );
setMoveKey( spep_0 + 26 + OFFSET_X, 1, -185, 106.6 , 0 );
setMoveKey( spep_0 + 27 + OFFSET_X, 1, -185, 106.6 , 0 );
setMoveKey( spep_0 + 28 + OFFSET_X, 1, -185.5, 106.9 , 0 );
setMoveKey( spep_0 + 29 + OFFSET_X, 1, -185.5, 106.9 , 0 );
setMoveKey( spep_0 + 30 + OFFSET_X, 1, -186, 107.2 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, -186, 107.2 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, -186.5, 107.5 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, -186.5, 107.5 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, -187, 107.9 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, -187, 107.9 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, -193, 102.7 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, -193, 102.7 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, -197.4, 111.1 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, -197.4, 111.1 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, -186.1, 100 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, -186.1, 100 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, -183.7, 114 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, -183.7, 114 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, -189.5, 109.5 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, -189.5, 109.5 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, -189.9, 107.2 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, -189.9, 107.2 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, -190.4, 112.8 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, -190.4, 112.8 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, -190.9, 110.5 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, -190.9, 110.5 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, -191.2, 117 , 0 );
setMoveKey( spep_0 + 53 + OFFSET_X, 1, -191.2, 117 , 0 );
setMoveKey( spep_0 + 54 + OFFSET_X, 1, -191.9, 103.3 , 0 );
setMoveKey( spep_0 + 55 + OFFSET_X, 1, -191.9, 103.3 , 0 );
setMoveKey( spep_0 + 56 + OFFSET_X, 1, -197.2, 114.9 , 0 );
setMoveKey( spep_0 + 57 + OFFSET_X, 1, -197.2, 114.9 , 0 );
setMoveKey( spep_0 + 58 + OFFSET_X, 1, -198.5, 106.2 , 0 );
setMoveKey( spep_0 + 59 + OFFSET_X, 1, -198.5, 106.2 , 0 );
setMoveKey( spep_0 + 60 + OFFSET_X, 1, -200.5, 118.2 , 0 );
setMoveKey( spep_0 + 61 + OFFSET_X, 1, -200.5, 118.2 , 0 );
setMoveKey( spep_0 + 62 + OFFSET_X, 1, -199.4, 105.9 , 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -199.4, 105.9 , 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -194.4, 112.7 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -194.4, 112.7 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -194.8, 113.1 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -194.8, 113.1 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -195.2, 113.6 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -195.2, 113.6 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -195.6, 114 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -195.6, 114 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -195.9, 114.4 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -195.9, 114.4 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -196.3, 114.9 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -196.3, 114.9 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -196.7, 115.3 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -196.7, 115.3 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -197, 115.7 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -197, 115.7 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -197.4, 116.2 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -197.4, 116.2 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -197.8, 116.6 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -197.8, 116.6 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -198.2, 117 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -198.2, 117 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -198.6, 117.5 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -198.6, 117.5 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -198.9, 117.9 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -198.9, 117.9 , 0 );

setScaleKey( spep_0 + 0, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 9 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 10 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 21 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 22 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 33 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 34 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 57 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 58 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 0.6, 0.6 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 90 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp(spep_0 + 686 + OFFSET_X, 1, 1)
setDisp(spep_0 + 792 + OFFSET_X, 1, 0)

changeAnime( spep_0 + 686 + OFFSET_X, 1, 18 );
changeAnime( spep_0 + 760 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 686 + OFFSET_X, 1, -10.8, 0.1, 0 );
setMoveKey( spep_0 + 687 + OFFSET_X, 1, -10.8, 0.1, 0 );
setMoveKey( spep_0 + 688 + OFFSET_X, 1, -26.2, -19.8, 0 );
setMoveKey( spep_0 + 689 + OFFSET_X, 1, -26.2, -19.8, 0 );
setMoveKey( spep_0 + 690 + OFFSET_X, 1, -7.4, 18.4, 0 );
setMoveKey( spep_0 + 691 + OFFSET_X, 1, -7.4, 18.4, 0 );
setMoveKey( spep_0 + 692 + OFFSET_X, 1, -4.4, -18.4, 0 );
setMoveKey( spep_0 + 693 + OFFSET_X, 1, -4.4, -18.4, 0 );
setMoveKey( spep_0 + 694 + OFFSET_X, 1, -19.6, 0.2, 0 );
setMoveKey( spep_0 + 695 + OFFSET_X, 1, -19.6, 0.2, 0 );
setMoveKey( spep_0 + 696 + OFFSET_X, 1, -20.6, -17.9, 0 );
setMoveKey( spep_0 + 697 + OFFSET_X, 1, -20.6, -17.9, 0 );
setMoveKey( spep_0 + 698 + OFFSET_X, 1, -21, -1, 0 );
setMoveKey( spep_0 + 699 + OFFSET_X, 1, -21, -1, 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, -3.6, -19.6, 0 );
setMoveKey( spep_0 + 701 + OFFSET_X, 1, -3.6, -19.6, 0 );
setMoveKey( spep_0 + 702 + OFFSET_X, 1, -13.1, -13.5, 0 );
setMoveKey( spep_0 + 703 + OFFSET_X, 1, -13.1, -13.5, 0 );
setMoveKey( spep_0 + 704 + OFFSET_X, 1, -34, -32.9, 0 );
setMoveKey( spep_0 + 705 + OFFSET_X, 1, -34, -32.9, 0 );
setMoveKey( spep_0 + 706 + OFFSET_X, 1, -11.7, 5.9, 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, -11.7, 5.9, 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, -1, -30.5, 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, -1, -30.5, 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, -17.6, -11.3, 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, -17.6, -11.3, 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, -18.1, -28.8, 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, -18.1, -28.8, 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, -23.9, -11.5, 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, -23.9, -11.5, 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, -15.5, -22, 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, -15.5, -22, 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, -37.6, -41, 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, -37.6, -41, 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, -15.7, -1.7, 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, -15.7, -1.7, 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, -5.4, -37.6, 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, -5.4, -37.6, 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, -17.4, -18, 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, -17.4, -18, 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, -13.1, -35.1, 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, -13.1, -35.1, 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, -24.4, -17.3, 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, -24.4, -17.3, 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, -10.7, -34.9, 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, -10.7, -34.9, 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, -31.6, -9.7, 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, -31.6, -9.7, 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, -38.9, -45.3, 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, -38.9, -45.3, 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, -16.7, -28.7, 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, -16.7, -28.7, 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, -13, -16.4, 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, -13, -16.4, 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, -8.5, -45.3, 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, -8.5, -45.3, 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, -41.1, -11.3, 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, -41.1, -11.3, 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, -38.7, -46.5, 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, -38.7, -46.5, 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, -16.8, -29.6, 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, -16.8, -29.6, 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, 31.5, 2.2 , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, 31.5, 2.2 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, -8.8, 41.6 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, -8.8, 41.6 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, -14.2, 11.8 , 0 );
setMoveKey( spep_0 + 765 + OFFSET_X, 1, -14.2, 11.8 , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, 16.9, 60.4 , 0 );
setMoveKey( spep_0 + 767 + OFFSET_X, 1, 16.9, 60.4 , 0 );
setMoveKey( spep_0 + 768 + OFFSET_X, 1, -23.9, 27.8 , 0 );
setMoveKey( spep_0 + 769 + OFFSET_X, 1, -23.9, 27.8 , 0 );
setMoveKey( spep_0 + 770 + OFFSET_X, 1, -29.7, 50.3 , 0 );
setMoveKey( spep_0 + 771 + OFFSET_X, 1, -29.7, 50.3 , 0 );
setMoveKey( spep_0 + 772 + OFFSET_X, 1, -16.1, 38 , 0 );
setMoveKey( spep_0 + 773 + OFFSET_X, 1, -16.1, 38 , 0 );
setMoveKey( spep_0 + 774 + OFFSET_X, 1, -6.1, 70.6 , 0 );
setMoveKey( spep_0 + 775 + OFFSET_X, 1, -6.1, 70.6 , 0 );
setMoveKey( spep_0 + 776 + OFFSET_X, 1, -10.4, 48.3 , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, -10.4, 48.3 , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, -51.9, 89 , 0 );
setMoveKey( spep_0 + 779 + OFFSET_X, 1, -51.9, 89 , 0 );
setMoveKey( spep_0 + 780 + OFFSET_X, 1, -58.4, 60.6 , 0 );
setMoveKey( spep_0 + 781 + OFFSET_X, 1, -58.4, 60.6 , 0 );
setMoveKey( spep_0 + 782 + OFFSET_X, 1, -45.5, 84.4 , 0 );
setMoveKey( spep_0 + 783 + OFFSET_X, 1, -45.5, 84.4 , 0 );
setMoveKey( spep_0 + 784 + OFFSET_X, 1, -36.3, 103.9 , 0 );
setMoveKey( spep_0 + 785 + OFFSET_X, 1, -36.3, 103.9 , 0 );
setMoveKey( spep_0 + 786 + OFFSET_X, 1, -41.2, 82.6 , 0 );
setMoveKey( spep_0 + 787 + OFFSET_X, 1, -41.2, 82.6 , 0 );
setMoveKey( spep_0 + 788 + OFFSET_X, 1, -76, 116.4 , 0 );
setMoveKey( spep_0 + 789 + OFFSET_X, 1, -76, 116.4 , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, -76.5, 81.3 , 0 );
setMoveKey( spep_0 + 792 + OFFSET_X, 1, -76.5, 81.3 , 0 );

setScaleKey( spep_0 + 686 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 687 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_0 + 688 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 689 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 690 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 691 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 692 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 693 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 694 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 695 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 696 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 697 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 698 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 701 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 702 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 703 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 704 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 705 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 706 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 707 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 708 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 709 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 710 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 711 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 712 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 715 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 716 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 717 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 718 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 719 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 720 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 723 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 725 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 726 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 727 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 728 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 729 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 730 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 733 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 734 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 735 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 736 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 739 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 740 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 741 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 742 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 745 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 746 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 759 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 760 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 761 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 762 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 763 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 764 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 765 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 766 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 767 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 768 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 769 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 770 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 771 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 772 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 773 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 774 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 775 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 776 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 777 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 778 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 779 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 780 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 781 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 782 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 783 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 784 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 785 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 786 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 787 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 788 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 792 + OFFSET_X, 1, 3.42, 3.42 );

setRotateKey( spep_0 + 686 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 792 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 760 + OFFSET_X, 1, 3, 0, 0, 0, 0.6 );
setBlendColor( spep_0 + 762 + OFFSET_X, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_0 + 764 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_0 + 792 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 320, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--着地
SE002 = playSeVer2( spep_0 + 6, 63, "",spep_0 + 52, 0, 16, -1);
SE004 = playSeVer2( spep_0 + 20, 1004, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 26, 1011, "", 0, 0, 0, -1);

--オーラ
SE003 = playSeVer2( spep_0 + 30, 1371, "",spep_0 + 304, 14, 26, -1);
setSeVolumeByWorkId( spep_0 + 30, SE003, 33 );
setStartTimeMs( SE003,  1717 );
setPitch( spep_0 + 30, SE003, -300 );
setTimeStretch( SE003, 0.8, 30, 4 );

--オーラ
SE006 = playSeVer2( spep_0 + 32, 1267, "",spep_0 + 304, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 32, SE006, 56 );
SE007 = playSeVer2( spep_0 + 34, 1176, "",spep_0 + 304, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 34, SE007, 49 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 76; --エンドフェイズのフレーム数を置き換える
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, - 1, 0, 0, - 350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, - 1, 0, 0, 350); -- 回避の文字表示

-- ** 敵キャラクター ** --
setBlendColor( SP_dodge + 9, 1, 3, 0, 0, 0, 0); --回避後の敵の色戻す

entryFade(SP_dodge + 5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge + 10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------
-- ** 音 ** --
--セリフカットイン
--SE008 = playSeVer2( spep_0 + 96, 1018, "", 0, 0, 0, -1);

--エネルギー高める
SE009 = playSeVer2( spep_0 + 162, 1153, "", 0, 12, 0, -1);
SE010 = playSeVer2( spep_0 + 170, 1264, "",spep_0 + 344, 0, 96, -1);
setPitch( spep_0 + 170, SE010, -600 );
setTimeStretch( SE010, 0.6, 30, 4 );
setSeVolumeByWorkId( spep_0 + 170, SE010, 130 );
SE011 = playSeVer2( spep_0 + 170, 1374, "",spep_0 + 262, 0, 44, -1);

--気玉溜め音
SE013 = playSeVer2( spep_0 + 260, 1255, "",spep_0 + 654, 0, 38, -1);
SE012 = playSeVer2( spep_0 + 284, 1371, "",spep_0 + 654, 10, 30, -1);
setStartTimeMs( SE012,  1467 );
setPitch( spep_0 + 284, SE012, -1000 );
setTimeStretch( SE012, 0.33, 30, 4 );

--気玉合わせる
SE014 = playSeVer2( spep_0 + 266, 1253, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 266, 1316, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 274, 1049, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 278, 1110, "", 0, 0, 0, -1);

--気玉溜め音
SE018 = playSeVer2( spep_0 + 290, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 290, SE018, 68 );
SE019 = playSeVer2( spep_0 + 296, 1412, "",spep_0 + 664, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 296, SE019, 158 );

--気玉大きくなる
SE020 = playSeVer2( spep_0 + 456, 1274, "", 0, 12, 0, -1);
setStartTimeMs( SE020,  167 );
SE021 = playSeVer2( spep_0 + 462, 1153, "", 0, 0, 0, -1);
setPitch( spep_0 + 462, SE021, -400 );
setTimeStretch( SE021, 0.73, 30, 4 );
SE022 = playSeVer2( spep_0 + 498, 1068, "", 0, 18, 0, -1);
SE023 = playSeVer2( spep_0 + 498, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 498, SE023, 79 );
SE024 = playSeVer2( spep_0 + 510, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 510, SE024, 76 );
setPitch( spep_0 + 510, SE024, -400 );
setTimeStretch( SE024, 0.73, 30, 4 );
SE026 = playSeVer2( spep_0 + 548, 1060, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 552, 1274, "", 0, 10, 0, -1);
setStartTimeMs( SE025,  200 );
setPitch( spep_0 + 552, SE025, -600 );
setTimeStretch( SE025, 0.6, 30, 4 );

--気玉発射
SE027 = playSeVer2( spep_0 + 636, 1190, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 636, 1193, "",spep_0 + 760, 0, 58, -1);
SE029 = playSeVer2( spep_0 + 636, 1027, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 636, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 636, SE030, 80 );
SE031 = playSeVer2( spep_0 + 660, 1215, "", 0, 0, 0, 0.6);

--地響き
SE032 = playSeVer2( spep_0 + 678, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 678, SE032, 132 );

--敵吹き飛ぶ
SE033 = playSeVer2( spep_0 + 738, 1258, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 738, 1067, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「私はなんとしても生き残る」
--playVoice( spep_0 + 92, 773 );
--setVoiceVolume( spep_0 + 92, 773, 110 );

--「そのために余計なものはすべて捨てた！」
--playVoice( spep_0 + 256, 774 );
--setVoiceVolume( spep_0 + 256, 774, 114 );

-- ** おわり ** --
dealDamage( spep_0 +  748);
endPhase( spep_0 + MAX_FRAME_0); -- 終了フレーム 908F

end
