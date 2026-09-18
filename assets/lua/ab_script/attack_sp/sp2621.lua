--1027780:UR_超サイヤ人ゴッドSSベジータ(暴走制御)_必殺技：イグナイトストライク
--sp_effect_a1_00412
--sp2621

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 162354;  --ef_001  立って笑み〜片手で気功波　敵前面
SP_01b = 162355;  --ef_001b 立って笑み〜片手で気功波　敵背面
SP_02  = 162358;  --ef_002  地上に気功波が着弾

--エフェクト(敵)
SP_01r  = 162356;  --ef_001r  立って笑み〜片手で気功波　敵前面　敵側用
SP_01br = 162357;  --ef_001br 立って笑み〜片手で気功波　敵背面　敵側用

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
-- 立って笑み〜片手で気功波
-------------------------------------------------
MAX_FRAME_0 = 460;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001  立って笑み〜片手で気功波　敵前面
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001b 立って笑み〜片手で気功波　敵背面
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 374;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -155, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -155, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -155, 515.5 , 0 );
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
--敵の動き１
setDisp( spep_0 + 84 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 101 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 84+ OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 84 + OFFSET_X, 1, 196, -103 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 197.6, -103.1 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 208.7, -104.2 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 238.8, -107.1 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 297.4, -112.6 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 394.1, -121.8 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 538.2, -135.4 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 739.4, -154.4 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 739.4, -154.4 , 0 );

setScaleKey( spep_0 + 84 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 4.58, 4.58 );

setRotateKey( spep_0 + 84 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 101 + OFFSET_X, 1, 0 );

--敵の動き２
setDisp( spep_0 + 132 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 178 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 138 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 132 + OFFSET_X, 1, 236.3, 39.4 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 236.7, 39.5 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 237.1, 39.6 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 185.5, 67.3 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 185.5, 67.3 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 192.1, 64.3 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 192.1, 64.3 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 196.5, 60.4 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 196.5, 60.4 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 201.2, 48 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 201.2, 48 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 219, 57.4 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 219, 57.4 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 220.6, 48.1 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 220.6, 48.1 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 228.4, 55.7 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 228.4, 55.7 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 250.1, 50.4 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 250.1, 50.4 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 254, 28.9 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 254, 28.9 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 249.4, 29.2 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 249.4, 29.2 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 257.2, 26.8 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 257.2, 26.8 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 265.1, 24.4 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 265.1, 24.4 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 272.9, 21.9 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 272.9, 21.9 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 280.7, 19.5 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 280.7, 19.5 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 288.5, 17.1 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 288.5, 17.1 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 296.3, 14.7 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 296.3, 14.7 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 304.2, 12.3 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 304.2, 12.3 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 312, 9.8 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 312, 9.8 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 244.4, 226.7 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 244.4, 226.7 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 250, 228.6 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 250, 228.6 , 0 );

setScaleKey( spep_0 + 132 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 2.14, 2.14 );

setRotateKey( spep_0 + 132 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -82.6 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -82.6 );

