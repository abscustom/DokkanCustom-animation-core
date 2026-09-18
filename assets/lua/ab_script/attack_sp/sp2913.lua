--1031750:UR_ベジータ_必殺技：アメイジングインパクト
--sp_effect_b4_00396
--sp2913

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 164059;  -- 開幕〜カットイン ef_001
SP_02 = 164060;  -- ベジータがジャケットを脱いで～フィニッシュまで ef_002
SP_02b = 164061;  -- ベジータがジャケットを脱いで～フィニッシュまで ef_002b


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

ENABLE_AUTO_TIME_STRETCH(0.84);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕〜カットイン
-------------------------------------------------
MAX_FRAME_0 = 132;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕〜カットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 12;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 75, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 75, 515.5 , 0 );
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

--風吹き荒ぶ
SE001 = playSeVer2( spep_0 + 0, 1314, "",spep_0 + 144, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 60 );
SE002 = playSeVer2( spep_0 + 0, 1331, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;--132F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--風吹き荒ぶ
SE005 = playSeVer2( spep_1 + 82, 1278, "",spep_1 + 286, 0, 90, -1);
setSeVolumeByWorkId( spep_1 + 82, SE005, 55 );
SE006 = playSeVer2( spep_1 + 82, 1314, "",spep_1 + 236, 0, 34, -1);
setSeVolumeByWorkId( spep_1 + 82, SE006, 37 );

-------------------------------------------------
-- ベジータがジャケットを脱いで～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 760;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ベジータがジャケットを脱いで～フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ベジータがジャケットを脱いで～フィニッシュまで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_2 + 110 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 318 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 110 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 200 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 208 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 238 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 296 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 110 + OFFSET_X, 1, 267.7, 27.2 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 267.7, 27.2 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 227.7, -12.8 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 227.7, -12.8 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 294.2, 15.1 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 294.2, 15.1 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 247.7, -3.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 247.7, -3.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 279.9, 22 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 279.9, 22 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 220.2, -13 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 220.2, -13 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 245.1, 17.4 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 245.1, 17.4 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 257.7, -2.8 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 257.7, -2.8 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 267.7, 27.2 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 267.7, 27.2 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 227.7, -12.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 227.7, -12.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 237.7, 17.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 237.7, 17.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 257.7, -2.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 257.7, -2.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 255.7, 15.2 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 255.7, 15.2 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 241.7, 1.2 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 241.7, 1.2 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 241.7, 13.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 241.7, 13.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 251.7, 3.2 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 251.7, 3.2 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 249.7, 9.2 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 249.7, 9.2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 245.7, 5.2 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 245.7, 5.2 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 247.7, 9.2 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 247.7, 9.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 247.7, 5.2 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 247.7, 5.2 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 247.7, 7.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 247.7, 7.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 244.7, 4.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 244.7, 4.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 242.1, 1.2 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 242.1, 1.2 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 242.6, 7.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 242.6, 7.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 244.4, 13.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 244.4, 13.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 258.9, 3.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 258.9, 3.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 267.5, 8.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 267.5, 8.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 278.8, 13.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 278.8, 13.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 292.9, 18.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 292.9, 18.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 291.6, 5.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 291.6, 5.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 301.6, 12.1 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 301.6, 12.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 308.8, 18.7 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 308.8, 18.7 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 318.4, 14.1 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 318.4, 14.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 325.2, 9.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 325.2, 9.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 320.6, 14.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 320.6, 14.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 316.1, 19.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 316.1, 19.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 319.5, 16.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 319.5, 16.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 323, 13.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 323, 13.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 323.5, 13.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 323.5, 13.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 323.9, 13.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 323.9, 13.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 324.4, 13.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 324.4, 13.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 324.8, 13.2 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 324.8, 13.2 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 325.3, 13.2 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 325.3, 13.2 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 325.7, 13.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 325.7, 13.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 8.5, -83.4 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 8.5, -83.4 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 55.4, -59.9 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 55.4, -59.9 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 51.4, -127.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 51.4, -127.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 65.4, 82.1 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 65.4, 82.1 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 87.1, -122.6 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 87.1, -122.6 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 39.3, 82.1 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 39.3, 82.1 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 91.4, -67.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 91.4, -67.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 61.4, 16.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 61.4, 16.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 51.4, -47.9 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 51.4, -47.9 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 91.4, -127.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 91.4, -127.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 61.4, -77.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 61.4, -77.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 81.4, -97.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 81.4, -97.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 91.4, -67.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 91.4, -67.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 51.4, -107.9 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 51.4, -107.9 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 61.4, -77.9 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 61.4, -77.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 71.4, -87.9 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 71.4, -87.9 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 155.6, 112.2 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 155.6, 112.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 162.8, 112.4 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 162.8, 112.4 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 170.3, 112.6 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 170.3, 112.6 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 178.5, 113.6 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 178.5, 113.6 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 177.5, 112.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 177.5, 112.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 176.5, 112.1 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 176.5, 112.1 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 175.7, 111.6 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 175.7, 111.6 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 175.1, 111.1 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 175.1, 111.1 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 174.6, 110.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 174.6, 110.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 174.2, 110.7 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 174.2, 110.7 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 173.9, 110.6 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 173.9, 110.6 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 173.7, 110.7 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 173.7, 110.7 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 173.6, 110.7 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 173.6, 110.7 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 173.6, 110.9 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 173.6, 110.9 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 173.5, 111.1 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 173.5, 111.1 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 173.6, 111.3 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 173.6, 111.3 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 173.7, 111.5 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 173.7, 111.5 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 173.7, 111.7 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 173.7, 111.7 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -21.2, -100.8 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -21.2, -100.8 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -98.5, -107.3 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -98.5, -107.3 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -156.9, -109.8 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -156.9, -109.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -195.2, -107.9 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -195.2, -107.9 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -212.8, -101.3 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -212.8, -101.3 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -209.5, -90 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -209.5, -90 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -185.6, -74 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -185.6, -74 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -141.5, -53.6 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -141.5, -53.6 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -78.5, -29.1 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -78.5, -29.1 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -2, -1.1 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -2, -1.1 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -45.7, 47.7 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -45.7, 47.7 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -88.4, 95.4 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -88.4, 95.4 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -15.7, 61.8 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -15.7, 61.8 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -23.6, 96.7 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -23.6, 96.7 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -45.7, 75.8 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -45.7, 75.8 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -36.7, 274.5 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -36.7, 274.5 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -16.2, 425.8 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -16.2, 425.8 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -6.5, 634.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -6.5, 634.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -46.8, 773.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -46.8, 773.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -37.1, 982.8 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -37.1, 982.8 , 0 );

setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 15.32, 15.32 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 15.32, 15.32 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 11.13, 11.13 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 11.13, 11.13 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 10.46, 10.46 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 10.46, 10.46 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 11.13, 11.13 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 11.13, 11.13 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 1.8, 1.8 );

setRotateKey( spep_2 + 110 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, 26.2 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, 26.2 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, 26.1 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, 26.1 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 29.6 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 29.6 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 40.6 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 40.6 );

--敵の動き2

setDisp( spep_2 + 334 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 448 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 334 + OFFSET_X, 1, 443.7, -436 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 443.7, -436 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 349.6, -339.4 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 349.6, -339.4 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 255.5, -242.7 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 255.5, -242.7 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 161.3, -146 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 161.3, -146 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 67.2, -49.3 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 67.2, -49.3 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, -27, 47.4 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -27, 47.4 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -121.2, 144.1 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -121.2, 144.1 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -135.6, 158.9 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -135.6, 158.9 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -148.7, 172.5 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -148.7, 172.5 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -160.6, 184.7 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -160.6, 184.7 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -171.2, 195.6 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -171.2, 195.6 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -172.1, 196.5 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -172.1, 196.5 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -172.9, 197.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -172.9, 197.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, -173.8, 198.3 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, -173.8, 198.3 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, -174.6, 199.2 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -174.6, 199.2 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -175.4, 200 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -175.4, 200 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -176.1, 200.7 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -176.1, 200.7 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -176.9, 201.5 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -176.9, 201.5 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -177.6, 202.2 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -177.6, 202.2 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -178.2, 202.9 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -178.2, 202.9 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -178.9, 203.6 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -178.9, 203.6 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -179.5, 204.2 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -179.5, 204.2 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -180.1, 204.8 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -180.1, 204.8 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -180.6, 205.4 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -180.6, 205.4 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -181.2, 205.9 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -181.2, 205.9 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -181.7, 206.4 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -181.7, 206.4 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -182.1, 206.9 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -182.1, 206.9 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -182.6, 207.4 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -182.6, 207.4 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -183, 207.8 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -183, 207.8 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -183.4, 208.2 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -183.4, 208.2 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -183.7, 208.5 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -183.7, 208.5 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -184, 208.9 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -184, 208.9 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -184.3, 209.1 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -184.3, 209.1 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 127.9, -78.4 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 127.9, -78.4 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 176.1, -119.6 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 176.1, -119.6 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 212.1, -150.8 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 212.1, -150.8 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 233.7, -170.3 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 233.7, -170.3 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 241.3, -178.2 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 241.3, -178.2 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 237, -176.2 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 237, -176.2 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 223.7, -166.7 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 223.7, -166.7 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 204.4, -152 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 204.4, -152 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 181.5, -134.2 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 181.5, -134.2 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 157.2, -115.2 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 157.2, -115.2 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 159.1, -117.2 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 159.1, -117.2 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 158.8, -117.3 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 158.8, -117.3 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 154.1, -113.5 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 154.1, -113.5 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 149.5, -109.8 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 149.5, -109.8 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 144.8, -106.1 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 144.8, -106.1 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 140.4, -102.5 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 140.4, -102.5 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 135.9, -98.9 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 135.9, -98.9 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 131.5, -95.4 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 131.5, -95.4 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 127.3, -92 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 127.3, -92 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 123.2, -88.6 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 123.2, -88.6 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 119.1, -85.3 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 119.1, -85.3 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 115.1, -82.1 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 115.1, -82.1 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 111.5, -79.6 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 111.5, -79.6 , 0 );

