-- 1029000: UR_クリリン_必殺技：気円斬
-- sp_effect_a6_00021
-- sp2719

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162913;  -- 開幕・目線カットイン～カードカットインまで ef_001
SP_001b = 162914;  -- 開幕・目線カットイン～カードカットインまで ef_001b
SP_002 = 162917;  -- カードカットイン～フィニッシュまで ef_002
SP_002b = 162918;  -- カードカットイン～フィニッシュまで ef_002b

-- 敵側
SP_001r = 162915;  -- 開幕・目線カットイン～カードカットインまで ef_001r
SP_001br = 162916;  -- 開幕・目線カットイン～カードカットインまで ef_001br
SP_002r = 162919;  -- カードカットイン～フィニッシュまで ef_002r
SP_002br = 162920;  -- カードカットイン～フィニッシュまで ef_002br

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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕・目線カットイン～カードカットインまで ef_001
------------------------------------------------------
MAX_FRAME_0 = 428;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x100, -1, 0, 0, 0 );  -- 開幕・目線カットイン～カードカットインまで ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001b, 0x80, -1, 0, 0, 0 );  -- 開幕・目線カットイン～カードカットインまで ef_001b
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -25, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -25, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -25, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 126 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 304 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 126 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 152 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 218 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 248 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 264 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 284 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 126 + OFFSET_X, 1, 136, 83 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 136, 83 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 129.5, 72.2 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 129.5, 72.2 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 122.9, 61.4 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 122.9, 61.4 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 116.4, 50.6 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 116.4, 50.6 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 109.9, 39.8 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 109.9, 39.8 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 103.3, 29 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 103.3, 29 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 96.8, 18.2 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 96.8, 18.2 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 90.2, 7.4 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 90.2, 7.4 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 83.7, -3.4 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 83.7, -3.4 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 77.2, -14.2 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 77.2, -14.2 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 70.6, -25 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 70.6, -25 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 64.1, -35.8 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 64.1, -35.8 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 57.6, -46.6 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 57.6, -46.6 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 174.2, 50.2 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 174.2, 50.2 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 126.3, 21.6 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 126.3, 21.6 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 147.4, 1 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 147.4, 1 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 131.5, -9.6 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 131.5, -9.6 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 147.9, 3.1 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 147.9, 3.1 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 164.4, 15.9 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 164.4, 15.9 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 180.8, 28.6 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 180.8, 28.6 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 132.9, -18.8 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 132.9, -18.8 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 165.1, -22.2 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 165.1, -22.2 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 120.2, 12.4 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 120.2, 12.4 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 153.4, 0 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 153.4, 0 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 155.5, 1.6 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 155.5, 1.6 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 157.7, 3.2 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 157.7, 3.2 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 159.8, 4.8 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 159.8, 4.8 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 161.9, 6.3 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 161.9, 6.3 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 164.1, 7.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 164.1, 7.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 166.2, 9.5 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 166.2, 9.5 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 204.4, 46.1 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 204.4, 46.1 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 157.5, 22.7 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 157.5, 22.7 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 175.5, 1.8 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 175.5, 1.8 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 156.5, -9.2 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 156.5, -9.2 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 164.5, 0.9 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 164.5, 0.9 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 162.4, -3 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 162.4, -3 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 160.4, -7 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 160.4, -7 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 154.8, -11.1 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 154.8, -11.1 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 149.1, -15.1 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 149.1, -15.1 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 143.5, -19.2 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 143.5, -19.2 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 137.8, -23.3 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 137.8, -23.3 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 132.2, -27.4 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 132.2, -27.4 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 126.5, -31.4 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 126.5, -31.4 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 156.8, -0.5 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 156.8, -0.5 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 102.2, -29.6 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 102.2, -29.6 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 116.5, -50.7 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 116.5, -50.7 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 65.7, 32.5 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 65.7, 32.5 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 71.4, 53.3 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 71.4, 53.3 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 67.2, 60.2 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 67.2, 60.2 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 62.9, 67 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 62.9, 67 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 58.6, 73.8 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 58.6, 73.8 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 54.3, 80.7 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 54.3, 80.7 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 52.9, 73.3 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 52.9, 73.3 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 51.5, 66 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 51.5, 66 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 50.1, 58.7 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 50.1, 58.7 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 48.7, 51.4 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 48.7, 51.4 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 47.3, 44 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 47.3, 44 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 45.8, 36.7 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 45.8, 36.7 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 44.4, 29.4 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 44.4, 29.4 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 79, 57 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 79, 57 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 28.6, 24.7 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 28.6, 24.7 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 113.2, 26.8 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 113.2, 26.8 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 96.4, 19.6 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 96.4, 19.6 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 106.6, 33.4 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 106.6, 33.4 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 106.8, 33.2 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 106.8, 33.2 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 107.1, 33 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 107.1, 33 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 107.3, 32.8 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 107.3, 32.8 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 107.5, 32.6 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 107.5, 32.6 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 107.7, 32.4 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 107.7, 32.4 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 157.2, -29.4 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 157.2, -29.4 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 140.4, -35.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 140.4, -35.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 123.7, -42.1 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 123.7, -42.1 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 107, -48.5 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 107, -48.5 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 90.2, -54.8 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 90.2, -54.8 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 73.6, -61.2 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 73.6, -61.2 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 56.9, -67.6 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 56.9, -67.6 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 40.2, -73.9 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 40.2, -73.9 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 38, -73 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 38, -73 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 71.9, -37 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 71.9, -37 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 129.9, 44.4 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 129.9, 44.4 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 374.6, 92.7 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 374.6, 92.7 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 579.5, 150 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 579.5, 150 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 808.7, 227.6 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 808.7, 227.6 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 1025.2, 290.4 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 1025.2, 290.4 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 1238.7, 352.3 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 1238.7, 352.3 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 1449.6, 413.3 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 1449.6, 413.3 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 1657.7, 473.6 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 1657.7, 473.6 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 1863.1, 533.1 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 1863.1, 533.1 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 2065.6, 591.7 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 2065.6, 591.7 , 0 );

