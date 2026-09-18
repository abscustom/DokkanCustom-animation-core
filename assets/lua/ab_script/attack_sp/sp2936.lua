--1032240:UR_ヤムチャ(天使)&蛇姫_必殺技：狼牙風風拳
--sp_effect_a1_00515
--sp2936

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164202; --登場 ef_001

--エフェクト(味方)
SP_02  = 164204; --連続攻撃_前面 ef_002
SP_02b = 164205; --連続攻撃_背面 ef_002b

--エフェクト(敵)
SP_02r  = 164206; --連続攻撃_前面_敵側 ef_002r
SP_02br = 164207; --連続攻撃 背面 敵側 ef_002br

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

ENABLE_AUTO_TIME_STRETCH(0.8);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場
-------------------------------------------------
MAX_FRAME_0 = 120;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -50, 515.5 , 0 );
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


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 音 ** --
--集中線
SE002 = playSeVer2( spep_0 + 30, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE002, 59 );
SE003 = playSeVer2( spep_0 + 30, 12, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE003, 50 );

--構える
SE004 = playSeVer2( spep_0 + 86, 1189, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 120f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--向かっていく
SE006 = playSeVer2( spep_1 + 82, 1000, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 82, 1117, "", 0, 0, 0, -1);


-------------------------------------------------
-- 連続攻撃
-------------------------------------------------
MAX_FRAME_2 = 624;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 連続攻撃_前面(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 連続攻撃_背面(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 50 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 184 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 50 + OFFSET_X, 1, 101 );
changeAnime( spep_2 + 60 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 68 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 78 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 86 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 94 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 102 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 120 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 156 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 50 + OFFSET_X, 1, 152.2, 17.2 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 152.2, 17.2 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 154.2, 16.7 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 154.2, 16.7 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 156.1, 16.2 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 156.1, 16.2 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 158.1, 15.8 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 158.1, 15.8 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 160, 15.3 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 160, 15.3 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 187, 96.2 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 187, 96.2 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 96, 14.1 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 96, 14.1 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 159.2, 66.1 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 159.2, 66.1 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 158.3, 46.1 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 158.3, 46.1 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 129.4, -14 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 129.4, -14 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 48.6, 27.7 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 48.6, 27.7 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 105.9, 13.4 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 105.9, 13.4 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 97.2, 33.2 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 97.2, 33.2 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 106.5, 40.9 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 106.5, 40.9 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 166.6, 93.3 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 166.6, 93.3 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 68, 4.6 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 68, 4.6 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 123.4, 49.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 123.4, 49.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 114.9, 23.3 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 114.9, 23.3 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 115, 2.9 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 115, 2.9 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 38.1, 45.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 38.1, 45.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 99.2, 32.3 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 99.2, 32.3 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 94.3, 52.9 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 94.3, 52.9 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 143, 72.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 143, 72.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 53.1, -5 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 53.1, -5 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 117.2, 52 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 117.2, 52 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 117.4, 36.9 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 117.4, 36.9 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 115.2, -25 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 115.2, -25 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 26.3, 9.6 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 26.3, 9.6 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 75.4, -11.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 75.4, -11.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 58.4, 0.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 58.4, 0.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -28.7, -1.1 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -28.7, -1.1 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -28.5, 6.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -28.5, 6.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -28.2, 14.4 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -28.2, 14.4 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -28, 22.2 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -28, 22.2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -27.7, 30 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -27.7, 30 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 62.7, 35.1 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 62.7, 35.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 138.1, 100 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 138.1, 100 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 44.9, 23.8 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 44.9, 23.8 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 105.6, 84.1 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 105.6, 84.1 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 101, 51.5 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 101, 51.5 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 95.7, 74.3 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 95.7, 74.3 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 101.8, 68.7 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 101.8, 68.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 103.3, 70.7 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 103.3, 70.7 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 104.5, 72.5 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 104.5, 72.5 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 105.3, 74 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 105.3, 74 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 105.9, 75.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 105.9, 75.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 106.1, 76.3 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 106.1, 76.3 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 106.1, 77.2 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 106.1, 77.2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 105.8, 77.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 105.8, 77.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 105.4, 78.5 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 105.4, 78.5 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 104.6, 78.8 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 104.6, 78.8 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 103.7, 79.1 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 103.7, 79.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 174.6, 147.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 174.6, 147.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 34.7, 33 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 34.7, 33 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 111.5, 105 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 111.5, 105 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 145.7, 42.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 145.7, 42.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 169.9, 100.3 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 169.9, 100.3 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 246.1, 84 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 246.1, 84 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 288.3, 107.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 288.3, 107.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 354.5, 115.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 354.5, 115.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 398.8, 119 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 398.8, 119 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 457, 132.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 457, 132.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 511.2, 142.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 511.2, 142.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 565.4, 152 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 565.4, 152 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 564.1, 152 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 564.1, 152 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 562.9, 152 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 562.9, 152 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 561.7, 152 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 561.7, 152 , 0 );

setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.71, 1.71 );

setRotateKey( spep_2 + 50 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -25.1 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, -25.1 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -25.9 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -25.9 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -25.2 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -25.2 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -24.9 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -24.9 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -23.9 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -23.9 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -22.9 );


--敵の動き2
setDisp( spep_2 + 264 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 312 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 264 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 264 + OFFSET_X, 1, -10.8, 33.3 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -10.8, 33.3 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -5.9, 33 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -5.9, 33 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -1.1, 32.7 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -1.1, 32.7 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 3.5, 32.4 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 3.5, 32.4 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 7.9, 32.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 7.9, 32.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 12.2, 31.8 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 12.2, 31.8 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 16.2, 31.6 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 16.2, 31.6 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 20, 31.4 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 20, 31.4 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 23.7, 31.2 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 23.7, 31.2 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 27.2, 31 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 27.2, 31 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 30.5, 30.9 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 30.5, 30.9 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 33.6, 30.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 33.6, 30.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 36.5, 30.6 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 36.5, 30.6 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 39.3, 30.5 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 39.3, 30.5 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 41.8, 30.4 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 41.8, 30.4 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 44.2, 30.4 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 44.2, 30.4 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 46.4, 30.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 46.4, 30.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 48.4, 30.3 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 48.4, 30.3 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 50.2, 30.3 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 50.2, 30.3 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 51.9, 30.3 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 51.9, 30.3 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 267.2, 16.3 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 267.2, 16.3 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 470.5, 40.3 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 470.5, 40.3 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 699.8, 38.3 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 699.8, 38.3 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 903, 26.3 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 903, 26.3 , 0 );

setScaleKey( spep_2 + 264 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 1.17, 1.17 );

setRotateKey( spep_2 + 264 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 0 );


--敵の動き3
setDisp( spep_2 + 320 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 382 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 320 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 320 + OFFSET_X, 1, 14.8, -77.4 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 14.8, -77.4 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 34.5, -105.4 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 34.5, -105.4 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -9.5, -46.7 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -9.5, -46.7 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -22.5, -85 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -22.5, -85 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 26.3, -57.2 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 26.3, -57.2 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 22.9, -91.5 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 22.9, -91.5 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -18.5, -62 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -18.5, -62 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -8, -16.8 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -8, -16.8 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 26.4, -32.3 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 26.4, -32.3 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -3.2, -58.6 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -3.2, -58.6 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -22.9, -11.6 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -22.9, -11.6 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 13.5, -47.4 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 13.5, -47.4 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -2.3, -7.8 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -2.3, -7.8 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 14, -12.6 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 14, -12.6 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 6.2, -14 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 6.2, -14 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 6.4, -11.7 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 6.4, -11.7 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 6.6, -9.8 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 6.6, -9.8 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 6.7, -8.2 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 6.7, -8.2 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 6.9, -6.8 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 6.9, -6.8 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 7, -5.7 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 7, -5.7 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 7.2, -4.7 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 7.2, -4.7 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 7.3, -4 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 7.3, -4 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 7.4, -3.3 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 7.4, -3.3 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 7.5, -2.9 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 7.5, -2.9 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 7.6, -2.5 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 7.6, -2.5 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 7.7, -2.2 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 7.7, -2.2 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 7.7, -2.1 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 7.7, -2.1 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 7.8, -2 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 7.8, -2 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 7.9, -2.1 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 7.9, -2.1 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 7.8, -2.1 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 7.8, -2.1 , 0 );

setScaleKey( spep_2 + 320 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 0.53, 0.53 );

setRotateKey( spep_2 + 320 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, 0 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 14; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--連続攻撃
SE008 = playSeVer2( spep_2 + 44, 1189, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 50, 1009, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 50, 1110, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 60, 1010, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 60, 1007, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 70, 1009, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 70, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 84, 1010, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 84, 1000, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 114, 1009, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 114, 1110, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 132, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE020 = playSeVer2( spep_2 + 146, 1187, "", 0, 0, 0, -1);

--気弾溜め
SE021 = playSeVer2( spep_2 + 188, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE021, 45 );
SE022 = playSeVer2( spep_2 + 188, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE022, 47 );
setPitch( spep_2 + 188, SE022, -100 );
setTimeStretch( SE022, 0.93, 30, 4 );
SE023 = playSeVer2( spep_2 + 188, 17, "",spep_2 + 262, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 188, SE023, 77 );
SE024 = playSeVer2( spep_2 + 188, 1144, "",spep_2 + 276, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 188, SE024, 56 );

--気弾発射
SE025 = playSeVer2( spep_2 + 250, 1022, "",spep_2 + 346, 0, 44, -1);
SE026 = playSeVer2( spep_2 + 250, 1120, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE027 = playSeVer2( spep_2 + 298, 1027, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 298, 1121, "",spep_2 + 418, 0, 68, -1);
SE029 = playSeVer2( spep_2 + 298, 1183, "",spep_2 + 430, 0, 76, -1);

--着地
SE030 = playSeVer2( spep_2 + 378, 63, "",spep_2 + 430, 0, 18, -1);
SE031 = playSeVer2( spep_2 + 378, 1508, "",spep_2 + 428, 0, 16, -1);
SE032 = playSeVer2( spep_2 + 408, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 408, SE032, 162 );
SE033 = playSeVer2( spep_2 + 414, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 414, SE033, 186 );

--構える
SE034 = playSeVer2( spep_2 + 430, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 430, SE034, 52 );
SE035 = playSeVer2( spep_2 + 464, 1233, "", 0, 0, 0, -1);

--ラスト集中線
SE036 = playSeVer2( spep_2 + 504, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 504, SE036, 65 );
SE037 = playSeVer2( spep_2 + 504, 1062, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 504); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 624f -2f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 登場
-------------------------------------------------
MAX_FRAME_0 = 120;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 登場(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -50, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 音 ** --
--集中線
SE002 = playSeVer2( spep_0 + 30, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE002, 59 );
SE003 = playSeVer2( spep_0 + 30, 12, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE003, 50 );

--構える
SE004 = playSeVer2( spep_0 + 86, 1189, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 120f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--向かっていく
SE006 = playSeVer2( spep_1 + 82, 1000, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_1 + 82, 1117, "", 0, 0, 0, -1);


-------------------------------------------------
-- 連続攻撃
-------------------------------------------------
MAX_FRAME_2 = 624;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 連続攻撃_前面(ef_002b)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 連続攻撃_背面(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 50 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 184 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 50 + OFFSET_X, 1, 101 );
changeAnime( spep_2 + 60 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 68 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 78 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 86 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 94 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 102 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 120 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 156 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 50 + OFFSET_X, 1, 152.2, 17.2 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 152.2, 17.2 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 154.2, 16.7 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 154.2, 16.7 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 156.1, 16.2 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 156.1, 16.2 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 158.1, 15.8 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 158.1, 15.8 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 160, 15.3 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 160, 15.3 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 187, 96.2 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 187, 96.2 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 96, 14.1 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 96, 14.1 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 159.2, 66.1 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 159.2, 66.1 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 158.3, 46.1 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 158.3, 46.1 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 129.4, -14 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 129.4, -14 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 48.6, 27.7 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 48.6, 27.7 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 105.9, 13.4 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 105.9, 13.4 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 97.2, 33.2 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 97.2, 33.2 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 106.5, 40.9 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 106.5, 40.9 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 166.6, 93.3 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 166.6, 93.3 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 68, 4.6 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 68, 4.6 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 123.4, 49.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 123.4, 49.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 114.9, 23.3 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 114.9, 23.3 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 115, 2.9 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 115, 2.9 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 38.1, 45.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 38.1, 45.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 99.2, 32.3 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 99.2, 32.3 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 94.3, 52.9 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 94.3, 52.9 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 143, 72.1 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 143, 72.1 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 53.1, -5 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 53.1, -5 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 117.2, 52 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 117.2, 52 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 117.4, 36.9 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 117.4, 36.9 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 115.2, -25 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 115.2, -25 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 26.3, 9.6 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 26.3, 9.6 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 75.4, -11.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 75.4, -11.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 58.4, 0.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 58.4, 0.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -28.7, -1.1 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -28.7, -1.1 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -28.5, 6.7 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -28.5, 6.7 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -28.2, 14.4 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -28.2, 14.4 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -28, 22.2 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -28, 22.2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -27.7, 30 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -27.7, 30 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 62.7, 35.1 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 62.7, 35.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 138.1, 100 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 138.1, 100 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 44.9, 23.8 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 44.9, 23.8 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 105.6, 84.1 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 105.6, 84.1 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 101, 51.5 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 101, 51.5 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 95.7, 74.3 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 95.7, 74.3 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 101.8, 68.7 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 101.8, 68.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 103.3, 70.7 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 103.3, 70.7 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 104.5, 72.5 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 104.5, 72.5 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 105.3, 74 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 105.3, 74 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 105.9, 75.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 105.9, 75.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 106.1, 76.3 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 106.1, 76.3 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 106.1, 77.2 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 106.1, 77.2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 105.8, 77.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 105.8, 77.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 105.4, 78.5 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 105.4, 78.5 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 104.6, 78.8 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 104.6, 78.8 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 103.7, 79.1 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 103.7, 79.1 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 174.6, 147.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 174.6, 147.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 34.7, 33 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 34.7, 33 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 111.5, 105 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 111.5, 105 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 145.7, 42.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 145.7, 42.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 169.9, 100.3 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 169.9, 100.3 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 246.1, 84 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 246.1, 84 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 288.3, 107.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 288.3, 107.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 354.5, 115.3 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 354.5, 115.3 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 398.8, 119 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 398.8, 119 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 457, 132.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 457, 132.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 511.2, 142.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 511.2, 142.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 565.4, 152 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 565.4, 152 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 564.1, 152 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 564.1, 152 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 562.9, 152 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 562.9, 152 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 561.7, 152 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 561.7, 152 , 0 );

setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.71, 1.71 );

setRotateKey( spep_2 + 50 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, -50 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 19.6 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -28.5 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -23.8 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -25.1 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, -25.1 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -45.2 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -25.9 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -25.9 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -25.2 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -25.2 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -24.9 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -24.9 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -23.9 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -23.9 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -23.6 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -23.2 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -22.9 );


--敵の動き2
setDisp( spep_2 + 264 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 312 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 264 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 264 + OFFSET_X, 1, -10.8, 33.3 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -10.8, 33.3 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -5.9, 33 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -5.9, 33 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -1.1, 32.7 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -1.1, 32.7 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 3.5, 32.4 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 3.5, 32.4 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 7.9, 32.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 7.9, 32.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 12.2, 31.8 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 12.2, 31.8 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 16.2, 31.6 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 16.2, 31.6 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 20, 31.4 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 20, 31.4 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 23.7, 31.2 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 23.7, 31.2 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 27.2, 31 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 27.2, 31 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 30.5, 30.9 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 30.5, 30.9 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 33.6, 30.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 33.6, 30.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 36.5, 30.6 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 36.5, 30.6 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 39.3, 30.5 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 39.3, 30.5 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 41.8, 30.4 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 41.8, 30.4 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 44.2, 30.4 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 44.2, 30.4 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 46.4, 30.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 46.4, 30.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 48.4, 30.3 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 48.4, 30.3 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 50.2, 30.3 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 50.2, 30.3 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 51.9, 30.3 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 51.9, 30.3 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 267.2, 16.3 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 267.2, 16.3 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 470.5, 40.3 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 470.5, 40.3 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 699.8, 38.3 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 699.8, 38.3 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 903, 26.3 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 903, 26.3 , 0 );

setScaleKey( spep_2 + 264 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 1.17, 1.17 );

setRotateKey( spep_2 + 264 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 0 );


--敵の動き3
setDisp( spep_2 + 320 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 382 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 320 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 320 + OFFSET_X, 1, 14.8, -77.4 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 14.8, -77.4 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 34.5, -105.4 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 34.5, -105.4 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -9.5, -46.7 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -9.5, -46.7 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -22.5, -85 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -22.5, -85 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 26.3, -57.2 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 26.3, -57.2 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 22.9, -91.5 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 22.9, -91.5 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -18.5, -62 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -18.5, -62 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -8, -16.8 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -8, -16.8 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 26.4, -32.3 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 26.4, -32.3 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -3.2, -58.6 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -3.2, -58.6 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -22.9, -11.6 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -22.9, -11.6 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 13.5, -47.4 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 13.5, -47.4 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -2.3, -7.8 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -2.3, -7.8 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 14, -12.6 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 14, -12.6 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 6.2, -14 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 6.2, -14 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 6.4, -11.7 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 6.4, -11.7 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 6.6, -9.8 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 6.6, -9.8 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 6.7, -8.2 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 6.7, -8.2 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 6.9, -6.8 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 6.9, -6.8 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 7, -5.7 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 7, -5.7 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 7.2, -4.7 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 7.2, -4.7 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 7.3, -4 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 7.3, -4 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 7.4, -3.3 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 7.4, -3.3 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 7.5, -2.9 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 7.5, -2.9 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 7.6, -2.5 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 7.6, -2.5 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 7.7, -2.2 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 7.7, -2.2 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 7.7, -2.1 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 7.7, -2.1 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 7.8, -2 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 7.8, -2 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 7.9, -2.1 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 7.9, -2.1 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 7.8, -2.1 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 7.8, -2.1 , 0 );

setScaleKey( spep_2 + 320 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 0.53, 0.53 );

setRotateKey( spep_2 + 320 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 382 + OFFSET_X, 1, 0 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 14; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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
--連続攻撃
SE008 = playSeVer2( spep_2 + 44, 1189, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 50, 1009, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 50, 1110, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 60, 1010, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 60, 1007, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 70, 1009, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 70, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 84, 1010, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 84, 1000, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 114, 1009, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 114, 1110, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 132, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE020 = playSeVer2( spep_2 + 146, 1187, "", 0, 0, 0, -1);

--気弾溜め
SE021 = playSeVer2( spep_2 + 188, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE021, 45 );
SE022 = playSeVer2( spep_2 + 188, 1126, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 188, SE022, 47 );
setPitch( spep_2 + 188, SE022, -100 );
setTimeStretch( SE022, 0.93, 30, 4 );
SE023 = playSeVer2( spep_2 + 188, 17, "",spep_2 + 262, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 188, SE023, 77 );
SE024 = playSeVer2( spep_2 + 188, 1144, "",spep_2 + 276, 0, 26, -1);
setSeVolumeByWorkId( spep_2 + 188, SE024, 56 );

--気弾発射
SE025 = playSeVer2( spep_2 + 250, 1022, "",spep_2 + 346, 0, 44, -1);
SE026 = playSeVer2( spep_2 + 250, 1120, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE027 = playSeVer2( spep_2 + 298, 1027, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 298, 1121, "",spep_2 + 418, 0, 68, -1);
SE029 = playSeVer2( spep_2 + 298, 1183, "",spep_2 + 430, 0, 76, -1);

--着地
SE030 = playSeVer2( spep_2 + 378, 63, "",spep_2 + 430, 0, 18, -1);
SE031 = playSeVer2( spep_2 + 378, 1508, "",spep_2 + 428, 0, 16, -1);
SE032 = playSeVer2( spep_2 + 408, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 408, SE032, 162 );
SE033 = playSeVer2( spep_2 + 414, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 414, SE033, 186 );

--構える
SE034 = playSeVer2( spep_2 + 430, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 430, SE034, 52 );
SE035 = playSeVer2( spep_2 + 464, 1233, "", 0, 0, 0, -1);

--ラスト集中線
SE036 = playSeVer2( spep_2 + 504, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 504, SE036, 65 );
SE037 = playSeVer2( spep_2 + 504, 1062, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 504); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 624f -2f

end