setScaleKey( spep_2 + 334 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 4.02, 4.02 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 4.02, 4.02 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 4.57, 4.57 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 4.57, 4.57 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_2 + 419 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_2 + 420 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 423 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 4.02, 4.02 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 4.02, 4.02 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 3.83, 3.83 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 3.83, 3.83 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 3.72, 3.72 );

setRotateKey( spep_2 + 334 + OFFSET_X, 1, 40.7 );
setRotateKey( spep_2 + 401 + OFFSET_X, 1, 40.7 );
setRotateKey( spep_2 + 402 + OFFSET_X, 1, 40.6 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, 40.6 );

--敵の動き3

setDisp( spep_2 + 474 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 540 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 474 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 490 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 524 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 474 + OFFSET_X, 1, -116.9, -168.5 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, -116.9, -168.5 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -96.9, -452.6 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, -96.9, -452.6 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -231.1, -158.7 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, -231.1, -158.7 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -185.1, -288.7 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, -185.1, -288.7 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -235.1, 25.4 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, -235.1, 25.4 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -203.1, -206.6 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, -203.1, -206.6 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 28.9, -15.2 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 28.9, -15.2 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -15.9, -123.9 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -15.9, -123.9 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -20.9, -13.1 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, -20.9, -13.1 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 13.9, -63.6 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 13.9, -63.6 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, -14.7, -18.4 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, -14.7, -18.4 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, -14, -3.4 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, -14, -3.4 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, -13.8, 1.3 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, -13.8, 1.3 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, -12.4, 4.9 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, -12.4, 4.9 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, -8.9, 9.2 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, -8.9, 9.2 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, -7.1, 9 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, -7.1, 9 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, -5.8, 8.7 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, -5.8, 8.7 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, -5, 8.5 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, -5, 8.5 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, -4.5, 8.4 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, -4.5, 8.4 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, -4.4, 8.3 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, -4.4, 8.3 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 14.8, 531.8 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 14.8, 531.8 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 14.8, 570.9 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 14.8, 570.9 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 14.8, 588.7 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 14.8, 588.7 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 14.8, 574.3 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 14.8, 574.3 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 14.8, 516.8 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 14.8, 516.8 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 14.8, 405 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 14.8, 405 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 14.8, 228 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, 14.8, 228 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 14.8, -25.2 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 14.8, -25.2 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 8.8, -345.6 , 0 );

setScaleKey( spep_2 + 474 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 481 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 482 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 489 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 490 + OFFSET_X, 1, 6.08, 6.08 );
setScaleKey( spep_2 + 491 + OFFSET_X, 1, 6.08, 6.08 );
setScaleKey( spep_2 + 492 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_2 + 493 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_2 + 494 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 495 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 496 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 497 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 498 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 501 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 502 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 503 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 504 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 505 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 506 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 509 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 510 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 511 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 512 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 513 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 514 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 515 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 516 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 517 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 518 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 519 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 520 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 523 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 540 + OFFSET_X, 1, 0.26, 0.26 );

