-- 1027460: LR_リブリアン＆カクンサ＆ロージィ_必殺技：ラブリーカーニバル
-- sp_effect_b1_00265
-- sp2616

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162337;  -- 冒頭、正面向き三人 ef_001
SP_002 = 162338;  -- ジャンプ、爪攻撃、ヒップアタック：上 ef_002
SP_003 = 162339;  -- ジャンプ、爪攻撃、ヒップアタック：下 ef_003
SP_004 = 162340;  -- 連打攻撃、気弾接近：上 ef_004
SP_005 = 162341;  -- 連打攻撃、気弾接近：下 ef_005
SP_006 = 162342;  -- ラスト爆発 ef_006

-- 敵側
SP_002r = 162343;  -- ジャンプ、爪攻撃、ヒップアタック：上 ef_002r
SP_003r = 162344;  -- ジャンプ、爪攻撃、ヒップアタック：下 ef_003r
SP_004r = 162345;  -- 連打攻撃、気弾接近：上 ef_004r
SP_005r = 162346;  -- 連打攻撃、気弾接近：下 ef_005r
SP_006r = 162347;  -- ラスト爆発 ef_006r

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

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭、正面向き三人 ef_001
------------------------------------------------------
MAX_FRAME_0 = 98;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
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

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1432, "",spep_0 + 116, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 120 );
SE002 = playSeVer2( spep_0 + 8, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE002, 84 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + MAX_FRAME_0 - 10, 10, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 98

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- ジャンプ、爪攻撃、ヒップアタック：上 ef_002
------------------------------------------------------
MAX_FRAME_2 = 574;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_03 = entryEffect( spep_2 + 0, SP_003, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_03, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_03, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_03, 0 );
setEffAlphaKey( spep_2 + 0, SP_03, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_03, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 90 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 190 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 90 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 102 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 140 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 144 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 154 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 162 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 168 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 176 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 184 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 90 + OFFSET_X, 1, 5.5, -5.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 5.5, -5.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 5.6, 15.6 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 5.6, 15.6 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 77.2, -14.5 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 77.2, -14.5 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 32.5, 36.5 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 32.5, 36.5 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 120.1, 18.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 120.1, 18.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 46.7, -1.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 46.7, -1.8 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 34.3, 37.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 34.3, 37.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 121.9, 19.8 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 121.9, 19.8 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 1.2, 14.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 1.2, 14.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -2.5, 24.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -2.5, 24.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 29.5, -7.2 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 29.5, -7.2 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 2.9, 16.1 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 2.9, 16.1 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 30.6, -6.3 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 30.6, -6.3 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 12.6, 21.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 12.6, 21.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 31.8, -5.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 31.8, -5.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 13.8, 22.3 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 13.8, 22.3 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 14.4, 22.7 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 14.4, 22.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 15, 23.2 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 15, 23.2 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 15.6, 23.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 15.6, 23.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 16.2, 24.2 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 16.2, 24.2 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 16.3, 24.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 16.3, 24.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 26.3, 27.2 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 26.3, 27.2 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 16.3, 24.2 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 16.3, 24.2 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 26.3, 27.1 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 26.3, 27.1 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 16.3, 24.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 16.3, 24.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 26.3, 27.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 26.3, 27.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 16.3, 24.3 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 16.3, 24.3 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 26.3, 27.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 26.3, 27.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 16.3, 24.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 16.3, 24.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 26.3, 27.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 26.3, 27.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 16.3, 24.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 16.3, 24.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 26.3, 27.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 26.3, 27.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 16.3, 24.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 16.3, 24.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 26.3, 27.1 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 26.3, 27.1 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 16.3, 24.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 16.3, 24.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 26.3, 27.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 26.3, 27.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 16.3, 24.3 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 16.3, 24.3 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 16.3, 24.3 , 0 );

setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.2, 1.2 );

setRotateKey( spep_2 + 90 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -38.8 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -38.8 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -38.4 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -38.4 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -38.1 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -38.1 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -37.1 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -37.1 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -36.9 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -36.9 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -36 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -36 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 16.6 );

-- 敵の動き2
setDisp( spep_2 + 296 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 358 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 300 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 310 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 314 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 296 + OFFSET_X, 1, 18, 26.6 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 18, 26.6 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 18, 26.6 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 18, 26.5 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 18, 26.5 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 18, 26.5 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 18, 26.6 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 18, 26.6 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 96.1, 100.8 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 96.1, 100.8 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 74.7, 54.1 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 74.7, 54.1 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 138.2, 174.5 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 138.2, 174.5 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 129.7, 115.1 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 129.7, 115.1 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 166.8, 171.5 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 166.8, 171.5 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 100.6, 78.2 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 100.6, 78.2 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 157.8, 198.6 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 157.8, 198.6 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 97.8, 127.9 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 97.8, 127.9 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 186.4, 195.7 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 186.4, 195.7 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 140, 155.2 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 140, 155.2 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 131.2, 152.5 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 131.2, 152.5 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 149.8, 167.2 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 149.8, 167.2 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 140.9, 164.5 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 140.9, 164.5 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 159.6, 179.3 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 159.6, 179.3 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 150.7, 176.6 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 224.9, 248.5 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 285.3, 311.7 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 345.7, 374.9 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 406.1, 438 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 466.5, 501.2 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 527, 564.4 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 587.4, 627.6 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 647.8, 690.7 , 0 );

setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 1.24, 1.24 );

setRotateKey( spep_2 + 296 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -42.7 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -42.7 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -42.1 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -42.1 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -41.6 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, -41.6 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, -41.1 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, -41.1 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -40.5 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, -40.5 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -38.3 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, -38.3 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, -37.8 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -37.8 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -34 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, -32 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, -31 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -28.9 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, -27.9 );

-- 敵の動き3
setDisp( spep_2 + 440 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 462 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 440 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 440 + OFFSET_X, 1, -702.9, -666 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -606.4, -544.7 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -510, -423.5 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -413.5, -302.2 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -317, -181 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -220.5, -59.8 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -124, 61.4 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -27.5, 182.5 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 69, 303.6 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 165.5, 424.7 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 262, 545.8 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 262, 545.8 , 0 );

setScaleKey( spep_2 + 440 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_2 + 460 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_2 + 462 + OFFSET_X, 1, 3.64, 3.64 );

setRotateKey( spep_2 + 440 + OFFSET_X, 1, -57 );
setRotateKey( spep_2 + 462 + OFFSET_X, 1, -57 );

-- 敵の動き4
setDisp( spep_2 + 538 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 572 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 538 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 538 + OFFSET_X, 1, 31, -48 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 31, -48 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 31, -48 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 66.9, -11.6 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 66.9, -11.6 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 115, -100.5 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 115, -100.5 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 34, -83.2 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, 34, -83.2 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 66.9, -11.6 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 66.9, -11.6 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 115.1, -100.6 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 115.1, -100.6 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 34, -83.2 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 34, -83.2 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 31, -48 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 31, -48 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 24.9, -57.3 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 24.9, -57.3 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 31, -48 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 31, -48 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 24.9, -57.3 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 24.9, -57.3 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 31, -48 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 31, -48 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 24.9, -57.3 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 24.9, -57.3 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 31, -48 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, 31, -48 , 0 );

setScaleKey( spep_2 + 538 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_2 + 542 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_2 + 543 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_2 + 544 + OFFSET_X, 1, 6.39, 6.39 );
setScaleKey( spep_2 + 546 + OFFSET_X, 1, 6.35, 6.35 );
setScaleKey( spep_2 + 547 + OFFSET_X, 1, 6.35, 6.35 );
setScaleKey( spep_2 + 548 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_2 + 572 + OFFSET_X, 1, 6.3, 6.3 );

setRotateKey( spep_2 + 538 + OFFSET_X, 1, 25 );
setRotateKey( spep_2 + 572 + OFFSET_X, 1, 25 );

-- ** 音 ** --
--３人飛び上がる
SE005 = playSeVer2( spep_2 + 8, 1007, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_2 + 12, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE006, 81 );
SE007 = playSeVer2( spep_2 + 12, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE007, 136 );

--カクンサ降りてくる
SE008 = playSeVer2( spep_2 + 28, 1116, "", 0, 0, 0, 0.6);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 74;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--初手ひっかき
SE009 = playSeVer2( spep_2 + 100, 1032, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 100, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE010, 76 );
SE011 = playSeVer2( spep_2 + 100, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE011, 83 );
SE012 = playSeVer2( spep_2 + 104, 1031, "", 0, 0, 0, -1);

--みだれひっかき
SE013 = playSeVer2( spep_2 + 134, 1425, "",spep_2 + 198, 0, 18, -1);
SE014 = playSeVer2( spep_2 + 134, 1032, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 134, 1031, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 142, 1032, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 144, 1031, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 150, 1032, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 160, 1032, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 168, 1032, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 176, 1031, "", 0, 0, 0, -1);