--敵の動き３
setDisp( spep_0 + 192 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 314 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 192 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 210 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 218 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 242 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 254 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 192 + OFFSET_X, 1, 49.4, -55.1 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 49.4, -55.1 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 53.9, -53.3 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 53.9, -53.3 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 58.5, -51.4 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 58.5, -51.4 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 58.9, -48.7 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 58.9, -48.7 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 62.1, 24.5 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 62.1, 24.5 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 68.7, 27.5 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 68.7, 27.5 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 73.3, 37.9 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 73.3, 37.9 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 76.5, 34.7 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 76.5, 34.7 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 78.6, 35.4 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 78.6, 35.4 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 40.7, 17.8 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 40.7, 17.8 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 60.2, 41.9 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 60.2, 41.9 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 73.5, 49.2 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 73.5, 49.2 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 63.5, 42.2 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 63.5, 42.2 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 37.4, -63.9 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 37.4, -63.9 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 48.2, -68.4 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 48.2, -68.4 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 57.3, -64.4 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 57.3, -64.4 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 60.5, -61.8 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 60.5, -61.8 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 60.6, -63.2 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 60.6, -63.2 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 60.6, 29 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 60.6, 29 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 64.7, 30.9 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 64.7, 30.9 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 65, 30.7 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 65, 30.7 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 73.4, 39.3 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 73.4, 39.3 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 75.6, 34.5 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 75.6, 34.5 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 76.5, 37.4 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 76.5, 37.4 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 70.4, 38.1 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 70.4, 38.1 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 35.8, 23.7 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 35.8, 23.7 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 55.7, 29.8 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 55.7, 29.8 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 61.9, 41 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 61.9, 41 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 67.4, 43.4 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 67.4, 43.4 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 76, 41.5 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 76, 41.5 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 61.8, 44.9 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 61.8, 44.9 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 35.6, -60.4 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 35.6, -60.4 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 37.5, -61.6 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 37.5, -61.6 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 47, -63.6 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 47, -63.6 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 51.8, -71.6 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 51.8, -71.6 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 55.8, -63.9 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 55.8, -63.9 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 58.8, -59.9 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 58.8, -59.9 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 63, -61.9 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 63, -61.9 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 65.3, -62.4 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 65.3, -62.4 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 67.2, -62.9 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 67.2, -62.9 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 68.9, -63.4 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 68.9, -63.4 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 70.3, -63.9 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 70.3, -63.9 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 71.4, -64.4 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 71.4, -64.4 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 72.3, -64.9 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 72.3, -64.9 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 72.9, -65.4 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 72.9, -65.4 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 73.4, -65.9 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 73.4, -65.9 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 73.8, -66.4 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 73.8, -66.4 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 74, -67 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 74, -67 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 74.1, -67.5 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 74.1, -67.5 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 74.1, -68 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 74.1, -68 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 74.1, -68.5 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 74.1, -68.5 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 74, -69 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 74, -69 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 74, -75.2 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 74, -75.2 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 78.3, -69.4 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 78.3, -69.4 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 64.8, -69.3 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 64.8, -69.3 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 78.6, -75.3 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 78.6, -75.3 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 72.5, -66.9 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 72.5, -66.9 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 72.4, -69.9 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 72.4, -69.9 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 71.3, -64.9 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 71.3, -64.9 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 270, -193.9 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 270, -193.9 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 412.4, -243.7 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 412.4, -243.7 , 0 );

setScaleKey( spep_0 + 192 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 1.47, 1.47 );

setRotateKey( spep_0 + 192 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, -32.7 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, -32.7 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, -29.7 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, -29.7 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -18.7 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -18.7 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -17 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, -17 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, 41.7 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, 41.7 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, 65 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, 65 );


-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 108, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
SE002 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 238, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 63 );
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 56 );
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 56 );
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 56 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 56 );

--首をひく
SE005 = playSeVer2( spep_0 + 8, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE005, 68 );
setPitch( spep_0 + 8, SE005, -500 );
setTimeStretch( SE005, 0.67, 30, 4 );

--向かっていく
SE008 = playSeVer2( spep_0 + 70, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 70, 9, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 80, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE010, 65 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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
SE011 = playSeVer2( spep_0 + 134, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE011, 77 );
SE012 = playSeVer2( spep_0 + 134, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE012, 93 );

--パンチ２
SE013 = playSeVer2( spep_0 + 170, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE013, 188 );
SE014 = playSeVer2( spep_0 + 170, 1009, "", 0, 0, 0, -1);

--ラッシュ
SE015 = playSeVer2( spep_0 + 192, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE015, 188 );
SE016 = playSeVer2( spep_0 + 196, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 196, 1010, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 206, 1153, "",spep_0 + 232, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 206, SE018, 79 );
SE019 = playSeVer2( spep_0 + 206, 1110, "",spep_0 + 232, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 206, SE019, 83 );
SE020 = playSeVer2( spep_0 + 216, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE020, 87 );
stopSeIfDoubleSpeed( spep_0 + 216, SE020);
SE021 = playSeVer2( spep_0 + 216, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE021, 153 );
setPitch( spep_0 + 214, SE021, 200 );
setTimeStretch( SE021, 1.13, 30, 4 );
stopSeIfDoubleSpeed( spep_0 + 216, SE021);
SE022 = playSeVer2( spep_0 + 226, 1110, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 226, 1009, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 226, 1153, "",spep_0 + 264, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 236, SE024, 71 );
SE025 = playSeVer2( spep_0 + 236, 1110, "",spep_0 + 262, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 236, SE025, 80 );
SE026 = playSeVer2( spep_0 + 246, 1110, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 246, 1009, "", 0, 0, 0, -1);

--殴り飛ばす
SE028 = playSeVer2( spep_0 + 282, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 282, SE028, 141 );
SE029 = playSeVer2( spep_0 + 290, 1120, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 290, 1110, "", 0, 0, 0, -1);

--オーラ
SE031 = playSeVer2( spep_0 + 316, 1176, "",spep_0 + 478, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 316, SE031, 60 );
SE032 = playSeVer2( spep_0 + 316, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 316, SE032, 56 );
SE034 = playSeVer2( spep_0 + 340, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE034, 56 );

--腕上げる
SE033 = playSeVer2( spep_0 + 322, 1003, "", 0, 0, 0, -1);

--気弾溜め
SE035 = playSeVer2( spep_0 + 358, 1154, "",spep_0 + 476, 0, 14, 0.65);
SE036 = playSeVer2( spep_0 + 358, 1282, "",spep_0 + 478, 0, 14, 0.65);

--オーラ
SE037 = playSeVer2( spep_0 + 374, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 374, SE037, 56 );
SE039 = playSeVer2( spep_0 + 398, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 398, SE039, 56 );
SE041 = playSeVer2( spep_0 + 422, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 422, SE041, 56 );

--腕振りかぶる
SE040 = playSeVer2( spep_0 + 392, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 392, SE040, 71 );

--気弾発射
SE042 = playSeVer2( spep_0 + 426, 1145, "",spep_0 + 476, 0, 14, 0.85);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --460

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 1);

