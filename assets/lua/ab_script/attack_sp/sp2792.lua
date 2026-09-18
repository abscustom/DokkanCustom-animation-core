--1029850:UR_フリーザ(最終形態) /クウラ(最終形態)_必殺技
--sp_effect_a3_00113
--sp2792

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163332;  -- 開始　セリフカットイン ef_001
SP_02 = 163333;  -- ビーム発射 ef_002
SP_02b = 163334;  -- ビーム発射 ef_002b
SP_03 = 163337;  -- ガッ ef_003
SP_03b = 163338;  -- ガッ ef_003b

--エフェクト(敵)
SP_02r = 163335;  -- ビーム発射 ef_002r
SP_02br = 163336;  -- ビーム発射 ef_002br


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

ENABLE_AUTO_TIME_STRETCH(0.86);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開始　セリフカットイン
-------------------------------------------------
MAX_FRAME_0 = 120;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開始　セリフカットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 10;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 138, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--腕あげる
SE002 = playSeVer2( spep_0 + 4, 1189, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 10, 1003, "", 0, 0, 0, -1);

--指さす
SE005 = playSeVer2( spep_0 + 40, 1012, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --120F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--気弾溜め
SE007 = playSeVer2( spep_1 + 80, 1191, "",spep_1 + 158, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 80, SE007, 141 );
SE008 = playSeVer2( spep_1 + 80, 1248, "",spep_1 + 170, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 80, SE008, 71 );
SE009 = playSeVer2( spep_1 + 80, 1281, "",spep_1 + 166, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 80, SE009, 58 );

-------------------------------------------------
-- ビーム発射
-------------------------------------------------
MAX_FRAME_2 = 316;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ビーム発射(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ビーム発射(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 120 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 240 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 120 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 156 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 120 + OFFSET_X, 1, -6.7, 60.3 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -6.7, 60.3 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -6.8, 60.3 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -6.8, 60.3 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -7, 60.3 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -7, 60.3 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -7.1, 60.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -7.1, 60.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -7.3, 60.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -7.3, 60.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -7.4, 60.3 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -7.4, 60.3 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -7.6, 60.3 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -7.6, 60.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -7.7, 60.3 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -7.7, 60.3 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -7.9, 60.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -7.9, 60.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -8, 60.3 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -8, 60.3 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -8.1, 60.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -8.1, 60.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -8.3, 60.3 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -8.3, 60.3 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -8.4, 60.3 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -8.4, 60.3 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -8.6, 60.3 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -8.6, 60.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -8.7, 60.3 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -8.7, 60.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -8.9, 60.3 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -8.9, 60.3 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -9, 60.3 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -9, 60.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -9.2, 60.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -9.2, 60.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 21.5, 62.5 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 21.5, 62.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 44.8, 25.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 44.8, 25.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 89.2, 55 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 89.2, 55 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 67.4, 67.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 67.4, 67.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 85.9, 22.9 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 85.9, 22.9 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 139.7, 63.4 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 139.7, 63.4 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 153, 25.4 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 153, 25.4 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 146.3, 45.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 146.3, 45.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 158.1, 65.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 158.1, 65.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 169.2, 46.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 169.2, 46.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 159, 46.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 159, 46.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 189.3, 47.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 189.3, 47.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 209.8, 59.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 209.8, 59.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 206.5, 48.1 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 206.5, 48.1 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 205, 39.4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 205, 39.4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 220.8, 48.7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 220.8, 48.7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 226.9, 58 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 226.9, 58 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 232.3, 49.3 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 232.3, 49.3 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 234.4, 49.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 234.4, 49.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 240.9, 49.6 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 240.9, 49.6 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 241.5, 52.3 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 241.5, 52.3 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 246.6, 49.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 246.6, 49.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 248.4, 50 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 248.4, 50 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 249.5, 50 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 249.5, 50 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 249.8, 50.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 249.8, 50.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 313.3, 87.3 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 313.3, 87.3 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 334.1, 38.8 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 334.1, 38.8 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 291.4, 96.5 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 291.4, 96.5 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 301.8, 52.1 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 301.8, 52.1 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 332.2, 77.6 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 332.2, 77.6 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 338.5, 97.7 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 338.5, 97.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 343.9, 81.4 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 343.9, 81.4 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 365, 83 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 365, 83 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 352.4, 84.3 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 352.4, 84.3 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 344.5, 96.7 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 344.5, 96.7 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 358.6, 86.4 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 358.6, 86.4 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 354.8, 81 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 354.8, 81 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 362.9, 87.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 362.9, 87.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 364.3, 82.1 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 364.3, 82.1 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 365.3, 88.6 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 365.3, 88.6 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 362.6, 88.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 362.6, 88.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 366.1, 88.9 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 366.1, 88.9 , 0 );

setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.28, 1.28 );

setRotateKey( spep_2 + 120 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -22.6 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, -22.6 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -17.7 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -17.7 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -12.7 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -12.7 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -12.1 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -12.1 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -9.9 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, -9.9 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -9.4 );

-- ** 音 ** --

--気弾発射
SE010 = playSeVer2( spep_2 + 48, 1021, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 50, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE011, 141 );
SE012 = playSeVer2( spep_2 + 82, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE012, 141 );
SE013 = playSeVer2( spep_2 + 82, 1021, "", 0, 0, 0, -1);

--気弾飛んでいく
SE014 = playSeVer2( spep_2 + 114, 1177, "",spep_2 + 220, 0, 26, -1);
SE015 = playSeVer2( spep_2 + 114, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 114, SE015, 79 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 140; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
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

--敵ヒット
SE016 = playSeVer2( spep_2 + 140, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 140, SE016, 130 );

--気弾飛んでいく
SE017 = playSeVer2( spep_2 + 180, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 180, SE017, 79 );

--敵ヒット２
SE018 = playSeVer2( spep_2 + 192, 1011, "", 0, 0, 0, -1);

--正面気弾溜め
SE019 = playSeVer2( spep_2 + 244, 1191, "",spep_2 + 292, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 244, SE019, 174 );
SE020 = playSeVer2( spep_2 + 244, 1262, "",spep_2 + 294, 0, 20, -1);
SE021 = playSeVer2( spep_2 + 244, 1281, "",spep_2 + 292, 0, 18, -1);
SE022 = playSeVer2( spep_2 + 268, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 268, SE022, 168 );

--気弾発射
SE023 = playSeVer2( spep_2 + 268, 1145, "",spep_2 + 382, 0, 54, -1);

--爆発
SE024 = playSeVer2( spep_2 + 304, 1024, "",spep_2 + 384, 0, 56, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2; --316F

-------------------------------------------------
-- ガッ
-------------------------------------------------
MAX_FRAME_3 = 136;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0); -- ガッ(ef_003)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_3 + MAX_FRAME_3, finish_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_3 + MAX_FRAME_3, finish_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, finish_f, 0);
setEffRotateKey( spep_3 + MAX_FRAME_3, finish_f, 0);
setEffAlphaKey( spep_3 + 0, finish_f, 255);
setEffAlphaKey( spep_3 + MAX_FRAME_3, finish_f, 255);

finish_b = entryEffect( spep_3 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- ガッ(ef_003b)
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_3 + MAX_FRAME_3, finish_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_3 + MAX_FRAME_3, finish_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, finish_b, 0);
setEffRotateKey( spep_3 + MAX_FRAME_3, finish_b, 0);
setEffAlphaKey( spep_3 + 0, finish_b, 255);
setEffAlphaKey( spep_3 + MAX_FRAME_3, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --

setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, -5, -23 , 0 );
setMoveKey( spep_3 + 2 + OFFSET_X, 1, -2.8, -25.7 , 0 );
setMoveKey( spep_3 + 3 + OFFSET_X, 1, -2.8, -25.7 , 0 );
setMoveKey( spep_3 + 4 + OFFSET_X, 1, -0.2, -29.1 , 0 );
setMoveKey( spep_3 + 5 + OFFSET_X, 1, -0.2, -29.1 , 0 );
setMoveKey( spep_3 + 6 + OFFSET_X, 1, 2.9, -33 , 0 );
setMoveKey( spep_3 + 7 + OFFSET_X, 1, 2.9, -33 , 0 );
setMoveKey( spep_3 + 8 + OFFSET_X, 1, 6.5, -37.5 , 0 );
setMoveKey( spep_3 + 9 + OFFSET_X, 1, 6.5, -37.5 , 0 );
setMoveKey( spep_3 + 10 + OFFSET_X, 1, 10.5, -42.6 , 0 );
setMoveKey( spep_3 + 11 + OFFSET_X, 1, 10.5, -42.6 , 0 );
setMoveKey( spep_3 + 12 + OFFSET_X, 1, 14.8, -48.2 , 0 );
setMoveKey( spep_3 + 13 + OFFSET_X, 1, 14.8, -48.2 , 0 );
setMoveKey( spep_3 + 14 + OFFSET_X, 1, 19.8, -54.2 , 0 );
setMoveKey( spep_3 + 15 + OFFSET_X, 1, 19.8, -54.2 , 0 );
setMoveKey( spep_3 + 16 + OFFSET_X, 1, 25, -61.1 , 0 );
setMoveKey( spep_3 + 17 + OFFSET_X, 1, 25, -61.1 , 0 );
setMoveKey( spep_3 + 18 + OFFSET_X, 1, 30.8, -68.1 , 0 );
setMoveKey( spep_3 + 138 + OFFSET_X, 1, 30.8, -68.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.37, 0.37 );
setScaleKey( spep_3 + 2 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_3 + 3 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_3 + 4 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 5 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 6 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 7 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 8 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 9 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 10 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 11 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 12 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 13 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 14 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 15 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 16 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 17 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 18 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 19 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 20 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 21 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 22 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 23 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 24 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 25 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 26 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 27 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 28 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 29 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 30 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 31 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 32 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 33 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 34 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 35 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 36 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 138 + OFFSET_X, 1, 1.59, 1.59 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 1 + OFFSET_X, 1, 0 );
setRotateKey( spep_3 + 2 + OFFSET_X, 1, 66.8 );
setRotateKey( spep_3 + 3 + OFFSET_X, 1, 66.8 );
setRotateKey( spep_3 + 4 + OFFSET_X, 1, 146.9 );
setRotateKey( spep_3 + 5 + OFFSET_X, 1, 146.9 );
setRotateKey( spep_3 + 6 + OFFSET_X, 1, 240.3 );
setRotateKey( spep_3 + 7 + OFFSET_X, 1, 240.3 );
setRotateKey( spep_3 + 8 + OFFSET_X, 1, 347.1 );
setRotateKey( spep_3 + 9 + OFFSET_X, 1, 347.1 );
setRotateKey( spep_3 + 10 + OFFSET_X, 1, 467.3 );
setRotateKey( spep_3 + 11 + OFFSET_X, 1, 467.3 );
setRotateKey( spep_3 + 12 + OFFSET_X, 1, 600.8 );
setRotateKey( spep_3 + 13 + OFFSET_X, 1, 600.8 );
setRotateKey( spep_3 + 14 + OFFSET_X, 1, 747.7 );
setRotateKey( spep_3 + 15 + OFFSET_X, 1, 747.7 );
setRotateKey( spep_3 + 16 + OFFSET_X, 1, 907.9 );
setRotateKey( spep_3 + 17 + OFFSET_X, 1, 907.9 );
setRotateKey( spep_3 + 18 + OFFSET_X, 1, 1081.5 );
setRotateKey( spep_3 + 138 + OFFSET_X, 1, 1081.5 );

-- ** 音 ** --

--画面割れる
SE025 = playSeVer2( spep_3 + 4, 1054, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_3 + 4, 1025, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 18); -- ダメージ表示フレーム
endPhase( spep_3 + MAX_FRAME_3 -2); --134F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開始　セリフカットイン
-------------------------------------------------
MAX_FRAME_0 = 120;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開始　セリフカットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 10;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 138, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--腕あげる
SE002 = playSeVer2( spep_0 + 4, 1189, "", 0, 0, 0, -1);

--腕あげる
SE004 = playSeVer2( spep_0 + 10, 1003, "", 0, 0, 0, -1);

--指さす
SE005 = playSeVer2( spep_0 + 40, 1012, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --120F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--気弾溜め
SE007 = playSeVer2( spep_1 + 80, 1191, "",spep_1 + 158, 0, 30, -1);
setSeVolumeByWorkId( spep_1 + 80, SE007, 141 );
SE008 = playSeVer2( spep_1 + 80, 1248, "",spep_1 + 170, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 80, SE008, 71 );
SE009 = playSeVer2( spep_1 + 80, 1281, "",spep_1 + 166, 0, 20, -1);
setSeVolumeByWorkId( spep_1 + 80, SE009, 58 );

-------------------------------------------------
-- ビーム発射
-------------------------------------------------
MAX_FRAME_2 = 316;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ビーム発射(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ビーム発射(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 120 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 240 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 120 + OFFSET_X, 1, 118 );
changeAnime( spep_2 + 156 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 120 + OFFSET_X, 1, -6.7, 60.3 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -6.7, 60.3 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -6.8, 60.3 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -6.8, 60.3 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -7, 60.3 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -7, 60.3 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -7.1, 60.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -7.1, 60.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -7.3, 60.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -7.3, 60.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -7.4, 60.3 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -7.4, 60.3 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -7.6, 60.3 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -7.6, 60.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -7.7, 60.3 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -7.7, 60.3 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -7.9, 60.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -7.9, 60.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -8, 60.3 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -8, 60.3 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -8.1, 60.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -8.1, 60.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -8.3, 60.3 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -8.3, 60.3 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -8.4, 60.3 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -8.4, 60.3 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -8.6, 60.3 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -8.6, 60.3 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -8.7, 60.3 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -8.7, 60.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -8.9, 60.3 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -8.9, 60.3 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -9, 60.3 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -9, 60.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -9.2, 60.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -9.2, 60.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 21.5, 62.5 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 21.5, 62.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 44.8, 25.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 44.8, 25.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 89.2, 55 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 89.2, 55 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 67.4, 67.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 67.4, 67.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 85.9, 22.9 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 85.9, 22.9 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 139.7, 63.4 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 139.7, 63.4 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 153, 25.4 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 153, 25.4 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 146.3, 45.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 146.3, 45.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 158.1, 65.2 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 158.1, 65.2 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 169.2, 46.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 169.2, 46.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 159, 46.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 159, 46.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 189.3, 47.3 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 189.3, 47.3 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 209.8, 59.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 209.8, 59.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 206.5, 48.1 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 206.5, 48.1 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 205, 39.4 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 205, 39.4 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 220.8, 48.7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 220.8, 48.7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 226.9, 58 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 226.9, 58 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 232.3, 49.3 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 232.3, 49.3 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 234.4, 49.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 234.4, 49.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 240.9, 49.6 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 240.9, 49.6 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 241.5, 52.3 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 241.5, 52.3 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 246.6, 49.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 246.6, 49.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 248.4, 50 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 248.4, 50 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 249.5, 50 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 249.5, 50 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 249.8, 50.1 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 249.8, 50.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 313.3, 87.3 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 313.3, 87.3 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 334.1, 38.8 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 334.1, 38.8 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 291.4, 96.5 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 291.4, 96.5 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 301.8, 52.1 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 301.8, 52.1 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 332.2, 77.6 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 332.2, 77.6 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 338.5, 97.7 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 338.5, 97.7 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 343.9, 81.4 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 343.9, 81.4 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 365, 83 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 365, 83 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 352.4, 84.3 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 352.4, 84.3 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 344.5, 96.7 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 344.5, 96.7 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 358.6, 86.4 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 358.6, 86.4 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 354.8, 81 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 354.8, 81 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 362.9, 87.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 362.9, 87.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 364.3, 82.1 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 364.3, 82.1 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 365.3, 88.6 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 365.3, 88.6 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 362.6, 88.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 362.6, 88.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 366.1, 88.9 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 366.1, 88.9 , 0 );

setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.28, 1.28 );

setRotateKey( spep_2 + 120 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -22.6 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, -22.6 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -21.5 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -20.5 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -17.7 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -17.7 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -12.7 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -12.7 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -12.1 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -12.1 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -9.9 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, -9.9 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -9.4 );

-- ** 音 ** --

--気弾発射
SE010 = playSeVer2( spep_2 + 48, 1021, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 50, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE011, 141 );
SE012 = playSeVer2( spep_2 + 82, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE012, 141 );
SE013 = playSeVer2( spep_2 + 82, 1021, "", 0, 0, 0, -1);

--気弾飛んでいく
SE014 = playSeVer2( spep_2 + 114, 1177, "",spep_2 + 220, 0, 26, -1);
SE015 = playSeVer2( spep_2 + 114, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 114, SE015, 79 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 140; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
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

--敵ヒット
SE016 = playSeVer2( spep_2 + 140, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 140, SE016, 130 );

--気弾飛んでいく
SE017 = playSeVer2( spep_2 + 180, 1130, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 180, SE017, 79 );

--敵ヒット２
SE018 = playSeVer2( spep_2 + 192, 1011, "", 0, 0, 0, -1);

--正面気弾溜め
SE019 = playSeVer2( spep_2 + 244, 1191, "",spep_2 + 292, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 244, SE019, 174 );
SE020 = playSeVer2( spep_2 + 244, 1262, "",spep_2 + 294, 0, 20, -1);
SE021 = playSeVer2( spep_2 + 244, 1281, "",spep_2 + 292, 0, 18, -1);
SE022 = playSeVer2( spep_2 + 268, 1401, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 268, SE022, 168 );

--気弾発射
SE023 = playSeVer2( spep_2 + 268, 1145, "",spep_2 + 382, 0, 54, -1);

--爆発
SE024 = playSeVer2( spep_2 + 304, 1024, "",spep_2 + 384, 0, 56, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + MAX_FRAME_2; --316F

-------------------------------------------------
-- ガッ
-------------------------------------------------
MAX_FRAME_3 = 136;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0); -- ガッ(ef_003)
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_3 + MAX_FRAME_3, finish_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_3 + MAX_FRAME_3, finish_f, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, finish_f, 0);
setEffRotateKey( spep_3 + MAX_FRAME_3, finish_f, 0);
setEffAlphaKey( spep_3 + 0, finish_f, 255);
setEffAlphaKey( spep_3 + MAX_FRAME_3, finish_f, 255);

finish_b = entryEffect( spep_3 + 0, SP_03b, 0x80, -1, 0, 0, 0); -- ガッ(ef_003b)
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_3 + MAX_FRAME_3, finish_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_3 + MAX_FRAME_3, finish_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, finish_b, 0);
setEffRotateKey( spep_3 + MAX_FRAME_3, finish_b, 0);
setEffAlphaKey( spep_3 + 0, finish_b, 255);
setEffAlphaKey( spep_3 + MAX_FRAME_3, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, MAX_FRAME_3 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --

setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, -5, -23 , 0 );
setMoveKey( spep_3 + 2 + OFFSET_X, 1, -2.8, -25.7 , 0 );
setMoveKey( spep_3 + 3 + OFFSET_X, 1, -2.8, -25.7 , 0 );
setMoveKey( spep_3 + 4 + OFFSET_X, 1, -0.2, -29.1 , 0 );
setMoveKey( spep_3 + 5 + OFFSET_X, 1, -0.2, -29.1 , 0 );
setMoveKey( spep_3 + 6 + OFFSET_X, 1, 2.9, -33 , 0 );
setMoveKey( spep_3 + 7 + OFFSET_X, 1, 2.9, -33 , 0 );
setMoveKey( spep_3 + 8 + OFFSET_X, 1, 6.5, -37.5 , 0 );
setMoveKey( spep_3 + 9 + OFFSET_X, 1, 6.5, -37.5 , 0 );
setMoveKey( spep_3 + 10 + OFFSET_X, 1, 10.5, -42.6 , 0 );
setMoveKey( spep_3 + 11 + OFFSET_X, 1, 10.5, -42.6 , 0 );
setMoveKey( spep_3 + 12 + OFFSET_X, 1, 14.8, -48.2 , 0 );
setMoveKey( spep_3 + 13 + OFFSET_X, 1, 14.8, -48.2 , 0 );
setMoveKey( spep_3 + 14 + OFFSET_X, 1, 19.8, -54.2 , 0 );
setMoveKey( spep_3 + 15 + OFFSET_X, 1, 19.8, -54.2 , 0 );
setMoveKey( spep_3 + 16 + OFFSET_X, 1, 25, -61.1 , 0 );
setMoveKey( spep_3 + 17 + OFFSET_X, 1, 25, -61.1 , 0 );
setMoveKey( spep_3 + 18 + OFFSET_X, 1, 30.8, -68.1 , 0 );
setMoveKey( spep_3 + 138 + OFFSET_X, 1, 30.8, -68.1 , 0 );

setScaleKey( spep_3 + 0, 1, 0.37, 0.37 );
setScaleKey( spep_3 + 2 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_3 + 3 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_3 + 4 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 5 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_3 + 6 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 7 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_3 + 8 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 9 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 10 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 11 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_3 + 12 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 13 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_3 + 14 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 15 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_3 + 16 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 17 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_3 + 18 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 19 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 20 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 21 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 22 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 23 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 24 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 25 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 26 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 27 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 28 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 29 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 30 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 31 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 32 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 33 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 34 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 35 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_3 + 36 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_3 + 138 + OFFSET_X, 1, 1.59, 1.59 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 1 + OFFSET_X, 1, 0 );
setRotateKey( spep_3 + 2 + OFFSET_X, 1, 66.8 );
setRotateKey( spep_3 + 3 + OFFSET_X, 1, 66.8 );
setRotateKey( spep_3 + 4 + OFFSET_X, 1, 146.9 );
setRotateKey( spep_3 + 5 + OFFSET_X, 1, 146.9 );
setRotateKey( spep_3 + 6 + OFFSET_X, 1, 240.3 );
setRotateKey( spep_3 + 7 + OFFSET_X, 1, 240.3 );
setRotateKey( spep_3 + 8 + OFFSET_X, 1, 347.1 );
setRotateKey( spep_3 + 9 + OFFSET_X, 1, 347.1 );
setRotateKey( spep_3 + 10 + OFFSET_X, 1, 467.3 );
setRotateKey( spep_3 + 11 + OFFSET_X, 1, 467.3 );
setRotateKey( spep_3 + 12 + OFFSET_X, 1, 600.8 );
setRotateKey( spep_3 + 13 + OFFSET_X, 1, 600.8 );
setRotateKey( spep_3 + 14 + OFFSET_X, 1, 747.7 );
setRotateKey( spep_3 + 15 + OFFSET_X, 1, 747.7 );
setRotateKey( spep_3 + 16 + OFFSET_X, 1, 907.9 );
setRotateKey( spep_3 + 17 + OFFSET_X, 1, 907.9 );
setRotateKey( spep_3 + 18 + OFFSET_X, 1, 1081.5 );
setRotateKey( spep_3 + 138 + OFFSET_X, 1, 1081.5 );

-- ** 音 ** --

--画面割れる
SE025 = playSeVer2( spep_3 + 4, 1054, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_3 + 4, 1025, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 18); -- ダメージ表示フレーム
endPhase( spep_3 + MAX_FRAME_3 -2); --134F

end