--リブリアンオーラ
SE022 = playSeVer2( spep_2 + 184, 1176, "",spep_2 + 294, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 184, SE022, 42 );
SE023 = playSeVer2( spep_2 + 184, 1396, "",spep_2 + 294, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 184, SE023, 65 );
SE024 = playSeVer2( spep_2 + 184, 1181, "",spep_2 + 296, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 184, SE024, 214 );

--リブリアン構える
SE025 = playSeVer2( spep_2 + 224, 1004, "", 0, 0, 0, -1);

--落ちてくる
SE026 = playSeVer2( spep_2 + 260, 1182, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 260, 1118, "",spep_2 + 342, 0, 16, -1);
SE028 = playSeVer2( spep_2 + 260, 1314, "",spep_2 + 342, 0, 18, -1);
SE029 = playSeVer2( spep_2 + 260, 1304, "",spep_2 + 338, 0, 16, -1);

--カクンサみだれひっかき続き
SE030 = playSeVer2( spep_2 + 290, 1032, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 296, 1032, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 306, 1032, "", 0, 0, 0, -1);

--リブリアンヒップドロップ
SE033 = playSeVer2( spep_2 + 314, 1011, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 320, 1025, "", 0, 0, 0, -1);

--リブリアンオーラ
SE035 = playSeVer2( spep_2 + 336, 1176, "",spep_2 + 436, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 336, SE035, 42 );
SE036 = playSeVer2( spep_2 + 336, 1396, "",spep_2 + 436, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 336, SE036, 65 );
SE037 = playSeVer2( spep_2 + 336, 1181, "",spep_2 + 436, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 336, SE037, 214 );

--リブリアンヒップドロップ
SE038 = playSeVer2( spep_2 + 340, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 340, SE038, 79 );

--リブリアン着地
SE039 = playSeVer2( spep_2 + 370, 1112, "",spep_2 + 408, 0, 18, -1);
SE040 = playSeVer2( spep_2 + 370, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 370, SE040, 166 );

--カクンサ瞬間移動
SE041 = playSeVer2( spep_2 + 412, 1189, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 418, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 418, SE042, 130 );

--敵飛んでくる
SE043 = playSeVer2( spep_2 + 426, 1183, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 426, SE043, 79 );

--カクンサ移動
SE044 = playSeVer2( spep_2 + 448, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 448, SE044, 138 );
SE045 = playSeVer2( spep_2 + 454, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 454, SE045, 82 );
SE046 = playSeVer2( spep_2 + 472, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 472, SE046, 72 );

--カクンサ向かってくる
SE047 = playSeVer2( spep_2 + 486, 1182, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 486, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 486, SE048, 130 );
SE049 = playSeVer2( spep_2 + 490, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 490, SE049, 130 );

