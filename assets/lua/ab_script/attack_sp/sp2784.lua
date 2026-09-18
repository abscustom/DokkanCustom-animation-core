-- 1030040: UR_ピッコロ&孫悟飯(幼年期)_必殺技：爆砕魔撃閃
-- sp_effect_a7_00069
-- sp2784

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 163283;  -- セリフカットイン ef_001
SP_002 = 163284;  -- 格闘からフィニッシュ：前 ef_002
SP_002b = 163285;  -- 格闘からフィニッシュ：後ろ ef_002b

-- 敵側
SP_002r = 163286;  -- 格闘からフィニッシュ：前：反転 ef_002r
SP_002br = 163287;  -- 格闘からフィニッシュ：後ろ：反転 ef_002br

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

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- セリフカットイン ef_001
------------------------------------------------------
MAX_FRAME_0 = 104;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );  -- セリフカットイン ef_001
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
spep_x = spep_0 + 12;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
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
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--構える
SE001 = playSeVer2( spep_0 + 12, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE001, 138 );
SE003 = playSeVer2( spep_0 + 24, 1007, "", 0, 0, 0, -1);

--ホワイトアウト
SE004 = playSeVer2( spep_0 + 86, 8, "",spep_0 + 134, 0, 12, -1);

-- ** 白フェード ** --
entryFade( spep_0 + 96, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 104

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--ピッコロ向かっていく
SE006 = playSeVer2( spep_1 + 90, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 90, 1117, "", 0, 0, 0, -1);

------------------------------------------------------
-- 格闘からフィニッシュ：前 ef_002
------------------------------------------------------
MAX_FRAME_2 = 814;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- 格闘からフィニッシュ：前 ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- 格闘からフィニッシュ：後ろ ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 30 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 198 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 30 + OFFSET_X, 1, 117 );
changeAnime( spep_2 + 90 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 110 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 140 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 164 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 30 + OFFSET_X, 1, -12.4, 1.6 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -12.4, 1.6 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -12.3, 6.4 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -12.3, 6.4 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -12.2, 11.2 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -12.2, 11.2 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -12, 16 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -12, 16 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -11.9, 20.8 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -11.9, 20.8 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -11.8, 25.6 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -11.8, 25.6 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -11.7, 30.4 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -11.7, 30.4 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -11.6, 35.2 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -11.6, 35.2 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -11.5, 40 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -11.5, 40 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -11.4, 44.8 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -11.4, 44.8 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -11.3, 49.6 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -11.3, 49.6 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -11.2, 54.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -11.2, 54.5 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -11.1, 59.3 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -11.1, 59.3 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -11, 64.2 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -11, 64.2 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -10.9, 69.1 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -10.9, 69.1 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -10.8, 74 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -10.8, 74 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -10.7, 78.9 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -10.7, 78.9 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -10.6, 83.9 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -10.6, 83.9 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -10.5, 88.9 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -10.5, 88.9 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -10.4, 94 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -10.4, 94 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -10.3, 99 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -10.3, 99 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -10.2, 104.2 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -10.2, 104.2 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -10.1, 109.4 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -10.1, 109.4 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -10.1, 114.6 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -10.1, 114.6 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -10, 119.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -10, 119.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -9.9, 125.3 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -9.9, 125.3 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -9.8, 130.7 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -9.8, 130.7 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -9.7, 136.2 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -9.7, 136.2 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -9.7, 141.8 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -9.7, 141.8 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -9.6, 147.5 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -9.6, 147.5 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 25.2, 30.3 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 25.2, 30.3 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 27.4, 33.2 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 27.4, 33.2 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 29.7, 36 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 29.7, 36 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 32.1, 38.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 32.1, 38.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 34.4, 41.7 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 34.4, 41.7 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 36.8, 44.6 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 36.8, 44.6 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 39.1, 47.5 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 39.1, 47.5 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 41.5, 50.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 41.5, 50.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 44, 53.3 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 44, 53.3 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 46.4, 56.2 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 46.4, 56.2 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 113.1, -11.5 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 113.1, -11.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 162.1, -13.2 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 162.1, -13.2 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 136, 21.5 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 136, 21.5 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 187.9, 18.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 187.9, 18.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 162.6, -1.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 162.6, -1.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 195.1, 34.2 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 195.1, 34.2 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 208, -10.2 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 208, -10.2 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 186.6, 11.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 186.6, 11.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 208.1, 18.7 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 208.1, 18.7 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 197.8, 13.1 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 197.8, 13.1 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 211, 15.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 211, 15.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 213, 16.7 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 213, 16.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 214.8, 17.5 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 214.8, 17.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 216.6, 18.2 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 216.6, 18.2 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 209.7, -10.8 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 209.7, -10.8 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 107.3, 219.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 107.3, 219.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 69.3, 229.2 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 69.3, 229.2 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 71.4, 204.6 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 71.4, 204.6 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 69.2, 219.6 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 69.2, 219.6 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 50.1, 239.5 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 50.1, 239.5 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 85.6, 239.8 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 85.6, 239.8 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 53.2, 185.5 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 53.2, 185.5 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 52.1, 196.8 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 52.1, 196.8 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 62.9, 180.3 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 62.9, 180.3 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 52.9, 181.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 52.9, 181.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 60, 166.9 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 60, 166.9 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 51, 148.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 51, 148.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 20, 292.1 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 20, 292.1 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 64.1, 318.8 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 64.1, 318.8 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 29.4, 265.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 29.4, 265.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 8.8, 288.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 8.8, 288.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 48.1, 295.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 48.1, 295.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 16.8, 300.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 16.8, 300.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 18.7, 259.3 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 18.7, 259.3 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 30.8, 279.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 30.8, 279.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 17, 279.9 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 17, 279.9 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 16.4, 262.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 16.4, 262.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 21.7, 262.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 21.7, 262.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 24.4, 255.7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 24.4, 255.7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 24, 249.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 24, 249.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 23.6, 243.7 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 23.6, 243.7 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 23.3, 238.1 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 23.3, 238.1 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 23, 232.9 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 23, 232.9 , 0 );