setScaleKey( spep_0 + 126 + OFFSET_X, 1, 0.31, 0.32 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 0.31, 0.32 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 0.41, 0.42 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 0.41, 0.42 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 0.52, 0.53 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 0.52, 0.53 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 0.64, 0.65 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 0.64, 0.65 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 0.77, 0.78 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 0.77, 0.78 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 1.07, 1.08 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 1.07, 1.08 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 1.24, 1.25 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 1.24, 1.25 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 1.42, 1.43 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 1.42, 1.43 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 1.82, 1.83 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 1.82, 1.83 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 5.3, 5.3 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 5.3, 5.3 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 5.79, 5.79 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 5.79, 5.79 );

setRotateKey( spep_0 + 126 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 153 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 154 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 155 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, -4.2 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, -4.2 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, -5.4 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, -5.4 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, -17.3 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, -17.3 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, -23 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -23 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -48.3 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -48.3 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -47.8 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, -47.8 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, -47.4 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -47.4 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -45.9 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -45.9 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -44 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -44 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -43 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, -43 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, -42 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, -42 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, -41 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -41 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -40 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, -40 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, -39 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -39 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -38 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, -38 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -40 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, -40 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, -17.5 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -17.5 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -9 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -9 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, 1.8 );

-- ** 音 ** --
--構える
SE002 = playSeVer2( spep_0 + 14, 1233, "", 0, 0, 0, -1);

--向かってくる
SE003 = playSeVer2( spep_0 + 90, 1182, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 90, 1117, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 130;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE00X, 0);

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
--連続攻撃
SE005 = playSeVer2( spep_0 + 144, 1189, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 150, 1009, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 150, 1110, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 162, 1110, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 182, 1110, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 182, 1010, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 204, 1187, "",spep_0 + 260, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 204, SE011, 83 );
SE012 = playSeVer2( spep_0 + 234, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 234, 1010, "", 0, 0, 0, -1);