-------------------------------------------------
-- 地上に気功波が着弾
-------------------------------------------------
MAX_FRAME_2 = 198;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ef_002  地上に気功波が着弾
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish, 0);
setEffAlphaKey( spep_2 + 0, finish, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish, 255);

-- ** 音 ** --
--気弾降り注ぐ
SE044 = playSeVer2( spep_1 + 84, 1157, "", spep_1 + 84 + 100, 0, 30, -1);
SE045 = playSeVer2( spep_1 + 84, 1179, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_1 + 84, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE046, 71 );
SE047 = playSeVer2( spep_1 + 84, 1402, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_1 + 84, 1423, "",spep_2 + 68, 0, 36, -1);

--爆発
SE049 = playSeVer2( spep_2 + 32, 1024, "", 0, 0, 0, -1);

--爆発２
SE050 = playSeVer2( spep_2 + 72, 1159, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 72, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 82 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム  198 -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 立って笑み〜片手で気功波
-------------------------------------------------
MAX_FRAME_0 = 460;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- ef_001r  立って笑み〜片手で気功波　敵前面　敵側用
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- ef_001br 立って笑み〜片手で気功波　敵背面　敵側用
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 374;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -155, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -155, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -155, 515.5 , 0 );
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
--敵の動き１
setDisp( spep_0 + 84 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 101 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 84+ OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 84 + OFFSET_X, 1, 196, -103 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 197.6, -103.1 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 208.7, -104.2 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 238.8, -107.1 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 297.4, -112.6 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 394.1, -121.8 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 538.2, -135.4 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 739.4, -154.4 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 739.4, -154.4 , 0 );

setScaleKey( spep_0 + 84 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 4.58, 4.58 );

setRotateKey( spep_0 + 84 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 101 + OFFSET_X, 1, 0 );

--敵の動き２
setDisp( spep_0 + 132 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 178 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 138 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 132 + OFFSET_X, 1, 236.3, 39.4 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 236.7, 39.5 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 237.1, 39.6 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 185.5, 67.3 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 185.5, 67.3 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 192.1, 64.3 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 192.1, 64.3 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 196.5, 60.4 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 196.5, 60.4 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 201.2, 48 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 201.2, 48 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 219, 57.4 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 219, 57.4 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 220.6, 48.1 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 220.6, 48.1 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 228.4, 55.7 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 228.4, 55.7 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 250.1, 50.4 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 250.1, 50.4 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 254, 28.9 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 254, 28.9 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 249.4, 29.2 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 249.4, 29.2 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 257.2, 26.8 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 257.2, 26.8 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 265.1, 24.4 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 265.1, 24.4 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 272.9, 21.9 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 272.9, 21.9 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 280.7, 19.5 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 280.7, 19.5 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 288.5, 17.1 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 288.5, 17.1 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 296.3, 14.7 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 296.3, 14.7 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 304.2, 12.3 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 304.2, 12.3 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 312, 9.8 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 312, 9.8 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 244.4, 226.7 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 244.4, 226.7 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 250, 228.6 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 250, 228.6 , 0 );