setScaleKey( spep_2 + 30 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_2 + 30 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -68.2 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -68.2 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -53 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -53 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -56.5 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -56.5 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -59.3 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -59.3 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -61.6 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -61.6 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -63.4 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -63.4 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -64.8 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -64.8 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -65.9 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -65.9 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -66.7 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -66.7 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -67.3 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -67.3 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -67.7 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -67.7 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -67.9 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -67.9 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -68.1 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -68.1 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -68.2 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -68.2 );

-- 敵の動き2
setDisp( spep_2 + 254 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 318 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 254 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 298 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 254 + OFFSET_X, 1, -3.8, -206.8 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -3.8, -206.8 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -3.9, -201.4 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -3.9, -201.4 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -4.1, -196 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -4.1, -196 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -4.2, -190.5 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -4.2, -190.5 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -4.4, -185.1 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -4.4, -185.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -4.5, -179.7 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -4.5, -179.7 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -4.7, -174.3 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -4.7, -174.3 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -4.8, -168.9 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -4.8, -168.9 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -5, -163.4 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -5, -163.4 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -5.1, -158 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -5.1, -158 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -5.3, -152.6 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -5.3, -152.6 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -5.4, -147.2 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -5.4, -147.2 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -5.6, -141.7 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -5.6, -141.7 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -5.7, -136.3 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -5.7, -136.3 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -5.9, -130.9 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -5.9, -130.9 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -6, -125.5 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -6, -125.5 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -6.2, -120.1 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -6.2, -120.1 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -6.3, -114.6 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -6.3, -114.6 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -6.5, -109.2 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -6.5, -109.2 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -6.6, -103.8 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -6.6, -103.8 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -6.8, -98.4 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -6.8, -98.4 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -6.9, -92.9 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -6.9, -92.9 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 65.7, -234 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 65.7, -234 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 77, -318.5 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 77, -318.5 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 116.9, -144.3 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 116.9, -144.3 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 10.7, -272.3 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 10.7, -272.3 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 122.3, -285.6 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 122.3, -285.6 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 90, -286.5 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 90, -286.5 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 204.6, -287 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 204.6, -287 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 288.9, -460.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 288.9, -460.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 445.9, -450.9 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 445.9, -450.9 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 462, -448.2 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 462, -448.2 , 0 );