--蹴り飛ばす
SE014 = playSeVer2( spep_0 + 274, 1120, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 274, 1110, "", 0, 0, 0, -1);

--画面遷移
SE016 = playSeVer2( spep_0 + 314, 1232, "", 0, 0, 0, -1);

--腕上にあげる
SE017 = playSeVer2( spep_0 + 346, 1003, "", 0, 0, 0, -1);

--気円斬溜める
SE018 = playSeVer2( spep_0 + 360, 1240, "",spep_0 + 468, 0, 26, 0.6);
SE019 = playSeVer2( spep_0 + 360, 1254, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 360, SE019, 73 );
SE020 = playSeVer2( spep_0 + 366, 1239, "",spep_0 + 464, 0, 20, 0.6);
setSeVolumeByWorkId( spep_0 + 366, SE020, 145 );

--発射前気円斬溜める
SE021 = playSeVer2( spep_0 + 508, 1240, "",spep_0 + 606, 10, 20, 0.6);
setStartTimeMs( SE021,  1700 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 428

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--発射前気円斬溜める
SE023 = playSeVer2( spep_1 + 86, 1239, "",spep_2 + 88, 12, 26, -1);
setStartTimeMs( SE023,  1400 );

------------------------------------------------------
-- カードカットイン～フィニッシュまで ef_002
------------------------------------------------------
MAX_FRAME_2 = 268;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- カードカットイン～フィニッシュまで ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- カードカットイン～フィニッシュまで ef_002b
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
setDisp( spep_2 + 98 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 152 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 98 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 98 + OFFSET_X, 1, 20.6, 233.9 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 20.6, 233.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 19, 233.1 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 19, 233.1 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 17.4, 232.4 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 17.4, 232.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 15.8, 231.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 15.8, 231.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 14.1, 231 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 14.1, 231 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 38.5, 194.3 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 38.5, 194.3 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -17.1, 257.6 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -17.1, 257.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 51.3, 288.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 51.3, 288.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -32.4, 174.1 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -32.4, 174.1 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -26, 257.4 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -26, 257.4 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 46.4, 210.7 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 46.4, 210.7 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 34.7, 252 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 34.7, 252 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -23, 191.3 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -23, 191.3 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 11.3, 232.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 11.3, 232.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -10.4, 231.8 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -10.4, 231.8 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 7.9, 211.1 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 7.9, 211.1 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -13.8, 208.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -13.8, 208.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 4.5, 229.7 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 4.5, 229.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -17.2, 229 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -17.2, 229 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 1.1, 208.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 1.1, 208.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -20.7, 205.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -20.7, 205.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -13.1, 219 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -13.1, 219 , 0 );

setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.85, 0.85 );

setRotateKey( spep_2 + 98 + OFFSET_X, 1, -38 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -38 );

-- ** 音 ** --
--気円斬発射
SE024 = playSeVer2( spep_2 + 52, 1242, "",spep_2 + 124, 18, 16, -1);
setStartTimeMs( SE024,  567 );
SE025 = playSeVer2( spep_2 + 54, 1241, "",spep_2 + 134, 0, 24, -1);
SE026 = playSeVer2( spep_2 + 54, 1027, "", 0, 0, 0, -1);

--相手ヒット
SE027 = playSeVer2( spep_2 + 102, 1026, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 106, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106, SE028, 71 );

--爆発
SE029 = playSeVer2( spep_2 + 140, 1024, "", 0, 0, 0, -1);

--風圧
SE030 = playSeVer2( spep_2 + 140, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 140, SE030, 51 );