setScaleKey( spep_0 + 132 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 2.14, 2.14 );

setRotateKey( spep_0 + 132 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 173 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -82.6 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -82.6 );

--敵の動き３
setDisp( spep_0 + 192 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 314 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 192 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 210 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 218 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 242 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 254 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 192 + OFFSET_X, 1, 49.4, -55.1 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 49.4, -55.1 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 53.9, -53.3 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 53.9, -53.3 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 58.5, -51.4 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 58.5, -51.4 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 58.9, -48.7 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 58.9, -48.7 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 62.1, 24.5 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 62.1, 24.5 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 68.7, 27.5 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 68.7, 27.5 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 73.3, 37.9 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 73.3, 37.9 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 76.5, 34.7 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 76.5, 34.7 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 78.6, 35.4 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 78.6, 35.4 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 40.7, 17.8 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 40.7, 17.8 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 60.2, 41.9 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 60.2, 41.9 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 73.5, 49.2 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 73.5, 49.2 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 63.5, 42.2 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 63.5, 42.2 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 37.4, -63.9 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 37.4, -63.9 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 48.2, -68.4 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 48.2, -68.4 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 57.3, -64.4 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 57.3, -64.4 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 60.5, -61.8 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 60.5, -61.8 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 60.6, -63.2 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 60.6, -63.2 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 60.6, 29 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 60.6, 29 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 64.7, 30.9 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 64.7, 30.9 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 65, 30.7 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 65, 30.7 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 73.4, 39.3 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 73.4, 39.3 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 75.6, 34.5 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 75.6, 34.5 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 76.5, 37.4 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 76.5, 37.4 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 70.4, 38.1 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 70.4, 38.1 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 35.8, 23.7 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 35.8, 23.7 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 55.7, 29.8 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 55.7, 29.8 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 61.9, 41 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 61.9, 41 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 67.4, 43.4 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 67.4, 43.4 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 76, 41.5 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 76, 41.5 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 61.8, 44.9 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 61.8, 44.9 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 35.6, -60.4 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 35.6, -60.4 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 37.5, -61.6 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 37.5, -61.6 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 47, -63.6 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 47, -63.6 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 51.8, -71.6 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 51.8, -71.6 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 55.8, -63.9 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 55.8, -63.9 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 58.8, -59.9 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 58.8, -59.9 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 63, -61.9 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 63, -61.9 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 65.3, -62.4 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 65.3, -62.4 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 67.2, -62.9 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 67.2, -62.9 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 68.9, -63.4 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 68.9, -63.4 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 70.3, -63.9 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 70.3, -63.9 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 71.4, -64.4 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 71.4, -64.4 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 72.3, -64.9 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 72.3, -64.9 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 72.9, -65.4 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 72.9, -65.4 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 73.4, -65.9 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 73.4, -65.9 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 73.8, -66.4 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 73.8, -66.4 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 74, -67 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 74, -67 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 74.1, -67.5 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 74.1, -67.5 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 74.1, -68 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 74.1, -68 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 74.1, -68.5 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 74.1, -68.5 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 74, -69 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 74, -69 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 74, -75.2 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 74, -75.2 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 78.3, -69.4 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 78.3, -69.4 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 64.8, -69.3 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 64.8, -69.3 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 78.6, -75.3 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 78.6, -75.3 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 72.5, -66.9 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 72.5, -66.9 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 72.4, -69.9 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 72.4, -69.9 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 71.3, -64.9 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 71.3, -64.9 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 270, -193.9 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 270, -193.9 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 412.4, -243.7 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 412.4, -243.7 , 0 );

setScaleKey( spep_0 + 192 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 1.47, 1.47 );

setRotateKey( spep_0 + 192 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_0 + 193 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_0 + 194 + OFFSET_X, 1, -32.7 );
setRotateKey( spep_0 + 195 + OFFSET_X, 1, -32.7 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, -29.7 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, -29.7 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -19.5 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, -20.7 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -19.6 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -18.7 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -18.7 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -17.8 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -17 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, -17 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, -16.3 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -15.7 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, -15.2 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -13 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, 41.7 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, 41.7 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, 65 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, 65 );


-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 108, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
SE002 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 238, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 63 );
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 56 );
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 56 );
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 56 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 56 );