setRotateKey( spep_2 + 474 + OFFSET_X, 1, -45.6 );
setRotateKey( spep_2 + 489 + OFFSET_X, 1, -45.6 );
setRotateKey( spep_2 + 490 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_2 + 491 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_2 + 492 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_2 + 493 + OFFSET_X, 1, 19.8 );
setRotateKey( spep_2 + 494 + OFFSET_X, 1, 25.2 );
setRotateKey( spep_2 + 495 + OFFSET_X, 1, 25.2 );
setRotateKey( spep_2 + 496 + OFFSET_X, 1, 30.3 );
setRotateKey( spep_2 + 497 + OFFSET_X, 1, 30.3 );
setRotateKey( spep_2 + 498 + OFFSET_X, 1, 54.7 );
setRotateKey( spep_2 + 501 + OFFSET_X, 1, 54.7 );
setRotateKey( spep_2 + 502 + OFFSET_X, 1, 99.7 );
setRotateKey( spep_2 + 503 + OFFSET_X, 1, 99.7 );
setRotateKey( spep_2 + 504 + OFFSET_X, 1, 118.7 );
setRotateKey( spep_2 + 505 + OFFSET_X, 1, 118.7 );
setRotateKey( spep_2 + 506 + OFFSET_X, 1, 134.8 );
setRotateKey( spep_2 + 509 + OFFSET_X, 1, 134.8 );
setRotateKey( spep_2 + 510 + OFFSET_X, 1, 158.4 );
setRotateKey( spep_2 + 511 + OFFSET_X, 1, 158.4 );
setRotateKey( spep_2 + 512 + OFFSET_X, 1, 166.6 );
setRotateKey( spep_2 + 513 + OFFSET_X, 1, 166.6 );
setRotateKey( spep_2 + 514 + OFFSET_X, 1, 172.8 );
setRotateKey( spep_2 + 515 + OFFSET_X, 1, 172.8 );
setRotateKey( spep_2 + 516 + OFFSET_X, 1, 177.4 );
setRotateKey( spep_2 + 517 + OFFSET_X, 1, 177.4 );
setRotateKey( spep_2 + 518 + OFFSET_X, 1, 180.6 );
setRotateKey( spep_2 + 519 + OFFSET_X, 1, 180.6 );
setRotateKey( spep_2 + 520 + OFFSET_X, 1, 182.5 );
setRotateKey( spep_2 + 523 + OFFSET_X, 1, 182.5 );
setRotateKey( spep_2 + 524 + OFFSET_X, 1, -126.3 );
setRotateKey( spep_2 + 540 + OFFSET_X, 1, -126.3 );

-- ** 音 ** --

--服脱ぎ捨てる
SE007 = playSeVer2( spep_2 + 50, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE007, 184 );
SE008 = playSeVer2( spep_2 + 58, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE008, 65 );

