--1033010:UR_ダーブラ_格闘カウンター
--sp_effect_b1_00361
--c0035

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164397; --ef_001 攻撃されるが半透明で当たらない〜カウンター

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

------------------------------------------------------------------------------------------------------------
-- カウンター
------------------------------------------------------------------------------------------------------------


spep_0 = 28; --冒頭顔カットイン入るため28F固定
setupMovie(spep_0 , SP_01, 0, 1);

------------------------------------------------------
-- 攻撃されるが半透明で当たらない〜カウンター
------------------------------------------------------

MAX_FRAME_0 = 522;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 攻撃されるが半透明で当たらない〜カウンター(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

-- ** 敵キャラクター ** --
--敵の動き1

setDisp( spep_0 + 98 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 234 + OFFSET_X, 1, 0 );

changeAnimeAndStop( spep_0 + 98 + OFFSET_X, 1, 111 ,1);
changeAnime( spep_0 + 108 + OFFSET_X, 1, 110);
changeAnimeAndStop( spep_0 + 160 + OFFSET_X, 1, 11 ,8);

setMoveKey( spep_0 + 98 + OFFSET_X, 1, 350.8, -120.7 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 350.8, -120.7 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 296.9, -120.6 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 296.9, -120.6 , 0 );

setMoveKey( spep_0 + 102 + OFFSET_X, 1, 237.4, -120.7 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 237.4, -120.7 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 175, -120.7 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 175, -120.7 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 110.4, -120.8 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 110.4, -120.8 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 44.1, -121 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 44.1, -121 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 19.4, -132.9 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 19.4, -132.9 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -7.9, -120.8 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -7.9, -120.8 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -32.6, -126.7 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -32.6, -126.7 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -45.6, -120.8 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -45.6, -120.8 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -57.2, -121 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -57.2, -121 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -67.2, -121.3 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -67.2, -121.3 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -76, -121.6 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -76, -121.6 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -84.1, -122 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -84.1, -122 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -91.6, -122.4 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -91.6, -122.4 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -98.6, -122.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -98.6, -122.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -105.2, -123.4 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -105.2, -123.4 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -111.6, -123.9 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -111.6, -123.9 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -117.6, -124.5 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -117.6, -124.5 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -123.5, -125.1 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -123.5, -125.1 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -129.2, -125.8 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -129.2, -125.8 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -134.7, -126.4 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -134.7, -126.4 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -140.1, -127.2 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -140.1, -127.2 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -145.4, -128 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -145.4, -128 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -150.7, -128.8 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -150.7, -128.8 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -155.9, -129.7 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -155.9, -129.7 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -161.1, -130.7 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -161.1, -130.7 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -166.3, -131.7 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -166.3, -131.7 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -171.7, -132.9 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -171.7, -132.9 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -177.2, -134.3 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -177.2, -134.3 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -183.2, -135.9 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 28, -59.4 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 28, -59.4 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 28.4, -59.5 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 28.4, -59.5 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 28.8, -59.6 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 28.8, -59.6 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 29.1, -59.7 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 29.1, -59.7 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 29.5, -59.8 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 29.5, -59.8 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 29.9, -59.9 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 29.9, -59.9 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 30.2, -60 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 30.2, -60 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 30.6, -60.1 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 30.6, -60.1 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 30.9, -60.3 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 30.9, -60.3 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 31.3, -60.3 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 31.3, -60.3 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 31.6, -60.4 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 31.6, -60.4 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 31.9, -60.5 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 31.9, -60.5 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 32.3, -60.6 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 32.3, -60.6 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 32.6, -60.7 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 32.6, -60.7 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 32.9, -60.8 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 32.9, -60.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 33.2, -60.9 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 33.2, -60.9 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 33.5, -61 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 33.5, -61 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 33.8, -61.1 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 33.8, -61.1 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 34.1, -61.2 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 34.1, -61.2 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 34.4, -61.2 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 34.4, -61.2 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 34.7, -61.3 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 34.7, -61.3 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 34.9, -61.4 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 34.9, -61.4 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 35.2, -61.5 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 35.2, -61.5 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 35.5, -61.6 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 35.5, -61.6 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 35.7, -61.6 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 35.7, -61.6 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 36, -61.7 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 36, -61.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 36.2, -61.8 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 36.2, -61.8 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 36.5, -61.9 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 36.5, -61.9 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 50, -64.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 50, -64.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 71.3, -68.8 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 71.3, -68.8 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 102.3, -75 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 102.3, -75 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 145.7, -83.6 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 145.7, -83.6 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 204.4, -95.3 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 204.4, -95.3 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 281.2, -110.7 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 281.2, -110.7 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 375.9, -129.5 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 375.9, -129.5 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 483.2, -150.9 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 483.2, -150.9 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 593, -172.9 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 593, -172.9 , 0 );

--ここから一回り大きく
mag_scale_rate = 1.4;
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 2 * mag_scale_rate, 2 * mag_scale_rate );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 2 * mag_scale_rate, 2 * mag_scale_rate );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 2.2 * mag_scale_rate, 2.2 * mag_scale_rate );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 2.2 * mag_scale_rate, 2.2 * mag_scale_rate );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 2 * mag_scale_rate, 2 * mag_scale_rate );
setScaleKey( spep_0 + 113 + OFFSET_X, 1, 2 * mag_scale_rate, 2 * mag_scale_rate );
setScaleKey( spep_0 + 114 + OFFSET_X, 1, 2.1 * mag_scale_rate, 2.1 * mag_scale_rate );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 2.1 * mag_scale_rate, 2.1 * mag_scale_rate );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 2 * mag_scale_rate, 2 * mag_scale_rate );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 2 * mag_scale_rate, 2 * mag_scale_rate );
mag_scale_rate = 1.3;
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 0.5 * mag_scale_rate, 0.5 * mag_scale_rate );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 0.5 * mag_scale_rate, 0.5 * mag_scale_rate );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 0.49 * mag_scale_rate, 0.49 * mag_scale_rate );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 0.49 * mag_scale_rate, 0.49 * mag_scale_rate );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 0.47 * mag_scale_rate, 0.47 * mag_scale_rate );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 0.47 * mag_scale_rate, 0.47 * mag_scale_rate );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 0.45 * mag_scale_rate, 0.45 * mag_scale_rate );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 0.45 * mag_scale_rate, 0.45 * mag_scale_rate );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 0.43 * mag_scale_rate, 0.43 * mag_scale_rate );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 0.43 * mag_scale_rate, 0.43 * mag_scale_rate );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 0.4 * mag_scale_rate, 0.4 * mag_scale_rate );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 0.4 * mag_scale_rate, 0.4 * mag_scale_rate );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 0.36 * mag_scale_rate, 0.36 * mag_scale_rate );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 0.36 * mag_scale_rate, 0.36 * mag_scale_rate );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 0.31 * mag_scale_rate, 0.31 * mag_scale_rate );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 0.31 * mag_scale_rate, 0.31 * mag_scale_rate );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 0.27 * mag_scale_rate, 0.27 * mag_scale_rate );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 0.27 * mag_scale_rate, 0.27 * mag_scale_rate );
--ここまで