-- ** おわり ** --
dealDamage( spep_2 + 160 );
endPhase( spep_2 + MAX_FRAME_2 - 2 );  -- 268

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕・目線カットイン～カードカットインまで ef_001r
------------------------------------------------------
MAX_FRAME_0 = 428;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001r, 0x100, -1, 0, 0, 0 );  -- 開幕・目線カットイン～カードカットインまで ef_001r
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );
SP_01b = entryEffect( spep_0 + 0, SP_001br, 0x80, -1, 0, 0, 0 );  -- 開幕・目線カットイン～カードカットインまで ef_001br
setEffMoveKey( spep_0 + 0, SP_01b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01b, 0 );
setEffAlphaKey( spep_0 + 0, SP_01b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -25, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -25, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -25, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 126 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 304 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 126 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 152 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 218 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 248 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 264 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 284 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 126 + OFFSET_X, 1, 136, 83 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 136, 83 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 129.5, 72.2 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 129.5, 72.2 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 122.9, 61.4 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 122.9, 61.4 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 116.4, 50.6 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 116.4, 50.6 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 109.9, 39.8 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 109.9, 39.8 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 103.3, 29 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 103.3, 29 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 96.8, 18.2 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 96.8, 18.2 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 90.2, 7.4 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 90.2, 7.4 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 83.7, -3.4 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 83.7, -3.4 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 77.2, -14.2 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 77.2, -14.2 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 70.6, -25 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 70.6, -25 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 64.1, -35.8 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 64.1, -35.8 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 57.6, -46.6 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 57.6, -46.6 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 174.2, 50.2 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 174.2, 50.2 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 126.3, 21.6 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 126.3, 21.6 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 147.4, 1 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 147.4, 1 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 131.5, -9.6 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 131.5, -9.6 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 147.9, 3.1 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 147.9, 3.1 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 164.4, 15.9 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 164.4, 15.9 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 180.8, 28.6 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 180.8, 28.6 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 132.9, -18.8 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 132.9, -18.8 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 165.1, -22.2 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 165.1, -22.2 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 120.2, 12.4 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 120.2, 12.4 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 153.4, 0 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 153.4, 0 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 155.5, 1.6 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 155.5, 1.6 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 157.7, 3.2 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 157.7, 3.2 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 159.8, 4.8 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 159.8, 4.8 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 161.9, 6.3 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 161.9, 6.3 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 164.1, 7.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 164.1, 7.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 166.2, 9.5 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 166.2, 9.5 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 204.4, 46.1 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 204.4, 46.1 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 157.5, 22.7 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 157.5, 22.7 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 175.5, 1.8 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 175.5, 1.8 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 156.5, -9.2 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 156.5, -9.2 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 164.5, 0.9 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 164.5, 0.9 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 162.4, -3 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 162.4, -3 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 160.4, -7 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 160.4, -7 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 154.8, -11.1 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 154.8, -11.1 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 149.1, -15.1 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 149.1, -15.1 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 143.5, -19.2 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 143.5, -19.2 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 137.8, -23.3 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 137.8, -23.3 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 132.2, -27.4 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 132.2, -27.4 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 126.5, -31.4 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 126.5, -31.4 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 156.8, -0.5 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 156.8, -0.5 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 102.2, -29.6 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 102.2, -29.6 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 116.5, -50.7 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 116.5, -50.7 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 65.7, 32.5 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 65.7, 32.5 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 71.4, 53.3 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 71.4, 53.3 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 67.2, 60.2 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 67.2, 60.2 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 62.9, 67 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 62.9, 67 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 58.6, 73.8 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 58.6, 73.8 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 54.3, 80.7 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 54.3, 80.7 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 52.9, 73.3 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 52.9, 73.3 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 51.5, 66 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 51.5, 66 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 50.1, 58.7 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 50.1, 58.7 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 48.7, 51.4 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 48.7, 51.4 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 47.3, 44 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 47.3, 44 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 45.8, 36.7 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 45.8, 36.7 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 44.4, 29.4 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 44.4, 29.4 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 79, 57 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 79, 57 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 28.6, 24.7 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 28.6, 24.7 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 113.2, 26.8 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 113.2, 26.8 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 96.4, 19.6 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 96.4, 19.6 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 106.6, 33.4 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 106.6, 33.4 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 106.8, 33.2 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 106.8, 33.2 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 107.1, 33 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 107.1, 33 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 107.3, 32.8 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 107.3, 32.8 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 107.5, 32.6 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 107.5, 32.6 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 107.7, 32.4 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 107.7, 32.4 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 157.2, -29.4 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 157.2, -29.4 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 140.4, -35.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 140.4, -35.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 123.7, -42.1 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 123.7, -42.1 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 107, -48.5 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 107, -48.5 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 90.2, -54.8 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 90.2, -54.8 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 73.6, -61.2 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 73.6, -61.2 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 56.9, -67.6 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 56.9, -67.6 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 40.2, -73.9 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 40.2, -73.9 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 38, -73 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 38, -73 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 71.9, -37 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 71.9, -37 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 129.9, 44.4 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 129.9, 44.4 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 374.6, 92.7 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 374.6, 92.7 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 579.5, 150 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 579.5, 150 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 808.7, 227.6 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 808.7, 227.6 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 1025.2, 290.4 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 1025.2, 290.4 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 1238.7, 352.3 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 1238.7, 352.3 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 1449.6, 413.3 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 1449.6, 413.3 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 1657.7, 473.6 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 1657.7, 473.6 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 1863.1, 533.1 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 1863.1, 533.1 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 2065.6, 591.7 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 2065.6, 591.7 , 0 );