setScaleKey( spep_2 + 254 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 3.23, 3.23 );

setRotateKey( spep_2 + 254 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 36.6 );

-- 敵の動き3
setDisp( spep_2 + 342 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 382 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 342 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 342 + OFFSET_X, 1, 18.5, -71.4 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 18.5, -71.4 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 17.5, -68.6 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 17.5, -68.6 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 16.4, -65.8 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 16.4, -65.8 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 15.3, -63 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 15.3, -63 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 14.2, -60.1 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 14.2, -60.1 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 13.1, -57.3 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 13.1, -57.3 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 12, -54.5 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 12, -54.5 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 10.9, -51.7 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 10.9, -51.7 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 9.9, -48.9 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 9.9, -48.9 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 8.8, -46.1 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 8.8, -46.1 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 7.7, -43.3 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 7.7, -43.3 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 6.6, -40.5 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 6.6, -40.5 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 5.5, -37.7 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 5.5, -37.7 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 4.4, -34.8 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 4.4, -34.8 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 3.3, -32 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 3.3, -32 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 2.3, -29.2 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 2.3, -29.2 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 1.2, -26.4 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 1.2, -26.4 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 0.1, -23.6 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 0.1, -23.6 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -1, -20.8 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -1, -20.8 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -2.1, -18 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -2.1, -18 , 0 );

setScaleKey( spep_2 + 342 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 0.4, 0.4 );

setRotateKey( spep_2 + 342 + OFFSET_X, 1, -6.3 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, -6.3 );

-- ** 音 ** --
--ピッコロ向かっていく
SE008 = playSeVer2( spep_2 + 30, 1167, "",spep_2 + 84, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 30, SE008, 62 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 50;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);

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
--瞬間移動
SE009 = playSeVer2( spep_2 + 66, 1109, "", 0, 0, 0, -1);

--払う
SE010 = playSeVer2( spep_2 + 98, 1189, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 106, 1010, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 106, 1110, "", 0, 0, 0, -1);

--蹴り上げ
SE013 = playSeVer2( spep_2 + 132, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE013, 75 );
SE014 = playSeVer2( spep_2 + 134, 1110, "", 0, 0, 0, -1);

--膝蹴り
SE015 = playSeVer2( spep_2 + 158, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 160, 1187, "",spep_2 + 234, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 160, SE016, 81 );

--顔アップ
SE017 = playSeVer2( spep_2 + 176, 1072, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 210, 19, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 210, SE018, 81 );
SE019 = playSeVer2( spep_2 + 210, 1264, "",spep_2 + 314, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 210, SE019, 83 );
setPitch( spep_2 + 210, SE019, -200 );
setTimeStretch( SE019, 0.87, 30, 4 );

--振りかぶる
SE020 = playSeVer2( spep_2 + 256, 1278, "",spep_2 + 328, 0, 20, -1);