--首をひく
SE005 = playSeVer2( spep_0 + 8, 1233, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE005, 68 );
setPitch( spep_0 + 8, SE005, -500 );
setTimeStretch( SE005, 0.67, 30, 4 );

--向かっていく
SE008 = playSeVer2( spep_0 + 70, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 70, 9, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 80, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE010, 65 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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
SE011 = playSeVer2( spep_0 + 134, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE011, 77 );
SE012 = playSeVer2( spep_0 + 134, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE012, 93 );

--パンチ２
SE013 = playSeVer2( spep_0 + 170, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE013, 188 );
SE014 = playSeVer2( spep_0 + 170, 1009, "", 0, 0, 0, -1);

--ラッシュ
SE015 = playSeVer2( spep_0 + 192, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE015, 188 );
SE016 = playSeVer2( spep_0 + 196, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 196, 1010, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 206, 1153, "",spep_0 + 232, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 206, SE018, 79 );
SE019 = playSeVer2( spep_0 + 206, 1110, "",spep_0 + 232, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 206, SE019, 83 );
SE020 = playSeVer2( spep_0 + 216, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE020, 87 );
stopSeIfDoubleSpeed( spep_0 + 216, SE020);
SE021 = playSeVer2( spep_0 + 216, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 216, SE021, 153 );
setPitch( spep_0 + 214, SE021, 200 );
setTimeStretch( SE021, 1.13, 30, 4 );
stopSeIfDoubleSpeed( spep_0 + 216, SE021);
SE022 = playSeVer2( spep_0 + 226, 1110, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 226, 1009, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 226, 1153, "",spep_0 + 264, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 236, SE024, 71 );
SE025 = playSeVer2( spep_0 + 236, 1110, "",spep_0 + 262, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 236, SE025, 80 );
SE026 = playSeVer2( spep_0 + 246, 1110, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 246, 1009, "", 0, 0, 0, -1);

--殴り飛ばす
SE028 = playSeVer2( spep_0 + 282, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 282, SE028, 141 );
SE029 = playSeVer2( spep_0 + 290, 1120, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 290, 1110, "", 0, 0, 0, -1);

--オーラ
SE031 = playSeVer2( spep_0 + 316, 1176, "",spep_0 + 478, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 316, SE031, 60 );
SE032 = playSeVer2( spep_0 + 316, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 316, SE032, 56 );
SE034 = playSeVer2( spep_0 + 340, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 340, SE034, 56 );

--腕上げる
SE033 = playSeVer2( spep_0 + 322, 1003, "", 0, 0, 0, -1);

--気弾溜め
SE035 = playSeVer2( spep_0 + 358, 1154, "",spep_0 + 476, 0, 14, 0.65);
SE036 = playSeVer2( spep_0 + 358, 1282, "",spep_0 + 478, 0, 14, 0.65);

--オーラ
SE037 = playSeVer2( spep_0 + 374, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 374, SE037, 56 );
SE039 = playSeVer2( spep_0 + 398, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 398, SE039, 56 );
SE041 = playSeVer2( spep_0 + 422, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 422, SE041, 56 );

--腕振りかぶる
SE040 = playSeVer2( spep_0 + 392, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 392, SE040, 71 );

--気弾発射
SE042 = playSeVer2( spep_0 + 426, 1145, "",spep_0 + 476, 0, 14, 0.85);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --460

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 1);

-------------------------------------------------
-- 地上に気功波が着弾
-------------------------------------------------
MAX_FRAME_2 = 198;

-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ef_002  地上に気功波が着弾
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish, 0);
setEffAlphaKey( spep_2 + 0, finish, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish, 255);

-- ** 音 ** --
--気弾降り注ぐ
SE044 = playSeVer2( spep_1 + 84, 1157, "", spep_1 + 84 + 100, 0, 30, -1);
SE045 = playSeVer2( spep_1 + 84, 1179, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_1 + 84, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE046, 71 );
SE047 = playSeVer2( spep_1 + 84, 1402, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_1 + 84, 1423, "",spep_2 + 68, 0, 36, -1);

--爆発
SE049 = playSeVer2( spep_2 + 32, 1024, "", 0, 0, 0, -1);

--爆発２
SE050 = playSeVer2( spep_2 + 72, 1159, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 72, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 82 ); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4 ); -- 終了フレーム  198 -4

end