--振りかぶる
SE009 = playSeVer2( spep_2 + 76, 1116, "",spep_2 + 122, 0, 26, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 90; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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

--パンチ
SE010 = playSeVer2( spep_2 + 102, 1359, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 102, 1187, "", 0, 0, 0, -1);

--翻る
SE012 = playSeVer2( spep_2 + 154, 1192, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 154, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 154, SE013, 81 );
SE014 = playSeVer2( spep_2 + 160, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 160, SE014, 126 );

--両足蹴り
SE015 = playSeVer2( spep_2 + 190, 1003, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 196, 1187, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 196, 1153, "", 0, 0, 0, -1);

--敵飛んでいく
SE018 = playSeVer2( spep_2 + 218, 1121, "",spep_2 + 342, 0, 92, -1);
SE023 = playSeVer2( spep_2 + 314, 1121, "",spep_2 + 508, 0, 162, -1);
setPitch( spep_2 + 318, SE023, 300 );
setTimeStretch( SE023, 1.2, 30, 4 );

--瞬間移動
SE019 = playSeVer2( spep_2 + 272, 1109, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 404, 1109, "", 0, 0, 0, -1);

--蹴り上げる
SE020 = playSeVer2( spep_2 + 294, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 294, SE020, 84 );
SE021 = playSeVer2( spep_2 + 296, 1010, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 298, 1110, "", 0, 0, 0, -1);

--叩き落とす
SE025 = playSeVer2( spep_2 + 464, 1189, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 472, 1123, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 476, 1414, "", 0, 0, 0, -1);

--敵落ちていく
SE028 = playSeVer2( spep_2 + 480, 1304, "",spep_2 + 576, 0, 36, -1);
SE029 = playSeVer2( spep_2 + 514, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 514, SE029, 158 );

--地面激突
SE030 = playSeVer2( spep_2 + 542, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 552); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 758F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕〜カットイン
-------------------------------------------------
MAX_FRAME_0 = 132;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕〜カットイン(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 12;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 75, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 75, 515.5 , 0 );
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

-- ** 音 ** --

--風吹き荒ぶ
SE001 = playSeVer2( spep_0 + 0, 1314, "",spep_0 + 144, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 60 );
SE002 = playSeVer2( spep_0 + 0, 1331, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --132F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--風吹き荒ぶ
SE005 = playSeVer2( spep_1 + 82, 1278, "",spep_1 + 286, 0, 90, -1);
setSeVolumeByWorkId( spep_1 + 82, SE005, 55 );
SE006 = playSeVer2( spep_1 + 82, 1314, "",spep_1 + 236, 0, 34, -1);
setSeVolumeByWorkId( spep_1 + 82, SE006, 37 );

-------------------------------------------------
-- ベジータがジャケットを脱いで～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 760;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ベジータがジャケットを脱いで～フィニッシュまで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ベジータがジャケットを脱いで～フィニッシュまで(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

--敵の動き1

setDisp( spep_2 + 110 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 318 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 110 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 200 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 208 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 238 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 296 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 110 + OFFSET_X, 1, -267.7, 27.2 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -267.7, 27.2 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -227.7, -12.8 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -227.7, -12.8 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -294.2, 15.1 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -294.2, 15.1 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -247.7, -3.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -247.7, -3.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -279.9, 22 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -279.9, 22 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -220.2, -13 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -220.2, -13 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -245.1, 17.4 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -245.1, 17.4 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -257.7, -2.8 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -257.7, -2.8 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -267.7, 27.2 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -267.7, 27.2 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -227.7, -12.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -227.7, -12.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -237.7, 17.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -237.7, 17.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -257.7, -2.8 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -257.7, -2.8 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -255.7, 15.2 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -255.7, 15.2 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -241.7, 1.2 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -241.7, 1.2 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -241.7, 13.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -241.7, 13.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -251.7, 3.2 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -251.7, 3.2 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -249.7, 9.2 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -249.7, 9.2 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -245.7, 5.2 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -245.7, 5.2 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -247.7, 9.2 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -247.7, 9.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -247.7, 5.2 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -247.7, 5.2 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -247.7, 7.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -247.7, 7.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -244.7, 4.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -244.7, 4.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -242.1, 1.2 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -242.1, 1.2 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -242.6, 7.2 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -242.6, 7.2 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -244.4, 13.3 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -244.4, 13.3 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -258.9, 3.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -258.9, 3.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -267.5, 8.3 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -267.5, 8.3 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -278.8, 13.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -278.8, 13.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -292.9, 18.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -292.9, 18.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -291.6, 5.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -291.6, 5.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -301.6, 12.1 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -301.6, 12.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -308.8, 18.7 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -308.8, 18.7 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -318.4, 14.1 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -318.4, 14.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -325.2, 9.2 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -325.2, 9.2 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -320.6, 14.2 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -320.6, 14.2 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -316.1, 19.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -316.1, 19.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -319.5, 16.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -319.5, 16.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -323, 13.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -323, 13.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -323.5, 13.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -323.5, 13.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -323.9, 13.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -323.9, 13.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -324.4, 13.2 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -324.4, 13.2 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -324.8, 13.2 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -324.8, 13.2 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -325.3, 13.2 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -325.3, 13.2 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -325.7, 13.2 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -325.7, 13.2 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -8.5, -83.4 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -8.5, -83.4 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -55.4, -59.9 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -55.4, -59.9 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -51.4, -127.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -51.4, -127.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -65.4, 82.1 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -65.4, 82.1 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -87.1, -122.6 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -87.1, -122.6 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -39.3, 82.1 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -39.3, 82.1 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -91.4, -67.9 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -91.4, -67.9 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -61.4, 16.1 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -61.4, 16.1 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -51.4, -47.9 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -51.4, -47.9 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -91.4, -127.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -91.4, -127.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -61.4, -77.9 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -61.4, -77.9 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -81.4, -97.9 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -81.4, -97.9 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -91.4, -67.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -91.4, -67.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -51.4, -107.9 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -51.4, -107.9 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -61.4, -77.9 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -61.4, -77.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -71.4, -87.9 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -71.4, -87.9 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -155.6, 112.2 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -155.6, 112.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -162.8, 112.4 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -162.8, 112.4 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -170.3, 112.6 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -170.3, 112.6 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -178.5, 113.6 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -178.5, 113.6 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -177.5, 112.9 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -177.5, 112.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -176.5, 112.1 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -176.5, 112.1 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -175.7, 111.6 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -175.7, 111.6 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -175.1, 111.1 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -175.1, 111.1 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -174.6, 110.9 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -174.6, 110.9 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -174.2, 110.7 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -174.2, 110.7 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -173.9, 110.6 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -173.9, 110.6 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -173.7, 110.7 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -173.7, 110.7 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -173.6, 110.7 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -173.6, 110.7 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -173.6, 110.9 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -173.6, 110.9 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -173.5, 111.1 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -173.5, 111.1 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -173.6, 111.3 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -173.6, 111.3 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -173.7, 111.5 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -173.7, 111.5 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -173.7, 111.7 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -173.7, 111.7 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 21.2, -100.8 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 21.2, -100.8 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 98.5, -107.3 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 98.5, -107.3 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 156.9, -109.8 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 156.9, -109.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 195.2, -107.9 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 195.2, -107.9 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 212.8, -101.3 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 212.8, -101.3 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 209.5, -90 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 209.5, -90 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 185.6, -74 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 185.6, -74 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 141.5, -53.6 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 141.5, -53.6 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 78.5, -29.1 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 78.5, -29.1 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 2, -1.1 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 2, -1.1 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 45.7, 47.7 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 45.7, 47.7 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 88.4, 95.4 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 88.4, 95.4 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 15.7, 61.8 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 15.7, 61.8 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 23.6, 96.7 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 23.6, 96.7 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 45.7, 75.8 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 45.7, 75.8 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 36.7, 274.5 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 36.7, 274.5 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 16.2, 425.8 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 16.2, 425.8 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 6.5, 634.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 6.5, 634.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 46.8, 773.8 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 46.8, 773.8 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 37.1, 982.8 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 37.1, 982.8 , 0 );

setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 15.32, 15.32 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 15.32, 15.32 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 11.13, 11.13 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 11.13, 11.13 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 10.46, 10.46 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 10.46, 10.46 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 11.13, 11.13 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 11.13, 11.13 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 1.8, 1.8 );

setRotateKey( spep_2 + 110 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -26.2 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -26.2 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 275 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, -29.6 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, -40.6 );

--敵の動き2

setDisp( spep_2 + 334 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 448 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 334 + OFFSET_X, 1, -443.7, -436 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -443.7, -436 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -349.6, -339.4 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -349.6, -339.4 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -255.5, -242.7 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -255.5, -242.7 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -161.3, -146 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, -161.3, -146 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, -67.2, -49.3 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, -67.2, -49.3 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 27, 47.4 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 27, 47.4 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 121.2, 144.1 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 121.2, 144.1 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 135.6, 158.9 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 135.6, 158.9 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 148.7, 172.5 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 148.7, 172.5 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 160.6, 184.7 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 160.6, 184.7 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 171.2, 195.6 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 171.2, 195.6 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 172.1, 196.5 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 172.1, 196.5 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 172.9, 197.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 172.9, 197.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 173.8, 198.3 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 173.8, 198.3 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 174.6, 199.2 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 174.6, 199.2 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 175.4, 200 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 175.4, 200 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 176.1, 200.7 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 176.1, 200.7 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 176.9, 201.5 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 176.9, 201.5 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 177.6, 202.2 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 177.6, 202.2 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 178.2, 202.9 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 178.2, 202.9 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 178.9, 203.6 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 178.9, 203.6 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 179.5, 204.2 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 179.5, 204.2 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 180.1, 204.8 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 180.1, 204.8 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 180.6, 205.4 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 180.6, 205.4 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 181.2, 205.9 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 181.2, 205.9 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 181.7, 206.4 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 181.7, 206.4 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 182.1, 206.9 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 182.1, 206.9 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 182.6, 207.4 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 182.6, 207.4 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 183, 207.8 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 183, 207.8 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 183.4, 208.2 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 183.4, 208.2 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 183.7, 208.5 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 183.7, 208.5 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 184, 208.9 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 184, 208.9 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 184.3, 209.1 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 184.3, 209.1 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -127.9, -78.4 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -127.9, -78.4 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -176.1, -119.6 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, -176.1, -119.6 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, -212.1, -150.8 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -212.1, -150.8 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -233.7, -170.3 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -233.7, -170.3 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -241.3, -178.2 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, -241.3, -178.2 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -237, -176.2 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, -237, -176.2 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, -223.7, -166.7 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, -223.7, -166.7 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, -204.4, -152 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -204.4, -152 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -181.5, -134.2 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, -181.5, -134.2 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, -157.2, -115.2 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, -157.2, -115.2 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, -159.1, -117.2 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, -159.1, -117.2 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, -158.8, -117.3 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, -158.8, -117.3 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -154.1, -113.5 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, -154.1, -113.5 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, -149.5, -109.8 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, -149.5, -109.8 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, -144.8, -106.1 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, -144.8, -106.1 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, -140.4, -102.5 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, -140.4, -102.5 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, -135.9, -98.9 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, -135.9, -98.9 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, -131.5, -95.4 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, -131.5, -95.4 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -127.3, -92 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, -127.3, -92 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, -123.2, -88.6 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, -123.2, -88.6 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -119.1, -85.3 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, -119.1, -85.3 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -115.1, -82.1 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, -115.1, -82.1 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -111.5, -79.6 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -111.5, -79.6 , 0 );

setScaleKey( spep_2 + 334 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 349 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 351 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 352 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 361 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 362 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 363 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 364 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 3.57, 3.57 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 4.02, 4.02 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 4.02, 4.02 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 4.34, 4.34 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 4.57, 4.57 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 4.57, 4.57 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 4.53, 4.53 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 4.41, 4.41 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_2 + 419 + OFFSET_X, 1, 4.26, 4.26 );
setScaleKey( spep_2 + 420 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 421 + OFFSET_X, 1, 4.07, 4.07 );
setScaleKey( spep_2 + 422 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 423 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 424 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_2 + 425 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_2 + 426 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_2 + 427 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_2 + 428 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_2 + 429 + OFFSET_X, 1, 4.06, 4.06 );
setScaleKey( spep_2 + 430 + OFFSET_X, 1, 4.02, 4.02 );
setScaleKey( spep_2 + 431 + OFFSET_X, 1, 4.02, 4.02 );
setScaleKey( spep_2 + 432 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_2 + 433 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_2 + 434 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_2 + 439 + OFFSET_X, 1, 3.87, 3.87 );
setScaleKey( spep_2 + 440 + OFFSET_X, 1, 3.83, 3.83 );
setScaleKey( spep_2 + 441 + OFFSET_X, 1, 3.83, 3.83 );
setScaleKey( spep_2 + 442 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_2 + 445 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_2 + 446 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 3.72, 3.72 );

setRotateKey( spep_2 + 334 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_2 + 401 + OFFSET_X, 1, -40.7 );
setRotateKey( spep_2 + 402 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, -40.6 );

--敵の動き3

setDisp( spep_2 + 474 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 540 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 474 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 490 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 524 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 474 + OFFSET_X, 1, 116.9, -168.5 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 116.9, -168.5 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 96.9, -452.6 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 96.9, -452.6 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 231.1, -158.7 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 231.1, -158.7 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 185.1, -288.7 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 185.1, -288.7 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 235.1, 25.4 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 235.1, 25.4 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 203.1, -206.6 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 203.1, -206.6 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -28.9, -15.2 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, -28.9, -15.2 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 15.9, -123.9 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 15.9, -123.9 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 20.9, -13.1 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 20.9, -13.1 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -13.9, -63.6 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, -13.9, -63.6 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 14.7, -18.4 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 14.7, -18.4 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 14, -3.4 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 14, -3.4 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 13.8, 1.3 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 13.8, 1.3 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 12.4, 4.9 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 12.4, 4.9 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 8.9, 9.2 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 8.9, 9.2 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 7.1, 9 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 7.1, 9 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 5.8, 8.7 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 5.8, 8.7 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 5, 8.5 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 5, 8.5 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 4.5, 8.4 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 4.5, 8.4 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 4.4, 8.3 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 4.4, 8.3 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, -14.8, 531.8 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, -14.8, 531.8 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, -14.8, 570.9 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, -14.8, 570.9 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, -14.8, 588.7 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, -14.8, 588.7 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, -14.8, 574.3 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, -14.8, 574.3 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, -14.8, 516.8 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, -14.8, 516.8 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, -14.8, 405 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, -14.8, 405 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, -14.8, 228 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, -14.8, 228 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, -14.8, -25.2 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, -14.8, -25.2 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, -8.8, -345.6 , 0 );

setScaleKey( spep_2 + 474 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 481 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 482 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 489 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 490 + OFFSET_X, 1, 6.08, 6.08 );
setScaleKey( spep_2 + 491 + OFFSET_X, 1, 6.08, 6.08 );
setScaleKey( spep_2 + 492 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_2 + 493 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_2 + 494 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 495 + OFFSET_X, 1, 3.45, 3.45 );
setScaleKey( spep_2 + 496 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 497 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 498 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 501 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 502 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 503 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 504 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 505 + OFFSET_X, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 506 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 509 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 510 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 511 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 512 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 513 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 514 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 515 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_2 + 516 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 517 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 518 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 519 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 520 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 523 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 540 + OFFSET_X, 1, 0.26, 0.26 );

setRotateKey( spep_2 + 474 + OFFSET_X, 1, 45.6 );
setRotateKey( spep_2 + 489 + OFFSET_X, 1, 45.6 );
setRotateKey( spep_2 + 490 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_2 + 491 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_2 + 492 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_2 + 493 + OFFSET_X, 1, -19.8 );
setRotateKey( spep_2 + 494 + OFFSET_X, 1, -25.2 );
setRotateKey( spep_2 + 495 + OFFSET_X, 1, -25.2 );
setRotateKey( spep_2 + 496 + OFFSET_X, 1, -30.3 );
setRotateKey( spep_2 + 497 + OFFSET_X, 1, -30.3 );
setRotateKey( spep_2 + 498 + OFFSET_X, 1, -54.7 );
setRotateKey( spep_2 + 501 + OFFSET_X, 1, -54.7 );
setRotateKey( spep_2 + 502 + OFFSET_X, 1, -99.7 );
setRotateKey( spep_2 + 503 + OFFSET_X, 1, -99.7 );
setRotateKey( spep_2 + 504 + OFFSET_X, 1, -118.7 );
setRotateKey( spep_2 + 505 + OFFSET_X, 1, -118.7 );
setRotateKey( spep_2 + 506 + OFFSET_X, 1, -134.8 );
setRotateKey( spep_2 + 509 + OFFSET_X, 1, -134.8 );
setRotateKey( spep_2 + 510 + OFFSET_X, 1, -158.4 );
setRotateKey( spep_2 + 511 + OFFSET_X, 1, -158.4 );
setRotateKey( spep_2 + 512 + OFFSET_X, 1, -166.6 );
setRotateKey( spep_2 + 513 + OFFSET_X, 1, -166.6 );
setRotateKey( spep_2 + 514 + OFFSET_X, 1, -172.8 );
setRotateKey( spep_2 + 515 + OFFSET_X, 1, -172.8 );
setRotateKey( spep_2 + 516 + OFFSET_X, 1, -177.4 );
setRotateKey( spep_2 + 517 + OFFSET_X, 1, -177.4 );
setRotateKey( spep_2 + 518 + OFFSET_X, 1, -180.6 );
setRotateKey( spep_2 + 519 + OFFSET_X, 1, -180.6 );
setRotateKey( spep_2 + 520 + OFFSET_X, 1, -182.5 );
setRotateKey( spep_2 + 523 + OFFSET_X, 1, -182.5 );
setRotateKey( spep_2 + 524 + OFFSET_X, 1, 126.3 );
setRotateKey( spep_2 + 540 + OFFSET_X, 1, 126.3 );

-- ** 音 ** --

--服脱ぎ捨てる
SE007 = playSeVer2( spep_2 + 50, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 50, SE007, 184 );
SE008 = playSeVer2( spep_2 + 58, 1197, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE008, 65 );

--振りかぶる
SE009 = playSeVer2( spep_2 + 76, 1116, "",spep_2 + 122, 0, 26, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 90; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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

--パンチ
SE010 = playSeVer2( spep_2 + 102, 1359, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 102, 1187, "", 0, 0, 0, -1);

--翻る
SE012 = playSeVer2( spep_2 + 154, 1192, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 154, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 154, SE013, 81 );
SE014 = playSeVer2( spep_2 + 160, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 160, SE014, 126 );

--両足蹴り
SE015 = playSeVer2( spep_2 + 190, 1003, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 196, 1187, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 196, 1153, "", 0, 0, 0, -1);

--敵飛んでいく
SE018 = playSeVer2( spep_2 + 218, 1121, "",spep_2 + 342, 0, 92, -1);
SE023 = playSeVer2( spep_2 + 314, 1121, "",spep_2 + 508, 0, 162, -1);
setPitch( spep_2 + 318, SE023, 300 );
setTimeStretch( SE023, 1.2, 30, 4 );

--瞬間移動
SE019 = playSeVer2( spep_2 + 272, 1109, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 404, 1109, "", 0, 0, 0, -1);

--蹴り上げる
SE020 = playSeVer2( spep_2 + 294, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 294, SE020, 84 );
SE021 = playSeVer2( spep_2 + 296, 1010, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 298, 1110, "", 0, 0, 0, -1);

--叩き落とす
SE025 = playSeVer2( spep_2 + 464, 1189, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 472, 1123, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 476, 1414, "", 0, 0, 0, -1);

--敵落ちていく
SE028 = playSeVer2( spep_2 + 480, 1304, "",spep_2 + 576, 0, 36, -1);
SE029 = playSeVer2( spep_2 + 514, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 514, SE029, 158 );

--地面激突
SE030 = playSeVer2( spep_2 + 542, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 552); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 758F

end