--叩き落とす
SE021 = playSeVer2( spep_2 + 300, 1123, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE022 = playSeVer2( spep_2 + 338, 1027, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 362, 1121, "",spep_2 + 432, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 362, SE023, 61 );

--地面激突
SE024 = playSeVer2( spep_2 + 414, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 414, SE024, 89 );

--背景音
SE025 = playSeVer2( spep_2 + 476, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 476, SE025, 68 );

--気弾溜め
SE026 = playSeVer2( spep_2 + 532, 1265, "",spep_2 + 870, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 532, SE026, 48 );
SE027 = playSeVer2( spep_2 + 532, 1296, "",spep_2 + 706, 0, 16, -1);
SE028 = playSeVer2( spep_2 + 532, 1262, "",spep_2 + 704, 0, 20, -1);

--気弾発射
SE029 = playSeVer2( spep_2 + 606, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 606, SE029, 81 );
SE030 = playSeVer2( spep_2 + 606, 1145, "", 0, 0, 0, 0.6);
SE031 = playSeVer2( spep_2 + 606, 1284, "",spep_2 + 738, 0, 34, 0.6);

--気弾飛んでいく
SE032 = playSeVer2( spep_2 + 650, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 650, SE032, 232 );

--爆発
SE033 = playSeVer2( spep_2 + 692, 1023, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 692, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 692, SE034, 77 );

-- ** おわり ** --
dealDamage( spep_2 + 700 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 814

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- セリフカットイン ef_001
------------------------------------------------------
MAX_FRAME_0 = 104;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );  -- セリフカットイン ef_001
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
spep_x = spep_0 + 12;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
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
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--構える
SE001 = playSeVer2( spep_0 + 12, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE001, 138 );
SE003 = playSeVer2( spep_0 + 24, 1007, "", 0, 0, 0, -1);

--ホワイトアウト
SE004 = playSeVer2( spep_0 + 86, 8, "",spep_0 + 134, 0, 12, -1);

-- ** 白フェード ** --
entryFade( spep_0 + 96, 8, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 104

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--ピッコロ向かっていく
SE006 = playSeVer2( spep_1 + 90, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 90, 1117, "", 0, 0, 0, -1);

------------------------------------------------------
-- 格闘からフィニッシュ：前 ef_002r
------------------------------------------------------
MAX_FRAME_2 = 814;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );  -- 格闘からフィニッシュ：前 ef_002r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002br, 0x80, -1, 0, 0, 0 );  -- 格闘からフィニッシュ：後ろ ef_002br
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 30 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 198 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 30 + OFFSET_X, 1, 117 );
changeAnime( spep_2 + 90 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 110 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 140 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 164 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 30 + OFFSET_X, 1, -12.4, 1.6 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, -12.4, 1.6 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, -12.3, 6.4 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, -12.3, 6.4 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, -12.2, 11.2 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, -12.2, 11.2 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, -12, 16 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -12, 16 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -11.9, 20.8 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -11.9, 20.8 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, -11.8, 25.6 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, -11.8, 25.6 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, -11.7, 30.4 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, -11.7, 30.4 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, -11.6, 35.2 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, -11.6, 35.2 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, -11.5, 40 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, -11.5, 40 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, -11.4, 44.8 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, -11.4, 44.8 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, -11.3, 49.6 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, -11.3, 49.6 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, -11.2, 54.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, -11.2, 54.5 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, -11.1, 59.3 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, -11.1, 59.3 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, -11, 64.2 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, -11, 64.2 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, -10.9, 69.1 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -10.9, 69.1 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -10.8, 74 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, -10.8, 74 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, -10.7, 78.9 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, -10.7, 78.9 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, -10.6, 83.9 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, -10.6, 83.9 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, -10.5, 88.9 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, -10.5, 88.9 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -10.4, 94 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -10.4, 94 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -10.3, 99 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -10.3, 99 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -10.2, 104.2 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -10.2, 104.2 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -10.1, 109.4 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -10.1, 109.4 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -10.1, 114.6 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -10.1, 114.6 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -10, 119.9 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -10, 119.9 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -9.9, 125.3 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -9.9, 125.3 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -9.8, 130.7 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -9.8, 130.7 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -9.7, 136.2 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, -9.7, 136.2 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -9.7, 141.8 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, -9.7, 141.8 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, -9.6, 147.5 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, -9.6, 147.5 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 25.2, 30.3 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 25.2, 30.3 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 27.4, 33.2 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 27.4, 33.2 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 29.7, 36 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 29.7, 36 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 32.1, 38.9 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 32.1, 38.9 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 34.4, 41.7 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 34.4, 41.7 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 36.8, 44.6 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 36.8, 44.6 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 39.1, 47.5 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 39.1, 47.5 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 41.5, 50.4 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 41.5, 50.4 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 44, 53.3 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 44, 53.3 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 46.4, 56.2 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 46.4, 56.2 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 113.1, -11.5 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 113.1, -11.5 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 162.1, -13.2 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 162.1, -13.2 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 136, 21.5 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 136, 21.5 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 187.9, 18.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 187.9, 18.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 162.6, -1.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 162.6, -1.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 195.1, 34.2 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 195.1, 34.2 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 208, -10.2 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 208, -10.2 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 186.6, 11.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 186.6, 11.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 208.1, 18.7 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 208.1, 18.7 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 197.8, 13.1 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 197.8, 13.1 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 211, 15.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 211, 15.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 213, 16.7 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 213, 16.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 214.8, 17.5 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 214.8, 17.5 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 216.6, 18.2 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 216.6, 18.2 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 209.7, -10.8 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 209.7, -10.8 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 107.3, 219.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 107.3, 219.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 69.3, 229.2 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 69.3, 229.2 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 71.4, 204.6 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 71.4, 204.6 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 69.2, 219.6 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 69.2, 219.6 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 50.1, 239.5 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 50.1, 239.5 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 85.6, 239.8 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 85.6, 239.8 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 53.2, 185.5 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 53.2, 185.5 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 52.1, 196.8 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 52.1, 196.8 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 62.9, 180.3 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 62.9, 180.3 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 52.9, 181.6 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 52.9, 181.6 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 60, 166.9 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 60, 166.9 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 51, 148.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 51, 148.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 20, 292.1 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 20, 292.1 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 64.1, 318.8 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 64.1, 318.8 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 29.4, 265.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 29.4, 265.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 8.8, 288.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 8.8, 288.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 48.1, 295.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 48.1, 295.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 16.8, 300.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 16.8, 300.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 18.7, 259.3 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 18.7, 259.3 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 30.8, 279.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 30.8, 279.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 17, 279.9 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 17, 279.9 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 16.4, 262.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 16.4, 262.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 21.7, 262.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 21.7, 262.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 24.4, 255.7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 24.4, 255.7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 24, 249.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 24, 249.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 23.6, 243.7 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 23.6, 243.7 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 23.3, 238.1 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 23.3, 238.1 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 23, 232.9 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 23, 232.9 , 0 );