--カクンサ斬る
SE050 = playSeVer2( spep_2 + 538, 1032, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 538, 1172, "",spep_2 + 578, 0, 26, -1);
SE052 = playSeVer2( spep_2 + 538, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 538, SE052, 66 );
SE053 = playSeVer2( spep_2 + 542, 1141, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 544, 1031, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 548, 1032, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 黒フェード ** --
entryFade( spep_2 + MAX_FRAME_2 - 8, 6, 2, 0, 0, 0, 0, 255 );  -- black fade

-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2;  -- 574

------------------------------------------------------
-- 連打攻撃、気弾接近：上 ef_004
------------------------------------------------------
MAX_FRAME_3 = 254;

-- ** エフェクト等 ** --
SP_04 = entryEffect( spep_3 + 0, SP_004, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, SP_04, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, SP_04, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, SP_04, 1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, SP_04, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, SP_04, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, SP_04, 0 );
setEffAlphaKey( spep_3 + 0, SP_04, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, SP_04, 255 );
SP_05 = entryEffect( spep_3 + 0, SP_005, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, SP_05, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, SP_05, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, SP_05, 1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, SP_05, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, SP_05, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, SP_05, 0 );
setEffAlphaKey( spep_3 + 0, SP_05, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, SP_05, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 90 + OFFSET_X, 1, 1 );
setDisp( spep_3 + 250 + OFFSET_X, 1, 0 );

changeAnime( spep_3 + 90 + OFFSET_X, 1, 108 );
changeAnime( spep_3 + 96 + OFFSET_X, 1, 106 );
changeAnime( spep_3 + 102 + OFFSET_X, 1, 104 );
changeAnime( spep_3 + 108 + OFFSET_X, 1, 106 );
changeAnime( spep_3 + 114 + OFFSET_X, 1, 108 );
changeAnime( spep_3 + 120 + OFFSET_X, 1, 104 );
changeAnime( spep_3 + 126 + OFFSET_X, 1, 108 );
changeAnime( spep_3 + 132 + OFFSET_X, 1, 106 );
changeAnime( spep_3 + 138 + OFFSET_X, 1, 104 );
changeAnime( spep_3 + 144 + OFFSET_X, 1, 106 );
changeAnime( spep_3 + 150 + OFFSET_X, 1, 108 );
changeAnime( spep_3 + 156 + OFFSET_X, 1, 106 );
changeAnime( spep_3 + 162 + OFFSET_X, 1, 108 );

setMoveKey( spep_3 + 90 + OFFSET_X, 1, 47.2, 23.1 , 0 );
setMoveKey( spep_3 + 91 + OFFSET_X, 1, 47.2, 23.1 , 0 );
setMoveKey( spep_3 + 92 + OFFSET_X, 1, 47.3, 23.2 , 0 );
setMoveKey( spep_3 + 93 + OFFSET_X, 1, 47.3, 23.2 , 0 );
setMoveKey( spep_3 + 94 + OFFSET_X, 1, 47.5, 23.4 , 0 );
setMoveKey( spep_3 + 95 + OFFSET_X, 1, 47.5, 23.4 , 0 );
setMoveKey( spep_3 + 96 + OFFSET_X, 1, -16.7, 67.1 , 0 );
setMoveKey( spep_3 + 97 + OFFSET_X, 1, -16.7, 67.1 , 0 );
setMoveKey( spep_3 + 98 + OFFSET_X, 1, -24.7, 75.5 , 0 );
setMoveKey( spep_3 + 99 + OFFSET_X, 1, -24.7, 75.5 , 0 );
setMoveKey( spep_3 + 100 + OFFSET_X, 1, -16, 67.5 , 0 );
setMoveKey( spep_3 + 101 + OFFSET_X, 1, -16, 67.5 , 0 );
setMoveKey( spep_3 + 102 + OFFSET_X, 1, 5.1, 73.8 , 0 );
setMoveKey( spep_3 + 103 + OFFSET_X, 1, 5.1, 73.8 , 0 );
setMoveKey( spep_3 + 104 + OFFSET_X, 1, 13.8, 65.8 , 0 );
setMoveKey( spep_3 + 105 + OFFSET_X, 1, 13.8, 65.8 , 0 );
setMoveKey( spep_3 + 106 + OFFSET_X, 1, 6, 74.3 , 0 );
setMoveKey( spep_3 + 107 + OFFSET_X, 1, 6, 74.3 , 0 );
setMoveKey( spep_3 + 108 + OFFSET_X, 1, 35.3, 74.9 , 0 );
setMoveKey( spep_3 + 109 + OFFSET_X, 1, 35.3, 74.9 , 0 );
setMoveKey( spep_3 + 110 + OFFSET_X, 1, 27.6, 83.5 , 0 );
setMoveKey( spep_3 + 111 + OFFSET_X, 1, 27.6, 83.5 , 0 );
setMoveKey( spep_3 + 112 + OFFSET_X, 1, 36.5, 75.6 , 0 );
setMoveKey( spep_3 + 113 + OFFSET_X, 1, 36.5, 75.6 , 0 );
setMoveKey( spep_3 + 114 + OFFSET_X, 1, 10.3, 45.6 , 0 );
setMoveKey( spep_3 + 115 + OFFSET_X, 1, 10.3, 45.6 , 0 );
setMoveKey( spep_3 + 116 + OFFSET_X, 1, 19.4, 38 , 0 );
setMoveKey( spep_3 + 117 + OFFSET_X, 1, 19.4, 38 , 0 );
setMoveKey( spep_3 + 118 + OFFSET_X, 1, 12.1, 46.8 , 0 );
setMoveKey( spep_3 + 119 + OFFSET_X, 1, 12.1, 46.8 , 0 );
setMoveKey( spep_3 + 120 + OFFSET_X, 1, -9.1, 72.4 , 0 );
setMoveKey( spep_3 + 121 + OFFSET_X, 1, -9.1, 72.4 , 0 );
setMoveKey( spep_3 + 122 + OFFSET_X, 1, -14, 73 , 0 );
setMoveKey( spep_3 + 123 + OFFSET_X, 1, -14, 73 , 0 );
setMoveKey( spep_3 + 124 + OFFSET_X, 1, -6.3, 73.7 , 0 );
setMoveKey( spep_3 + 125 + OFFSET_X, 1, -6.3, 73.7 , 0 );
setMoveKey( spep_3 + 126 + OFFSET_X, 1, 15.4, 79.5 , 0 );
setMoveKey( spep_3 + 127 + OFFSET_X, 1, 15.4, 79.5 , 0 );
setMoveKey( spep_3 + 128 + OFFSET_X, 1, 25.3, 72.2 , 0 );
setMoveKey( spep_3 + 129 + OFFSET_X, 1, 25.3, 72.2 , 0 );
setMoveKey( spep_3 + 130 + OFFSET_X, 1, 18.8, 81.4 , 0 );
setMoveKey( spep_3 + 131 + OFFSET_X, 1, 18.8, 81.4 , 0 );
setMoveKey( spep_3 + 132 + OFFSET_X, 1, 2.4, 76.1 , 0 );
setMoveKey( spep_3 + 133 + OFFSET_X, 1, 2.4, 76.1 , 0 );
setMoveKey( spep_3 + 134 + OFFSET_X, 1, -3.4, 85.6 , 0 );
setMoveKey( spep_3 + 135 + OFFSET_X, 1, -3.4, 85.6 , 0 );
setMoveKey( spep_3 + 136 + OFFSET_X, 1, 7.6, 78.6 , 0 );
setMoveKey( spep_3 + 137 + OFFSET_X, 1, 7.6, 78.6 , 0 );
setMoveKey( spep_3 + 138 + OFFSET_X, 1, 27.9, 86.7 , 0 );
setMoveKey( spep_3 + 139 + OFFSET_X, 1, 27.9, 86.7 , 0 );
setMoveKey( spep_3 + 140 + OFFSET_X, 1, 39.1, 80 , 0 );
setMoveKey( spep_3 + 141 + OFFSET_X, 1, 39.1, 80 , 0 );
setMoveKey( spep_3 + 142 + OFFSET_X, 1, 34, 90 , 0 );
setMoveKey( spep_3 + 143 + OFFSET_X, 1, 34, 90 , 0 );
setMoveKey( spep_3 + 144 + OFFSET_X, 1, 63.2, 90.7 , 0 );
setMoveKey( spep_3 + 145 + OFFSET_X, 1, 63.2, 90.7 , 0 );
setMoveKey( spep_3 + 146 + OFFSET_X, 1, 58.4, 100.9 , 0 );
setMoveKey( spep_3 + 147 + OFFSET_X, 1, 58.4, 100.9 , 0 );
setMoveKey( spep_3 + 148 + OFFSET_X, 1, 70.5, 94.8 , 0 );
setMoveKey( spep_3 + 149 + OFFSET_X, 1, 70.5, 94.8 , 0 );
setMoveKey( spep_3 + 150 + OFFSET_X, 1, 53.6, 66.5 , 0 );
setMoveKey( spep_3 + 151 + OFFSET_X, 1, 53.6, 66.5 , 0 );
setMoveKey( spep_3 + 152 + OFFSET_X, 1, 64.8, 69.9 , 0 );
setMoveKey( spep_3 + 153 + OFFSET_X, 1, 64.8, 69.9 , 0 );
setMoveKey( spep_3 + 154 + OFFSET_X, 1, 61.8, 82 , 0 );
setMoveKey( spep_3 + 155 + OFFSET_X, 1, 61.8, 82 , 0 );
setMoveKey( spep_3 + 156 + OFFSET_X, 1, 50.6, 101.5 , 0 );
setMoveKey( spep_3 + 157 + OFFSET_X, 1, 50.6, 101.5 , 0 );
setMoveKey( spep_3 + 158 + OFFSET_X, 1, 53.1, 112.3 , 0 );
setMoveKey( spep_3 + 159 + OFFSET_X, 1, 53.1, 112.3 , 0 );
setMoveKey( spep_3 + 160 + OFFSET_X, 1, 65, 108.3 , 0 );
setMoveKey( spep_3 + 161 + OFFSET_X, 1, 65, 108.3 , 0 );
setMoveKey( spep_3 + 162 + OFFSET_X, 1, 110.8, 93.2 , 0 );
setMoveKey( spep_3 + 163 + OFFSET_X, 1, 110.8, 93.2 , 0 );
setMoveKey( spep_3 + 164 + OFFSET_X, 1, 121, 91.1 , 0 );
setMoveKey( spep_3 + 165 + OFFSET_X, 1, 121, 91.1 , 0 );
setMoveKey( spep_3 + 166 + OFFSET_X, 1, 122.5, 104.2 , 0 );
setMoveKey( spep_3 + 167 + OFFSET_X, 1, 122.5, 104.2 , 0 );
setMoveKey( spep_3 + 168 + OFFSET_X, 1, 133.1, 102.4 , 0 );
setMoveKey( spep_3 + 169 + OFFSET_X, 1, 133.1, 102.4 , 0 );
setMoveKey( spep_3 + 170 + OFFSET_X, 1, 134.8, 115.8 , 0 );
setMoveKey( spep_3 + 172 + OFFSET_X, 1, 145.7, 114.4 , 0 );
setMoveKey( spep_3 + 174 + OFFSET_X, 1, 141.2, 121.9 , 0 );
setMoveKey( spep_3 + 176 + OFFSET_X, 1, 145.7, 114.4 , 0 );
setMoveKey( spep_3 + 178 + OFFSET_X, 1, 143.2, 113.7 , 0 );
setMoveKey( spep_3 + 200 + OFFSET_X, 1, 143.2, 113.7 , 0 );
setMoveKey( spep_3 + 202 + OFFSET_X, 1, 143.2, 113.6 , 0 );
setMoveKey( spep_3 + 226 + OFFSET_X, 1, 143.2, 113.6 , 0 );
setMoveKey( spep_3 + 228 + OFFSET_X, 1, 118.2, 103.1 , 0 );
setMoveKey( spep_3 + 230 + OFFSET_X, 1, 164.2, 99.2 , 0 );
setMoveKey( spep_3 + 232 + OFFSET_X, 1, 138.6, 104.4 , 0 );
setMoveKey( spep_3 + 234 + OFFSET_X, 1, 136, 118.2 , 0 );
setMoveKey( spep_3 + 236 + OFFSET_X, 1, 154.4, 105.8 , 0 );
setMoveKey( spep_3 + 238 + OFFSET_X, 1, 165.6, 114.3 , 0 );
setMoveKey( spep_3 + 240 + OFFSET_X, 1, 136, 118.2 , 0 );
setMoveKey( spep_3 + 242 + OFFSET_X, 1, 145.7, 114.4 , 0 );
setMoveKey( spep_3 + 250 + OFFSET_X, 1, 145.7, 114.4 , 0 );

setScaleKey( spep_3 + 90 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_3 + 94 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_3 + 95 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_3 + 96 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_3 + 97 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_3 + 98 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_3 + 100 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_3 + 101 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_3 + 102 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_3 + 103 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_3 + 104 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_3 + 106 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_3 + 107 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_3 + 108 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_3 + 109 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_3 + 110 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_3 + 111 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_3 + 112 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_3 + 113 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_3 + 114 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_3 + 115 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_3 + 116 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_3 + 117 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_3 + 118 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_3 + 119 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_3 + 120 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_3 + 121 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_3 + 122 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_3 + 123 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_3 + 124 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_3 + 125 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_3 + 126 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_3 + 127 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_3 + 128 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_3 + 129 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_3 + 130 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_3 + 131 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_3 + 132 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_3 + 133 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_3 + 134 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_3 + 135 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_3 + 136 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_3 + 137 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_3 + 138 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_3 + 139 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_3 + 140 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_3 + 141 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_3 + 142 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_3 + 143 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_3 + 144 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_3 + 145 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_3 + 146 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_3 + 147 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_3 + 148 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_3 + 149 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_3 + 150 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_3 + 151 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_3 + 152 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 153 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 154 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_3 + 155 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_3 + 156 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 157 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 158 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_3 + 159 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_3 + 160 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 161 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 162 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 163 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 164 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 165 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 166 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_3 + 167 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_3 + 168 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 169 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 170 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_3 + 172 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_3 + 174 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_3 + 176 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_3 + 182 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_3 + 184 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_3 + 190 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_3 + 192 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_3 + 198 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_3 + 200 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_3 + 206 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_3 + 208 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_3 + 212 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_3 + 214 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_3 + 220 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_3 + 222 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_3 + 228 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_3 + 230 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_3 + 236 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_3 + 238 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_3 + 244 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_3 + 246 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_3 + 250 + OFFSET_X, 1, 0.35, 0.35 );

setRotateKey( spep_3 + 90 + OFFSET_X, 1, 0 );
setRotateKey( spep_3 + 94 + OFFSET_X, 1, 0 );
setRotateKey( spep_3 + 95 + OFFSET_X, 1, 0 );
setRotateKey( spep_3 + 96 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_3 + 100 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_3 + 101 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_3 + 102 + OFFSET_X, 1, -15 );
setRotateKey( spep_3 + 106 + OFFSET_X, 1, -15 );
setRotateKey( spep_3 + 107 + OFFSET_X, 1, -15 );
setRotateKey( spep_3 + 108 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_3 + 112 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_3 + 113 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_3 + 114 + OFFSET_X, 1, 17 );
setRotateKey( spep_3 + 118 + OFFSET_X, 1, 17 );
setRotateKey( spep_3 + 119 + OFFSET_X, 1, 17 );
setRotateKey( spep_3 + 120 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_3 + 124 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_3 + 125 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_3 + 126 + OFFSET_X, 1, -15 );
setRotateKey( spep_3 + 130 + OFFSET_X, 1, -15 );
setRotateKey( spep_3 + 131 + OFFSET_X, 1, -15 );
setRotateKey( spep_3 + 132 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_3 + 136 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_3 + 137 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_3 + 138 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_3 + 143 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_3 + 144 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_3 + 148 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_3 + 149 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_3 + 150 + OFFSET_X, 1, 17 );
setRotateKey( spep_3 + 154 + OFFSET_X, 1, 17 );
setRotateKey( spep_3 + 155 + OFFSET_X, 1, 17 );
setRotateKey( spep_3 + 156 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_3 + 161 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_3 + 162 + OFFSET_X, 1, 0 );
setRotateKey( spep_3 + 250 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--ロージィ高速腕
SE056 = playSeVer2( spep_3 + 4, 1403, "",spep_3 + 226, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 4, SE056, 224 );
SE057 = playSeVer2( spep_3 + 4, 1003, "", spep_3 + 4 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 4, SE057, 84 );
SE058 = playSeVer2( spep_3 + 12, 1003, "", spep_3 + 12 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 12, SE058, 86 );
SE059 = playSeVer2( spep_3 + 18, 1003, "", spep_3 + 18 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 18, SE059, 83 );
SE060 = playSeVer2( spep_3 + 26, 1003, "", spep_3 + 26 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 26, SE060, 94 );
SE061 = playSeVer2( spep_3 + 32, 1003, "", spep_3 + 32 +14, 0, 0, 0.6);
setPitch( spep_3 + 32, SE061, 100 );
setTimeStretch( SE061, 1.07, 30, 4 );
SE062 = playSeVer2( spep_3 + 38, 1003, "", spep_3 + 38 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 38, SE062, 87 );
SE063 = playSeVer2( spep_3 + 46, 1003, "", spep_3 + 46 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 46, SE063, 87 );
SE064 = playSeVer2( spep_3 + 52, 1003, "", spep_3 + 52 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 52, SE064, 84 );
SE065 = playSeVer2( spep_3 + 58, 1003, "", spep_3 + 58 +14, 0, 0, 0.6);
SE066 = playSeVer2( spep_3 + 64, 1003, "", spep_3 + 64 +14, 0, 0, 0.6);
setPitch( spep_3 + 64, SE066, 100 );
setTimeStretch( SE066, 1.07, 30, 4 );
SE067 = playSeVer2( spep_3 + 72, 1003, "", spep_3 + 72 +14, 0, 0, 0.6);
SE068 = playSeVer2( spep_3 + 80, 1003, "", spep_3 + 80 +14, 0, 0, 0.6);
SE069 = playSeVer2( spep_3 + 86, 1003, "", spep_3 + 86 +14, 0, 0, 0.6);
SE070 = playSeVer2( spep_3 + 92, 1003, "", spep_3 + 92 +14, 0, 0, 0.6);
SE071 = playSeVer2( spep_3 + 98, 1003, "", spep_3 + 98 +14, 0, 0, 0.6);
SE072 = playSeVer2( spep_3 + 96, 1425, "",spep_3 + 192, 0, 18, -1);
SE073 = playSeVer2( spep_3 + 102, 1003, "", spep_3 + 102 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 102, SE073, 67 );
SE074 = playSeVer2( spep_3 + 106, 1003, "", spep_3 + 108 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 106, SE074, 82 );
setPitch( spep_3 + 108, SE074, -100 );
setTimeStretch( SE074, 0.93, 30, 4 );
SE075 = playSeVer2( spep_3 + 114, 1003, "", spep_3 + 114 +14, 0, 0, 0.6);
SE076 = playSeVer2( spep_3 + 118, 1003, "", spep_3 + 118 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 118, SE076, 81 );
SE077 = playSeVer2( spep_3 + 124, 1003, "", spep_3 + 124 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 124, SE077, 89 );
SE078 = playSeVer2( spep_3 + 128, 1003, "", spep_3 + 130 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 128, SE078, 78 );
setPitch( spep_3 + 130, SE078, 200 );
setTimeStretch( SE078, 1.13, 30, 4 );
SE079 = playSeVer2( spep_3 + 136, 1003, "", spep_3 + 136 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 136, SE079, 82 );
SE080 = playSeVer2( spep_3 + 142, 1003, "", spep_3 + 142 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 142, SE080, 80 );
SE081 = playSeVer2( spep_3 + 148, 1003, "", spep_3 + 148 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 148, SE081, 87 );
SE082 = playSeVer2( spep_3 + 154, 1003, "", spep_3 + 154 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 154, SE082, 86 );
SE083 = playSeVer2( spep_3 + 160, 1003, "", spep_3 + 160 +14, 0, 0, 0.6);
setPitch( spep_3 + 160, SE083, -200 );
setTimeStretch( SE083, 0.87, 30, 4 );
SE084 = playSeVer2( spep_3 + 166, 1003, "", spep_3 + 166 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 166, SE084, 85 );
SE085 = playSeVer2( spep_3 + 174, 1003, "", spep_3 + 174 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 174, SE085, 82 );
SE089 = playSeVer2( spep_3 + 178, 1003, "", spep_3 + 178 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 178, SE089, 65 );
setPitch( spep_3 + 178, SE089, 300 );
setTimeStretch( SE089, 1.2, 30, 4 );
SE090 = playSeVer2( spep_3 + 184, 1003, "", spep_3 + 184 +14, 0, 0, 0.6);
SE091 = playSeVer2( spep_3 + 192, 1003, "", spep_3 + 192 +14, 0, 0, 0.6);
SE092 = playSeVer2( spep_3 + 194, 1003, "", spep_3 + 194 +14, 0, 0, 0.6);

--気弾発生
SE086 = playSeVer2( spep_3 + 172, 1200, "",spep_3 + 260, 0, 22, -1);
setSeVolumeByWorkId( spep_3 + 172, SE086, 170 );
SE087 = playSeVer2( spep_3 + 172, 1154, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 172, SE087, 132 );
SE088 = playSeVer2( spep_3 + 172, 1281, "",spep_3 + 254, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 172, SE088, 81 );

--気弾飛んでいく
SE093 = playSeVer2( spep_3 + 228, 1027, "", 0, 0, 0, -1);
SE094 = playSeVer2( spep_3 + 228, 1021, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_4 = spep_3 + MAX_FRAME_3;  -- 254

------------------------------------------------------
-- ラスト爆発 ef_006
------------------------------------------------------
MAX_FRAME_4 = 150;

-- ** エフェクト等 ** --
SP_06 = entryEffect( spep_4 + 0, SP_006, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, SP_06, 0, 0 , 0 );
setEffMoveKey( spep_4 + MAX_FRAME_4, SP_06, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, SP_06, 1.0, 1.0 );
setEffScaleKey( spep_4 + MAX_FRAME_4, SP_06, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, SP_06, 0 );
setEffRotateKey( spep_4 + MAX_FRAME_4, SP_06, 0 );
setEffAlphaKey( spep_4 + 0, SP_06, 255 );
setEffAlphaKey( spep_4 + MAX_FRAME_4, SP_06, 255 );

-- ** 音 ** --
--爆発
SE095 = playSeVer2( spep_4 + 0 -4, 1023, "", 0, 0, 0, -1);
SE096 = playSeVer2( spep_4 + 12 -4, 1024, "", 0, 0, 0, -1);
SE097 = playSeVer2( spep_4 + 12 -4, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 12 -4, SE097, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, MAX_FRAME_4 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_4 + 40 );
endPhase( spep_4 + MAX_FRAME_4 - 2);  -- 150

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 冒頭、正面向き三人 ef_001
------------------------------------------------------
MAX_FRAME_0 = 98;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

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
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
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

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1432, "",spep_0 + 116, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 120 );
SE002 = playSeVer2( spep_0 + 8, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE002, 84 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + MAX_FRAME_0 - 10, 10, 2, 8, fcolor_r, fcolor_g, fcolor_b, 255 );  -- white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 98

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- ジャンプ、爪攻撃、ヒップアタック：上 ef_002
------------------------------------------------------
MAX_FRAME_2 = 574;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_03 = entryEffect( spep_2 + 0, SP_003r, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_03, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_03, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_03, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_03, 0 );
setEffAlphaKey( spep_2 + 0, SP_03, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_03, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 90 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 190 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 90 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 102 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 140 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 144 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 154 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 162 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 168 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 176 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 184 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 90 + OFFSET_X, 1, 5.5, -5.4 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 5.5, -5.4 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 5.6, 15.6 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 5.6, 15.6 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 77.2, -14.5 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 77.2, -14.5 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 32.5, 36.5 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 32.5, 36.5 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 120.1, 18.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 120.1, 18.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 46.7, -1.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 46.7, -1.8 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 34.3, 37.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 34.3, 37.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 121.9, 19.8 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 121.9, 19.8 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 1.2, 14.7 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 1.2, 14.7 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -2.5, 24.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -2.5, 24.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 29.5, -7.2 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 29.5, -7.2 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 2.9, 16.1 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 2.9, 16.1 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 30.6, -6.3 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 30.6, -6.3 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 12.6, 21.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 12.6, 21.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 31.8, -5.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 31.8, -5.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 13.8, 22.3 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 13.8, 22.3 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 14.4, 22.7 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 14.4, 22.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 15, 23.2 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 15, 23.2 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 15.6, 23.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 15.6, 23.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 16.2, 24.2 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 16.2, 24.2 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 16.3, 24.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 16.3, 24.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 26.3, 27.2 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 26.3, 27.2 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 16.3, 24.2 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 16.3, 24.2 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 26.3, 27.1 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 26.3, 27.1 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 16.3, 24.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 16.3, 24.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 26.3, 27.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 26.3, 27.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 16.3, 24.3 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 16.3, 24.3 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 26.3, 27.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 26.3, 27.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 16.3, 24.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 16.3, 24.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 26.3, 27.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 26.3, 27.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 16.3, 24.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 16.3, 24.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 26.3, 27.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 26.3, 27.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 16.3, 24.2 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 16.3, 24.2 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 26.3, 27.1 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 26.3, 27.1 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 16.3, 24.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 16.3, 24.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 26.3, 27.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 26.3, 27.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 20.6, 21.4 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 16.3, 24.3 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 16.3, 24.3 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 16.3, 24.3 , 0 );

setScaleKey( spep_2 + 90 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.2, 1.2 );

setRotateKey( spep_2 + 90 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -39.2 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -38.8 );
setRotateKey( spep_2 + 111 + OFFSET_X, 1, -38.8 );
setRotateKey( spep_2 + 112 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -38.4 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -38.4 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -38.1 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -38.1 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -37.9 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -37.1 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -37.1 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -36.9 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -36.9 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -36 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -36 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 16.6 );

-- 敵の動き2
setDisp( spep_2 + 296 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 358 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 300 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 310 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 314 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 296 + OFFSET_X, 1, 18, 26.6 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 18, 26.6 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 18, 26.6 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 18, 26.5 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 18, 26.5 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 18, 26.5 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 18, 26.6 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 18, 26.6 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 96.1, 100.8 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 96.1, 100.8 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 74.7, 54.1 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 74.7, 54.1 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 138.2, 174.5 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 138.2, 174.5 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 129.7, 115.1 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 129.7, 115.1 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 166.8, 171.5 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 166.8, 171.5 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 100.6, 78.2 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 100.6, 78.2 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 157.8, 198.6 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 157.8, 198.6 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 97.8, 127.9 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 97.8, 127.9 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 186.4, 195.7 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 186.4, 195.7 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 140, 155.2 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 140, 155.2 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 131.2, 152.5 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 131.2, 152.5 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 149.8, 167.2 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 149.8, 167.2 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 140.9, 164.5 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 140.9, 164.5 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 159.6, 179.3 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 159.6, 179.3 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 150.7, 176.6 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 224.9, 248.5 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 285.3, 311.7 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 345.7, 374.9 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 406.1, 438 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 466.5, 501.2 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 527, 564.4 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 587.4, 627.6 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 647.8, 690.7 , 0 );

setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 1.24, 1.24 );

setRotateKey( spep_2 + 296 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, -43.2 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -42.7 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, -42.7 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, -42.1 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, -42.1 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, -41.6 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, -41.6 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, -41.1 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, -41.1 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, -40.5 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, -40.5 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, -39.4 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, -38.9 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, -38.3 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, -38.3 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, -37.8 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, -37.8 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, -37.2 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, -36.7 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, -34 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, -32 );
setRotateKey( spep_2 + 352 + OFFSET_X, 1, -31 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -29.9 );
setRotateKey( spep_2 + 356 + OFFSET_X, 1, -28.9 );
setRotateKey( spep_2 + 358 + OFFSET_X, 1, -27.9 );

-- 敵の動き3
setDisp( spep_2 + 440 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 462 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 440 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 440 + OFFSET_X, 1, -702.9, -666 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -606.4, -544.7 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -510, -423.5 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -413.5, -302.2 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -317, -181 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -220.5, -59.8 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -124, 61.4 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -27.5, 182.5 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 69, 303.6 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 165.5, 424.7 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 262, 545.8 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 262, 545.8 , 0 );

setScaleKey( spep_2 + 440 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 450 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_2 + 452 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_2 + 456 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_2 + 458 + OFFSET_X, 1, 3.35, 3.35 );
setScaleKey( spep_2 + 460 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_2 + 462 + OFFSET_X, 1, 3.64, 3.64 );

setRotateKey( spep_2 + 440 + OFFSET_X, 1, -57 );
setRotateKey( spep_2 + 462 + OFFSET_X, 1, -57 );

-- 敵の動き4
setDisp( spep_2 + 538 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 572 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 538 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 538 + OFFSET_X, 1, 31, -48 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 31, -48 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 31, -48 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 66.9, -11.6 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 66.9, -11.6 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 115, -100.5 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 115, -100.5 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 34, -83.2 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, 34, -83.2 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 66.9, -11.6 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 66.9, -11.6 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 115.1, -100.6 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 115.1, -100.6 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 34, -83.2 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 34, -83.2 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 31, -48 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 31, -48 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 24.9, -57.3 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 24.9, -57.3 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 31, -48 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 31, -48 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 24.9, -57.3 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 24.9, -57.3 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 31, -48 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 31, -48 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 24.9, -57.3 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 24.9, -57.3 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 31, -48 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, 31, -48 , 0 );

setScaleKey( spep_2 + 538 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_2 + 542 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_2 + 543 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_2 + 544 + OFFSET_X, 1, 6.39, 6.39 );
setScaleKey( spep_2 + 546 + OFFSET_X, 1, 6.35, 6.35 );
setScaleKey( spep_2 + 547 + OFFSET_X, 1, 6.35, 6.35 );
setScaleKey( spep_2 + 548 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_2 + 572 + OFFSET_X, 1, 6.3, 6.3 );

setRotateKey( spep_2 + 538 + OFFSET_X, 1, 25 );
setRotateKey( spep_2 + 572 + OFFSET_X, 1, 25 );

-- ** 音 ** --
--３人飛び上がる
SE005 = playSeVer2( spep_2 + 8, 1007, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_2 + 12, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE006, 81 );
SE007 = playSeVer2( spep_2 + 12, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE007, 136 );

--カクンサ降りてくる
SE008 = playSeVer2( spep_2 + 28, 1116, "", 0, 0, 0, 0.6);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 74;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--初手ひっかき
SE009 = playSeVer2( spep_2 + 100, 1032, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 100, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE010, 76 );
SE011 = playSeVer2( spep_2 + 100, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE011, 83 );
SE012 = playSeVer2( spep_2 + 104, 1031, "", 0, 0, 0, -1);

--みだれひっかき
SE013 = playSeVer2( spep_2 + 134, 1425, "",spep_2 + 198, 0, 18, -1);
SE014 = playSeVer2( spep_2 + 134, 1032, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 134, 1031, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 142, 1032, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 144, 1031, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 150, 1032, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 160, 1032, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 168, 1032, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 176, 1031, "", 0, 0, 0, -1);

--リブリアンオーラ
SE022 = playSeVer2( spep_2 + 184, 1176, "",spep_2 + 294, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 184, SE022, 42 );
SE023 = playSeVer2( spep_2 + 184, 1396, "",spep_2 + 294, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 184, SE023, 65 );
SE024 = playSeVer2( spep_2 + 184, 1181, "",spep_2 + 296, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 184, SE024, 214 );

--リブリアン構える
SE025 = playSeVer2( spep_2 + 224, 1004, "", 0, 0, 0, -1);

--落ちてくる
SE026 = playSeVer2( spep_2 + 260, 1182, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 260, 1118, "",spep_2 + 342, 0, 16, -1);
SE028 = playSeVer2( spep_2 + 260, 1314, "",spep_2 + 342, 0, 18, -1);
SE029 = playSeVer2( spep_2 + 260, 1304, "",spep_2 + 338, 0, 16, -1);

--カクンサみだれひっかき続き
SE030 = playSeVer2( spep_2 + 290, 1032, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 296, 1032, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 306, 1032, "", 0, 0, 0, -1);

--リブリアンヒップドロップ
SE033 = playSeVer2( spep_2 + 314, 1011, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 320, 1025, "", 0, 0, 0, -1);

--リブリアンオーラ
SE035 = playSeVer2( spep_2 + 336, 1176, "",spep_2 + 436, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 336, SE035, 42 );
SE036 = playSeVer2( spep_2 + 336, 1396, "",spep_2 + 436, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 336, SE036, 65 );
SE037 = playSeVer2( spep_2 + 336, 1181, "",spep_2 + 436, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 336, SE037, 214 );

--リブリアンヒップドロップ
SE038 = playSeVer2( spep_2 + 340, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 340, SE038, 79 );

--リブリアン着地
SE039 = playSeVer2( spep_2 + 370, 1112, "",spep_2 + 408, 0, 18, -1);
SE040 = playSeVer2( spep_2 + 370, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 370, SE040, 166 );

--カクンサ瞬間移動
SE041 = playSeVer2( spep_2 + 412, 1189, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 418, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 418, SE042, 130 );

--敵飛んでくる
SE043 = playSeVer2( spep_2 + 426, 1183, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 426, SE043, 79 );

--カクンサ移動
SE044 = playSeVer2( spep_2 + 448, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 448, SE044, 138 );
SE045 = playSeVer2( spep_2 + 454, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 454, SE045, 82 );
SE046 = playSeVer2( spep_2 + 472, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 472, SE046, 72 );

--カクンサ向かってくる
SE047 = playSeVer2( spep_2 + 486, 1182, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 486, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 486, SE048, 130 );
SE049 = playSeVer2( spep_2 + 490, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 490, SE049, 130 );

--カクンサ斬る
SE050 = playSeVer2( spep_2 + 538, 1032, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 538, 1172, "",spep_2 + 578, 0, 26, -1);
SE052 = playSeVer2( spep_2 + 538, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 538, SE052, 66 );
SE053 = playSeVer2( spep_2 + 542, 1141, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_2 + 544, 1031, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 548, 1032, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 黒フェード ** --
entryFade( spep_2 + MAX_FRAME_2 - 8, 6, 2, 0, 0, 0, 0, 255 );  -- black fade

-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2;  -- 574

------------------------------------------------------
-- 連打攻撃、気弾接近：上 ef_004
------------------------------------------------------
MAX_FRAME_3 = 254;

-- ** エフェクト等 ** --
SP_04 = entryEffect( spep_3 + 0, SP_004r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, SP_04, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, SP_04, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, SP_04, 1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, SP_04, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, SP_04, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, SP_04, 0 );
setEffAlphaKey( spep_3 + 0, SP_04, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, SP_04, 255 );
SP_05 = entryEffect( spep_3 + 0, SP_005r, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, SP_05, 0, 0 , 0 );
setEffMoveKey( spep_3 + MAX_FRAME_3, SP_05, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, SP_05, 1.0, 1.0 );
setEffScaleKey( spep_3 + MAX_FRAME_3, SP_05, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, SP_05, 0 );
setEffRotateKey( spep_3 + MAX_FRAME_3, SP_05, 0 );
setEffAlphaKey( spep_3 + 0, SP_05, 255 );
setEffAlphaKey( spep_3 + MAX_FRAME_3, SP_05, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 90 + OFFSET_X, 1, 1 );
setDisp( spep_3 + 250 + OFFSET_X, 1, 0 );

changeAnime( spep_3 + 90 + OFFSET_X, 1, 108 );
changeAnime( spep_3 + 96 + OFFSET_X, 1, 106 );
changeAnime( spep_3 + 102 + OFFSET_X, 1, 104 );
changeAnime( spep_3 + 108 + OFFSET_X, 1, 106 );
changeAnime( spep_3 + 114 + OFFSET_X, 1, 108 );
changeAnime( spep_3 + 120 + OFFSET_X, 1, 104 );
changeAnime( spep_3 + 126 + OFFSET_X, 1, 108 );
changeAnime( spep_3 + 132 + OFFSET_X, 1, 106 );
changeAnime( spep_3 + 138 + OFFSET_X, 1, 104 );
changeAnime( spep_3 + 144 + OFFSET_X, 1, 106 );
changeAnime( spep_3 + 150 + OFFSET_X, 1, 108 );
changeAnime( spep_3 + 156 + OFFSET_X, 1, 106 );
changeAnime( spep_3 + 162 + OFFSET_X, 1, 108 );

setMoveKey( spep_3 + 90 + OFFSET_X, 1, 47.2, 23.1 , 0 );
setMoveKey( spep_3 + 91 + OFFSET_X, 1, 47.2, 23.1 , 0 );
setMoveKey( spep_3 + 92 + OFFSET_X, 1, 47.3, 23.2 , 0 );
setMoveKey( spep_3 + 93 + OFFSET_X, 1, 47.3, 23.2 , 0 );
setMoveKey( spep_3 + 94 + OFFSET_X, 1, 47.5, 23.4 , 0 );
setMoveKey( spep_3 + 95 + OFFSET_X, 1, 47.5, 23.4 , 0 );
setMoveKey( spep_3 + 96 + OFFSET_X, 1, -16.7, 67.1 , 0 );
setMoveKey( spep_3 + 97 + OFFSET_X, 1, -16.7, 67.1 , 0 );
setMoveKey( spep_3 + 98 + OFFSET_X, 1, -24.7, 75.5 , 0 );
setMoveKey( spep_3 + 99 + OFFSET_X, 1, -24.7, 75.5 , 0 );
setMoveKey( spep_3 + 100 + OFFSET_X, 1, -16, 67.5 , 0 );
setMoveKey( spep_3 + 101 + OFFSET_X, 1, -16, 67.5 , 0 );
setMoveKey( spep_3 + 102 + OFFSET_X, 1, 5.1, 73.8 , 0 );
setMoveKey( spep_3 + 103 + OFFSET_X, 1, 5.1, 73.8 , 0 );
setMoveKey( spep_3 + 104 + OFFSET_X, 1, 13.8, 65.8 , 0 );
setMoveKey( spep_3 + 105 + OFFSET_X, 1, 13.8, 65.8 , 0 );
setMoveKey( spep_3 + 106 + OFFSET_X, 1, 6, 74.3 , 0 );
setMoveKey( spep_3 + 107 + OFFSET_X, 1, 6, 74.3 , 0 );
setMoveKey( spep_3 + 108 + OFFSET_X, 1, 35.3, 74.9 , 0 );
setMoveKey( spep_3 + 109 + OFFSET_X, 1, 35.3, 74.9 , 0 );
setMoveKey( spep_3 + 110 + OFFSET_X, 1, 27.6, 83.5 , 0 );
setMoveKey( spep_3 + 111 + OFFSET_X, 1, 27.6, 83.5 , 0 );
setMoveKey( spep_3 + 112 + OFFSET_X, 1, 36.5, 75.6 , 0 );
setMoveKey( spep_3 + 113 + OFFSET_X, 1, 36.5, 75.6 , 0 );
setMoveKey( spep_3 + 114 + OFFSET_X, 1, 10.3, 45.6 , 0 );
setMoveKey( spep_3 + 115 + OFFSET_X, 1, 10.3, 45.6 , 0 );
setMoveKey( spep_3 + 116 + OFFSET_X, 1, 19.4, 38 , 0 );
setMoveKey( spep_3 + 117 + OFFSET_X, 1, 19.4, 38 , 0 );
setMoveKey( spep_3 + 118 + OFFSET_X, 1, 12.1, 46.8 , 0 );
setMoveKey( spep_3 + 119 + OFFSET_X, 1, 12.1, 46.8 , 0 );
setMoveKey( spep_3 + 120 + OFFSET_X, 1, -9.1, 72.4 , 0 );
setMoveKey( spep_3 + 121 + OFFSET_X, 1, -9.1, 72.4 , 0 );
setMoveKey( spep_3 + 122 + OFFSET_X, 1, -14, 73 , 0 );
setMoveKey( spep_3 + 123 + OFFSET_X, 1, -14, 73 , 0 );
setMoveKey( spep_3 + 124 + OFFSET_X, 1, -6.3, 73.7 , 0 );
setMoveKey( spep_3 + 125 + OFFSET_X, 1, -6.3, 73.7 , 0 );
setMoveKey( spep_3 + 126 + OFFSET_X, 1, 15.4, 79.5 , 0 );
setMoveKey( spep_3 + 127 + OFFSET_X, 1, 15.4, 79.5 , 0 );
setMoveKey( spep_3 + 128 + OFFSET_X, 1, 25.3, 72.2 , 0 );
setMoveKey( spep_3 + 129 + OFFSET_X, 1, 25.3, 72.2 , 0 );
setMoveKey( spep_3 + 130 + OFFSET_X, 1, 18.8, 81.4 , 0 );
setMoveKey( spep_3 + 131 + OFFSET_X, 1, 18.8, 81.4 , 0 );
setMoveKey( spep_3 + 132 + OFFSET_X, 1, 2.4, 76.1 , 0 );
setMoveKey( spep_3 + 133 + OFFSET_X, 1, 2.4, 76.1 , 0 );
setMoveKey( spep_3 + 134 + OFFSET_X, 1, -3.4, 85.6 , 0 );
setMoveKey( spep_3 + 135 + OFFSET_X, 1, -3.4, 85.6 , 0 );
setMoveKey( spep_3 + 136 + OFFSET_X, 1, 7.6, 78.6 , 0 );
setMoveKey( spep_3 + 137 + OFFSET_X, 1, 7.6, 78.6 , 0 );
setMoveKey( spep_3 + 138 + OFFSET_X, 1, 27.9, 86.7 , 0 );
setMoveKey( spep_3 + 139 + OFFSET_X, 1, 27.9, 86.7 , 0 );
setMoveKey( spep_3 + 140 + OFFSET_X, 1, 39.1, 80 , 0 );
setMoveKey( spep_3 + 141 + OFFSET_X, 1, 39.1, 80 , 0 );
setMoveKey( spep_3 + 142 + OFFSET_X, 1, 34, 90 , 0 );
setMoveKey( spep_3 + 143 + OFFSET_X, 1, 34, 90 , 0 );
setMoveKey( spep_3 + 144 + OFFSET_X, 1, 63.2, 90.7 , 0 );
setMoveKey( spep_3 + 145 + OFFSET_X, 1, 63.2, 90.7 , 0 );
setMoveKey( spep_3 + 146 + OFFSET_X, 1, 58.4, 100.9 , 0 );
setMoveKey( spep_3 + 147 + OFFSET_X, 1, 58.4, 100.9 , 0 );
setMoveKey( spep_3 + 148 + OFFSET_X, 1, 70.5, 94.8 , 0 );
setMoveKey( spep_3 + 149 + OFFSET_X, 1, 70.5, 94.8 , 0 );
setMoveKey( spep_3 + 150 + OFFSET_X, 1, 53.6, 66.5 , 0 );
setMoveKey( spep_3 + 151 + OFFSET_X, 1, 53.6, 66.5 , 0 );
setMoveKey( spep_3 + 152 + OFFSET_X, 1, 64.8, 69.9 , 0 );
setMoveKey( spep_3 + 153 + OFFSET_X, 1, 64.8, 69.9 , 0 );
setMoveKey( spep_3 + 154 + OFFSET_X, 1, 61.8, 82 , 0 );
setMoveKey( spep_3 + 155 + OFFSET_X, 1, 61.8, 82 , 0 );
setMoveKey( spep_3 + 156 + OFFSET_X, 1, 50.6, 101.5 , 0 );
setMoveKey( spep_3 + 157 + OFFSET_X, 1, 50.6, 101.5 , 0 );
setMoveKey( spep_3 + 158 + OFFSET_X, 1, 53.1, 112.3 , 0 );
setMoveKey( spep_3 + 159 + OFFSET_X, 1, 53.1, 112.3 , 0 );
setMoveKey( spep_3 + 160 + OFFSET_X, 1, 65, 108.3 , 0 );
setMoveKey( spep_3 + 161 + OFFSET_X, 1, 65, 108.3 , 0 );
setMoveKey( spep_3 + 162 + OFFSET_X, 1, 110.8, 93.2 , 0 );
setMoveKey( spep_3 + 163 + OFFSET_X, 1, 110.8, 93.2 , 0 );
setMoveKey( spep_3 + 164 + OFFSET_X, 1, 121, 91.1 , 0 );
setMoveKey( spep_3 + 165 + OFFSET_X, 1, 121, 91.1 , 0 );
setMoveKey( spep_3 + 166 + OFFSET_X, 1, 122.5, 104.2 , 0 );
setMoveKey( spep_3 + 167 + OFFSET_X, 1, 122.5, 104.2 , 0 );
setMoveKey( spep_3 + 168 + OFFSET_X, 1, 133.1, 102.4 , 0 );
setMoveKey( spep_3 + 169 + OFFSET_X, 1, 133.1, 102.4 , 0 );
setMoveKey( spep_3 + 170 + OFFSET_X, 1, 134.8, 115.8 , 0 );
setMoveKey( spep_3 + 172 + OFFSET_X, 1, 145.7, 114.4 , 0 );
setMoveKey( spep_3 + 174 + OFFSET_X, 1, 141.2, 121.9 , 0 );
setMoveKey( spep_3 + 176 + OFFSET_X, 1, 145.7, 114.4 , 0 );
setMoveKey( spep_3 + 178 + OFFSET_X, 1, 143.2, 113.7 , 0 );
setMoveKey( spep_3 + 200 + OFFSET_X, 1, 143.2, 113.7 , 0 );
setMoveKey( spep_3 + 202 + OFFSET_X, 1, 143.2, 113.6 , 0 );
setMoveKey( spep_3 + 226 + OFFSET_X, 1, 143.2, 113.6 , 0 );
setMoveKey( spep_3 + 228 + OFFSET_X, 1, 118.2, 103.1 , 0 );
setMoveKey( spep_3 + 230 + OFFSET_X, 1, 164.2, 99.2 , 0 );
setMoveKey( spep_3 + 232 + OFFSET_X, 1, 138.6, 104.4 , 0 );
setMoveKey( spep_3 + 234 + OFFSET_X, 1, 136, 118.2 , 0 );
setMoveKey( spep_3 + 236 + OFFSET_X, 1, 154.4, 105.8 , 0 );
setMoveKey( spep_3 + 238 + OFFSET_X, 1, 165.6, 114.3 , 0 );
setMoveKey( spep_3 + 240 + OFFSET_X, 1, 136, 118.2 , 0 );
setMoveKey( spep_3 + 242 + OFFSET_X, 1, 145.7, 114.4 , 0 );
setMoveKey( spep_3 + 250 + OFFSET_X, 1, 145.7, 114.4 , 0 );

setScaleKey( spep_3 + 90 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_3 + 94 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_3 + 95 + OFFSET_X, 1, 2.64, 2.64 );
setScaleKey( spep_3 + 96 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_3 + 97 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_3 + 98 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_3 + 100 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_3 + 101 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_3 + 102 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_3 + 103 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_3 + 104 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_3 + 106 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_3 + 107 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_3 + 108 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_3 + 109 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_3 + 110 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_3 + 111 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_3 + 112 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_3 + 113 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_3 + 114 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_3 + 115 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_3 + 116 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_3 + 117 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_3 + 118 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_3 + 119 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_3 + 120 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_3 + 121 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_3 + 122 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_3 + 123 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_3 + 124 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_3 + 125 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_3 + 126 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_3 + 127 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_3 + 128 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_3 + 129 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_3 + 130 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_3 + 131 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_3 + 132 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_3 + 133 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_3 + 134 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_3 + 135 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_3 + 136 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_3 + 137 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_3 + 138 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_3 + 139 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_3 + 140 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_3 + 141 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_3 + 142 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_3 + 143 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_3 + 144 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_3 + 145 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_3 + 146 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_3 + 147 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_3 + 148 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_3 + 149 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_3 + 150 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_3 + 151 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_3 + 152 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 153 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_3 + 154 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_3 + 155 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_3 + 156 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 157 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_3 + 158 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_3 + 159 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_3 + 160 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 161 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 162 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 163 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_3 + 164 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 165 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_3 + 166 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_3 + 167 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_3 + 168 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 169 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 170 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_3 + 172 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_3 + 174 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_3 + 176 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_3 + 182 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_3 + 184 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_3 + 190 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_3 + 192 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_3 + 198 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_3 + 200 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_3 + 206 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_3 + 208 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_3 + 212 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_3 + 214 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_3 + 220 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_3 + 222 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_3 + 228 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_3 + 230 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_3 + 236 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_3 + 238 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_3 + 244 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_3 + 246 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_3 + 250 + OFFSET_X, 1, 0.35, 0.35 );

setRotateKey( spep_3 + 90 + OFFSET_X, 1, 0 );
setRotateKey( spep_3 + 94 + OFFSET_X, 1, 0 );
setRotateKey( spep_3 + 95 + OFFSET_X, 1, 0 );
setRotateKey( spep_3 + 96 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_3 + 100 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_3 + 101 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_3 + 102 + OFFSET_X, 1, -15 );
setRotateKey( spep_3 + 106 + OFFSET_X, 1, -15 );
setRotateKey( spep_3 + 107 + OFFSET_X, 1, -15 );
setRotateKey( spep_3 + 108 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_3 + 112 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_3 + 113 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_3 + 114 + OFFSET_X, 1, 17 );
setRotateKey( spep_3 + 118 + OFFSET_X, 1, 17 );
setRotateKey( spep_3 + 119 + OFFSET_X, 1, 17 );
setRotateKey( spep_3 + 120 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_3 + 124 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_3 + 125 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_3 + 126 + OFFSET_X, 1, -15 );
setRotateKey( spep_3 + 130 + OFFSET_X, 1, -15 );
setRotateKey( spep_3 + 131 + OFFSET_X, 1, -15 );
setRotateKey( spep_3 + 132 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_3 + 136 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_3 + 137 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_3 + 138 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_3 + 143 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_3 + 144 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_3 + 148 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_3 + 149 + OFFSET_X, 1, -57.9 );
setRotateKey( spep_3 + 150 + OFFSET_X, 1, 17 );
setRotateKey( spep_3 + 154 + OFFSET_X, 1, 17 );
setRotateKey( spep_3 + 155 + OFFSET_X, 1, 17 );
setRotateKey( spep_3 + 156 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_3 + 161 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_3 + 162 + OFFSET_X, 1, 0 );
setRotateKey( spep_3 + 250 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--ロージィ高速腕
SE056 = playSeVer2( spep_3 + 4, 1403, "",spep_3 + 226, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 4, SE056, 224 );
SE057 = playSeVer2( spep_3 + 4, 1003, "", spep_3 + 4 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 4, SE057, 84 );
SE058 = playSeVer2( spep_3 + 12, 1003, "", spep_3 + 12 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 12, SE058, 86 );
SE059 = playSeVer2( spep_3 + 18, 1003, "", spep_3 + 18 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 18, SE059, 83 );
SE060 = playSeVer2( spep_3 + 26, 1003, "", spep_3 + 26 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 26, SE060, 94 );
SE061 = playSeVer2( spep_3 + 32, 1003, "", spep_3 + 32 +14, 0, 0, 0.6);
setPitch( spep_3 + 32, SE061, 100 );
setTimeStretch( SE061, 1.07, 30, 4 );
SE062 = playSeVer2( spep_3 + 38, 1003, "", spep_3 + 38 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 38, SE062, 87 );
SE063 = playSeVer2( spep_3 + 46, 1003, "", spep_3 + 46 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 46, SE063, 87 );
SE064 = playSeVer2( spep_3 + 52, 1003, "", spep_3 + 52 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 52, SE064, 84 );
SE065 = playSeVer2( spep_3 + 58, 1003, "", spep_3 + 58 +14, 0, 0, 0.6);
SE066 = playSeVer2( spep_3 + 64, 1003, "", spep_3 + 64 +14, 0, 0, 0.6);
setPitch( spep_3 + 64, SE066, 100 );
setTimeStretch( SE066, 1.07, 30, 4 );
SE067 = playSeVer2( spep_3 + 72, 1003, "", spep_3 + 72 +14, 0, 0, 0.6);
SE068 = playSeVer2( spep_3 + 80, 1003, "", spep_3 + 80 +14, 0, 0, 0.6);
SE069 = playSeVer2( spep_3 + 86, 1003, "", spep_3 + 86 +14, 0, 0, 0.6);
SE070 = playSeVer2( spep_3 + 92, 1003, "", spep_3 + 92 +14, 0, 0, 0.6);
SE071 = playSeVer2( spep_3 + 98, 1003, "", spep_3 + 98 +14, 0, 0, 0.6);
SE072 = playSeVer2( spep_3 + 96, 1425, "",spep_3 + 192, 0, 18, -1);
SE073 = playSeVer2( spep_3 + 102, 1003, "", spep_3 + 102 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 102, SE073, 67 );
SE074 = playSeVer2( spep_3 + 106, 1003, "", spep_3 + 108 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 106, SE074, 82 );
setPitch( spep_3 + 108, SE074, -100 );
setTimeStretch( SE074, 0.93, 30, 4 );
SE075 = playSeVer2( spep_3 + 114, 1003, "", spep_3 + 114 +14, 0, 0, 0.6);
SE076 = playSeVer2( spep_3 + 118, 1003, "", spep_3 + 118 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 118, SE076, 81 );
SE077 = playSeVer2( spep_3 + 124, 1003, "", spep_3 + 124 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 124, SE077, 89 );
SE078 = playSeVer2( spep_3 + 128, 1003, "", spep_3 + 130 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 128, SE078, 78 );
setPitch( spep_3 + 130, SE078, 200 );
setTimeStretch( SE078, 1.13, 30, 4 );
SE079 = playSeVer2( spep_3 + 136, 1003, "", spep_3 + 136 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 136, SE079, 82 );
SE080 = playSeVer2( spep_3 + 142, 1003, "", spep_3 + 142 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 142, SE080, 80 );
SE081 = playSeVer2( spep_3 + 148, 1003, "", spep_3 + 148 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 148, SE081, 87 );
SE082 = playSeVer2( spep_3 + 154, 1003, "", spep_3 + 154 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 154, SE082, 86 );
SE083 = playSeVer2( spep_3 + 160, 1003, "", spep_3 + 160 +14, 0, 0, 0.6);
setPitch( spep_3 + 160, SE083, -200 );
setTimeStretch( SE083, 0.87, 30, 4 );
SE084 = playSeVer2( spep_3 + 166, 1003, "", spep_3 + 166 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 166, SE084, 85 );
SE085 = playSeVer2( spep_3 + 174, 1003, "", spep_3 + 174 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 174, SE085, 82 );
SE089 = playSeVer2( spep_3 + 178, 1003, "", spep_3 + 178 +14, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 178, SE089, 65 );
setPitch( spep_3 + 178, SE089, 300 );
setTimeStretch( SE089, 1.2, 30, 4 );
SE090 = playSeVer2( spep_3 + 184, 1003, "", spep_3 + 184 +14, 0, 0, 0.6);
SE091 = playSeVer2( spep_3 + 192, 1003, "", spep_3 + 192 +14, 0, 0, 0.6);
SE092 = playSeVer2( spep_3 + 194, 1003, "", spep_3 + 194 +14, 0, 0, 0.6);

--気弾発生
SE086 = playSeVer2( spep_3 + 172, 1200, "",spep_3 + 260, 0, 22, -1);
setSeVolumeByWorkId( spep_3 + 172, SE086, 170 );
SE087 = playSeVer2( spep_3 + 172, 1154, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 172, SE087, 132 );
SE088 = playSeVer2( spep_3 + 172, 1281, "",spep_3 + 254, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 172, SE088, 81 );

--気弾飛んでいく
SE093 = playSeVer2( spep_3 + 228, 1027, "", 0, 0, 0, -1);
SE094 = playSeVer2( spep_3 + 228, 1021, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 + 2, 0, 0, 0, 0, 255 );

-- ** 次の準備 ** --
spep_4 = spep_3 + MAX_FRAME_3;  -- 254

------------------------------------------------------
-- ラスト爆発 ef_006
------------------------------------------------------
MAX_FRAME_4 = 150;

-- ** エフェクト等 ** --
SP_06 = entryEffect( spep_4 + 0, SP_006r, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, SP_06, 0, 0 , 0 );
setEffMoveKey( spep_4 + MAX_FRAME_4, SP_06, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, SP_06, 1.0, 1.0 );
setEffScaleKey( spep_4 + MAX_FRAME_4, SP_06, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, SP_06, 0 );
setEffRotateKey( spep_4 + MAX_FRAME_4, SP_06, 0 );
setEffAlphaKey( spep_4 + 0, SP_06, 255 );
setEffAlphaKey( spep_4 + MAX_FRAME_4, SP_06, 255 );

-- ** 音 ** --
--爆発
SE095 = playSeVer2( spep_4 + 0 -4, 1023, "", 0, 0, 0, -1);
SE096 = playSeVer2( spep_4 + 12 -4, 1024, "", 0, 0, 0, -1);
SE097 = playSeVer2( spep_4 + 12 -4, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 12 -4, SE097, 71 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, MAX_FRAME_4 + 2, 0, 0, 0, 0, 255 );

-- ** おわり ** --
dealDamage( spep_4 + 40 );
endPhase( spep_4 + MAX_FRAME_4 - 2);  -- 150

end