setRotateKey( spep_0 + 98 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 99 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 100 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_0 + 101 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_0 + 102 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_0 + 103 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_0 + 104 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_0 + 105 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_0 + 106 + OFFSET_X, 1, 13.6 );
setRotateKey( spep_0 + 107 + OFFSET_X, 1, 13.6 );
setRotateKey( spep_0 + 108 + OFFSET_X, 1, 17 );
setRotateKey( spep_0 + 109 + OFFSET_X, 1, 17 );
setRotateKey( spep_0 + 110 + OFFSET_X, 1, 15.2 );
setRotateKey( spep_0 + 111 + OFFSET_X, 1, 15.2 );
setRotateKey( spep_0 + 112 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_0 + 113 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_0 + 114 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_0 + 115 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_0 + 116 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_0 + 117 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_0 + 118 + OFFSET_X, 1, 11.2 );
setRotateKey( spep_0 + 119 + OFFSET_X, 1, 11.2 );
setRotateKey( spep_0 + 120 + OFFSET_X, 1, 11 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, 11 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, 10.6 );
setRotateKey( spep_0 + 125 + OFFSET_X, 1, 10.6 );
setRotateKey( spep_0 + 126 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 141 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_0 + 145 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_0 + 149 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, 8.1 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, 8.1 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_0 + 153 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_0 + 154 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_0 + 155 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, 7.3 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, 9 );

-- ** 音 ** --