setScaleKey( spep_2 + 30 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.87, 1.87 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 2, 2 );

setRotateKey( spep_2 + 30 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -68.2 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -68.2 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -53 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -53 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -56.5 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -56.5 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -59.3 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -59.3 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -61.6 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -61.6 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -63.4 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -63.4 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -64.8 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -64.8 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -65.9 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -65.9 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -66.7 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -66.7 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -67.3 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -67.3 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -67.7 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -67.7 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -67.9 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -67.9 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -68.1 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -68.1 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -68.2 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -68.2 );

-- 敵の動き2
setDisp( spep_2 + 254 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 318 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 254 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 298 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 254 + OFFSET_X, 1, -3.8, -206.8 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -3.8, -206.8 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -3.9, -201.4 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -3.9, -201.4 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -4.1, -196 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -4.1, -196 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -4.2, -190.5 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -4.2, -190.5 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -4.4, -185.1 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -4.4, -185.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -4.5, -179.7 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -4.5, -179.7 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -4.7, -174.3 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -4.7, -174.3 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -4.8, -168.9 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -4.8, -168.9 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -5, -163.4 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -5, -163.4 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -5.1, -158 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -5.1, -158 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -5.3, -152.6 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -5.3, -152.6 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -5.4, -147.2 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -5.4, -147.2 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -5.6, -141.7 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -5.6, -141.7 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -5.7, -136.3 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -5.7, -136.3 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -5.9, -130.9 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -5.9, -130.9 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -6, -125.5 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -6, -125.5 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -6.2, -120.1 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -6.2, -120.1 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -6.3, -114.6 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -6.3, -114.6 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -6.5, -109.2 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -6.5, -109.2 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -6.6, -103.8 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -6.6, -103.8 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -6.8, -98.4 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -6.8, -98.4 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -6.9, -92.9 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -6.9, -92.9 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 65.7, -234 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 65.7, -234 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 77, -318.5 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 77, -318.5 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 116.9, -144.3 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 116.9, -144.3 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 10.7, -272.3 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 10.7, -272.3 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 122.3, -285.6 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 122.3, -285.6 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 90, -286.5 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 90, -286.5 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 204.6, -287 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 204.6, -287 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 288.9, -460.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 288.9, -460.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 445.9, -450.9 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 445.9, -450.9 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 462, -448.2 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 462, -448.2 , 0 );

setScaleKey( spep_2 + 254 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 3.23, 3.23 );

setRotateKey( spep_2 + 254 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 36.6 );