setScaleKey( spep_0 + 126 + OFFSET_X, 1, 0.31, 0.32 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 0.31, 0.32 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 0.41, 0.42 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 0.41, 0.42 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 0.52, 0.53 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 0.52, 0.53 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 0.64, 0.65 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 0.64, 0.65 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 0.77, 0.78 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 0.77, 0.78 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 1.07, 1.08 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 1.07, 1.08 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 1.24, 1.25 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 1.24, 1.25 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 1.42, 1.43 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 1.42, 1.43 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 1.82, 1.83 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 1.82, 1.83 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 2.57, 2.57 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 2.72, 2.72 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 2.69, 2.69 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 4.79, 4.79 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 5.3, 5.3 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 5.3, 5.3 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 5.79, 5.79 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 5.79, 5.79 );

setRotateKey( spep_0 + 126 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 153 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 154 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 155 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_0 + 175 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_0 + 176 + OFFSET_X, 1, -4.2 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, -4.2 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_0 + 183 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_0 + 184 + OFFSET_X, 1, -5.4 );
setRotateKey( spep_0 + 185 + OFFSET_X, 1, -5.4 );
setRotateKey( spep_0 + 186 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_0 + 187 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_0 + 188 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 189 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_0 + 191 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_0 + 192 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, -16.4 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, -17.3 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, -17.3 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -19.2 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -20.2 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, -21.1 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_0 + 215 + OFFSET_X, 1, -22.1 );
setRotateKey( spep_0 + 216 + OFFSET_X, 1, -23 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -23 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 219 + OFFSET_X, 1, -49.2 );
setRotateKey( spep_0 + 220 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, -48.7 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -48.3 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -48.3 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -47.8 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, -47.8 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, -47.4 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -47.4 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -45.9 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -45.9 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, -44.9 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -44 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -44 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -43 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, -43 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, -42 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, -42 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, -41 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -41 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -40 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, -40 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, -39 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -39 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -38 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, -38 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, 9 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, 7 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, 3 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, 2 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -40 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, -40 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, -17.5 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -17.5 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -9 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -9 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, 1.8 );

-- ** 音 ** --
--構える
SE002 = playSeVer2( spep_0 + 14, 1233, "", 0, 0, 0, -1);

--向かってくる
SE003 = playSeVer2( spep_0 + 90, 1182, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 90, 1117, "", 0, 0, 0, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 130;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE00X, 0);

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
--連続攻撃
SE005 = playSeVer2( spep_0 + 144, 1189, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 150, 1009, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 150, 1110, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 162, 1110, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 182, 1110, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 182, 1010, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 204, 1187, "",spep_0 + 260, 0, 38, -1);
setSeVolumeByWorkId( spep_0 + 204, SE011, 83 );
SE012 = playSeVer2( spep_0 + 234, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 234, 1010, "", 0, 0, 0, -1);