--環境音
SE012 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 538, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--顔カットイン
--SE002 = playSeVer2( spep_0 + 6, 1018, "", 0, 0, 0, -1);
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );
--消える
SE002 = playSeVer2( spep_0 + 54, 1291, "", 0, 22, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE002, 56 );
SE003 = playSeVer2( spep_0 + 54, 1274, "", 0, 0, 0, -1);
--敵驚く
SE004 = playSeVer2( spep_0 + 112, 1189, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 106, 48, "", 0, 0, 0, 0.6);
--画面遷移
SE006 = playSeVer2( spep_0 + 200, 1072, "", 0, 0, 0, 0.6);
--気弾溜め
SE007 = playSeVer2( spep_0 + 286, 1252, "",spep_0 + 350, 0, 14, -1);
SE008 = playSeVer2( spep_0 + 286, 1191, "",spep_0 + 350, 0, 16, -1);
SE009 = playSeVer2( spep_0 + 286, 1262, "",spep_0 + 346, 0, 12, -1);
--気弾発射
SE010 = playSeVer2( spep_0 + 330, 1022, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 334, 1145, "", 0, 0, 0, -1);
--爆発
--SE012 = playSeVer2( spep_0 + 412, 1024, "", 0, 0, 0, -1);
--画面割れる
--SE013 = playSeVer2( spep_0 + 422, 1054, "", 0, 0, 0, -1);
--SE014 = playSeVer2( spep_0 + 422, 1025, "", 0, 0, 0, -1);

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 394; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
    pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
    stopMovie( SP_dodge + 9 ); -- 停止

    playSe( SP_dodge -12, 1042 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    -- stopSe( SP_dodge - 12, SE003, 0 );
    -- stopSe( SP_dodge - 12, SE004, 0 );
    -- stopSe( SP_dodge - 12, SE005, 0 );
    pauseAll( SP_dodge, 67 );

    speff = entryEffectUnpausable( SP_dodge -12, 1504, 0x100, -1, 0, 0, -350 ); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 ); -- カットイン差し替え

    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350 ); -- 回避の文字表示

    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 ); -- white fade
    endPhase( SP_dodge + 10 );

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
-- ** 音 ** --


------------------------------------------------------
-- K.O.時のスクリプト遷移
------------------------------------------------------
if ( _IS_DEAD_ == 1 ) then

    stopSe( spep_0 + 408 , SE012, 0 );

    stopMovie( spep_0 + 408 ); -- 停止
    setDisp( spep_0 + 408, 1, 1 );
    --setScaleKey( spep_0 + 408, 1, 0, 0 );
    endPhase( spep_0 + 410 );

else
------------------------------------------------------
-- K.O.しない場合
------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------

spep_N=spep_0 + 410;

-- ** 画面手前衝突(ガッ)演出のテンプレ ** --

-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 4, finish_1f, 20, -120 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 20, -120 , 0 );
setEffScaleKey( spep_N + 4, finish_1f, 1.3, 1.3 );
setEffScaleKey( spep_N + 112, finish_1f, 1.3, 1.3 );
setEffRotateKey( spep_N + 4, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 4, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );

--[[
-- 背景差し替えがある場合のみ
finish_1b = entryEffectLife( spep_N + 0, SP_xx , spep_N + 108, 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_xxx)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );
]]

--[[
-- ** 爆発 ** --
bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_N + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, bakuhatsu, 0, 0 , 0 );

setEffScaleKey( spep_N + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_N + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_N + 112, bakuhatsu, 0.9, 0.9 );

setEffRotateKey( spep_N + 0, bakuhatsu, 0 );
setEffRotateKey( spep_N + 112, bakuhatsu, 0 );

setEffAlphaKey( spep_N + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_N + 112, bakuhatsu, 255 );
]]

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常
--setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
--setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）  

setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );

--[[
shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );
]]

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );

setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );

setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );

--固定背景の場合のみ
-- ** 黒背景 ** --
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
setDisp( spep_N + 0 + OFFSET_X, 1, 1 );
setDisp( spep_N + 112, 1, 0 );

changeAnime( spep_N + 0 + OFFSET_X, 1, 107 );

set_axis_y=-150;
--真ん中から飛んでくる場合
setMoveKey( spep_N + 0 + OFFSET_X, 1, 21.8, 10.7 + set_axis_y, 0 );
setMoveKey( spep_N + 2 + OFFSET_X, 1, -8.2, -19.3 + set_axis_y , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, -12.5, -24.9 + set_axis_y , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, -16.6, -29.9 + set_axis_y , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, -20.2, -35.6 + set_axis_y , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -24.9, -41.3 + set_axis_y , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 + set_axis_y , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 + set_axis_y , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 + set_axis_y , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 + set_axis_y , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 + set_axis_y , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 + set_axis_y , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 + set_axis_y , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 + set_axis_y , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 + set_axis_y , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 + set_axis_y , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 + set_axis_y , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 + set_axis_y , 0 );

setScaleKey( spep_N + 0 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );

setRotateKey( spep_N + 0 + OFFSET_X, 1, -354.8 );
setRotateKey( spep_N + 2 + OFFSET_X, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );
--ここまで
--[[
--上から飛んでくる場合
setMoveKey( spep_N + 0, 1, 36.2, 265.9 , 0 );
setMoveKey( spep_N + 1, 1, 32.5, 228 , 0 );
setMoveKey( spep_N + 2, 1, 27.7, 179.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, 21.9, 119.7 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, 17, 57.3 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, 7.1, -32 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -1.9, -42 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );

setRotateKey( spep_N + 0, 1, -354.8 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );
--ここまで
]]
-- ** 音 ** --
--爆発
SE0N1 = playSeVer2( spep_N + 0, 1023, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム

end