-- 敵の動き3
setDisp( spep_2 + 342 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 382 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 342 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 342 + OFFSET_X, 1, 18.5, -71.4 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 18.5, -71.4 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 17.5, -68.6 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 17.5, -68.6 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 16.4, -65.8 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 16.4, -65.8 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 15.3, -63 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 15.3, -63 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 14.2, -60.1 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 14.2, -60.1 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 13.1, -57.3 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 13.1, -57.3 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 12, -54.5 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 12, -54.5 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 10.9, -51.7 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 10.9, -51.7 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 9.9, -48.9 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 9.9, -48.9 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 8.8, -46.1 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 8.8, -46.1 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 7.7, -43.3 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 7.7, -43.3 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 6.6, -40.5 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 6.6, -40.5 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 5.5, -37.7 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 5.5, -37.7 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 4.4, -34.8 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 4.4, -34.8 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 3.3, -32 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 3.3, -32 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 2.3, -29.2 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 2.3, -29.2 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 1.2, -26.4 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 1.2, -26.4 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 0.1, -23.6 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 0.1, -23.6 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -1, -20.8 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -1, -20.8 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -2.1, -18 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -2.1, -18 , 0 );

setScaleKey( spep_2 + 342 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 4.33, 4.33 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 4.11, 4.11 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 0.4, 0.4 );

setRotateKey( spep_2 + 342 + OFFSET_X, 1, -6.3 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, -6.3 );

-- ** 音 ** --
--ピッコロ向かっていく
SE008 = playSeVer2( spep_2 + 30, 1167, "",spep_2 + 84, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 30, SE008, 62 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 50;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);

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
--瞬間移動
SE009 = playSeVer2( spep_2 + 66, 1109, "", 0, 0, 0, -1);

--払う
SE010 = playSeVer2( spep_2 + 98, 1189, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 106, 1010, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 106, 1110, "", 0, 0, 0, -1);

--蹴り上げ
SE013 = playSeVer2( spep_2 + 132, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE013, 75 );
SE014 = playSeVer2( spep_2 + 134, 1110, "", 0, 0, 0, -1);

--膝蹴り
SE015 = playSeVer2( spep_2 + 158, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 160, 1187, "",spep_2 + 234, 0, 38, -1);
setSeVolumeByWorkId( spep_2 + 160, SE016, 81 );

--顔アップ
SE017 = playSeVer2( spep_2 + 176, 1072, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 210, 19, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 210, SE018, 81 );
SE019 = playSeVer2( spep_2 + 210, 1264, "",spep_2 + 314, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 210, SE019, 83 );
setPitch( spep_2 + 210, SE019, -200 );
setTimeStretch( SE019, 0.87, 30, 4 );

--振りかぶる
SE020 = playSeVer2( spep_2 + 256, 1278, "",spep_2 + 328, 0, 20, -1);

--叩き落とす
SE021 = playSeVer2( spep_2 + 300, 1123, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE022 = playSeVer2( spep_2 + 338, 1027, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 362, 1121, "",spep_2 + 432, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 362, SE023, 61 );

--地面激突
SE024 = playSeVer2( spep_2 + 414, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 414, SE024, 89 );

--背景音
SE025 = playSeVer2( spep_2 + 476, 1264, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 476, SE025, 68 );

--気弾溜め
SE026 = playSeVer2( spep_2 + 532, 1265, "",spep_2 + 870, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 532, SE026, 48 );
SE027 = playSeVer2( spep_2 + 532, 1296, "",spep_2 + 706, 0, 16, -1);
SE028 = playSeVer2( spep_2 + 532, 1262, "",spep_2 + 704, 0, 20, -1);

--気弾発射
SE029 = playSeVer2( spep_2 + 606, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 606, SE029, 81 );
SE030 = playSeVer2( spep_2 + 606, 1145, "", 0, 0, 0, 0.6);
SE031 = playSeVer2( spep_2 + 606, 1284, "",spep_2 + 738, 0, 34, 0.6);

--気弾飛んでいく
SE032 = playSeVer2( spep_2 + 650, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 650, SE032, 232 );

--爆発
SE033 = playSeVer2( spep_2 + 692, 1023, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 692, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 692, SE034, 77 );

-- ** おわり ** --
dealDamage( spep_2 + 700 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 814

end