--蹴り飛ばす
SE014 = playSeVer2( spep_0 + 274, 1120, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 274, 1110, "", 0, 0, 0, -1);

--画面遷移
SE016 = playSeVer2( spep_0 + 314, 1232, "", 0, 0, 0, -1);

--腕上にあげる
SE017 = playSeVer2( spep_0 + 346, 1003, "", 0, 0, 0, -1);

--気円斬溜める
SE018 = playSeVer2( spep_0 + 360, 1240, "",spep_0 + 468, 0, 26, 0.6);
SE019 = playSeVer2( spep_0 + 360, 1254, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 360, SE019, 73 );
SE020 = playSeVer2( spep_0 + 366, 1239, "",spep_0 + 464, 0, 20, 0.6);
setSeVolumeByWorkId( spep_0 + 366, SE020, 145 );

--発射前気円斬溜める
SE021 = playSeVer2( spep_0 + 508, 1240, "",spep_0 + 606, 10, 20, 0.6);
setStartTimeMs( SE021,  1700 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 428

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--発射前気円斬溜める
SE023 = playSeVer2( spep_1 + 86, 1239, "",spep_2 + 88, 12, 26, -1);
setStartTimeMs( SE023,  1400 );

------------------------------------------------------
-- カードカットイン～フィニッシュまで ef_002r
------------------------------------------------------
MAX_FRAME_2 = 268;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );  -- カードカットイン～フィニッシュまで ef_002r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002br, 0x80, -1, 0, 0, 0 );  -- カードカットイン～フィニッシュまで ef_002br
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
setDisp( spep_2 + 98 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 152 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 98 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 98 + OFFSET_X, 1, 20.6, 233.9 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 20.6, 233.9 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 19, 233.1 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 19, 233.1 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 17.4, 232.4 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 17.4, 232.4 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 15.8, 231.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 15.8, 231.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 14.1, 231 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 14.1, 231 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 38.5, 194.3 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 38.5, 194.3 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -17.1, 257.6 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -17.1, 257.6 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 51.3, 288.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 51.3, 288.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -32.4, 174.1 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -32.4, 174.1 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -26, 257.4 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -26, 257.4 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 46.4, 210.7 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 46.4, 210.7 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 34.7, 252 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 34.7, 252 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -23, 191.3 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -23, 191.3 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 11.3, 232.6 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 11.3, 232.6 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -10.4, 231.8 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -10.4, 231.8 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 7.9, 211.1 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 7.9, 211.1 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -13.8, 208.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -13.8, 208.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 4.5, 229.7 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 4.5, 229.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -17.2, 229 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -17.2, 229 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 1.1, 208.3 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 1.1, 208.3 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -20.7, 205.5 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -20.7, 205.5 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -13.1, 219 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -13.1, 219 , 0 );

setScaleKey( spep_2 + 98 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.85, 0.85 );

setRotateKey( spep_2 + 98 + OFFSET_X, 1, -38 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -38 );

-- ** 音 ** --
--気円斬発射
SE024 = playSeVer2( spep_2 + 52, 1242, "",spep_2 + 124, 18, 16, -1);
setStartTimeMs( SE024,  567 );
SE025 = playSeVer2( spep_2 + 54, 1241, "",spep_2 + 134, 0, 24, -1);
SE026 = playSeVer2( spep_2 + 54, 1027, "", 0, 0, 0, -1);

--相手ヒット
SE027 = playSeVer2( spep_2 + 102, 1026, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 106, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 106, SE028, 71 );

--爆発
SE029 = playSeVer2( spep_2 + 140, 1024, "", 0, 0, 0, -1);

--風圧
SE030 = playSeVer2( spep_2 + 140, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 140, SE030, 51 );

-- ** おわり ** --
dealDamage( spep_2 + 160 );
endPhase( spep_2 + MAX_FRAME_2 - 2 );  -- 268

end
