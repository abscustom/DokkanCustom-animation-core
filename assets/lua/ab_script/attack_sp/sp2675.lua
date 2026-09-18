--4028380:LR_ガンマ1号&ガンマ2号/ガンマ1号_超必殺技：スーパーガンマブラスト(スタンバイ中)
--sp_effect_a9_00124
--sp2675

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162673; --1号アップ～掌底２ ef_001
SP_01b = 162674; --1号アップ～掌底２ ef_001b
SP_02 = 162675; --1号構えアップ～フィニッシュ ef_002
SP_02b = 162676; --1号構えアップ～フィニッシュ ef_002b

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
-- 1号アップ～掌底２
-------------------------------------------------
MAX_FRAME_0 = 392;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 1号アップ～掌底２(ef_001)
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0);
setEffAlphaKey( spep_0 + 0, base_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255);

base_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 1号アップ～掌底２(ef_001b)
setEffMoveKey( spep_0 + 0, base_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_b, 0);
setEffAlphaKey( spep_0 + 0, base_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 150 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 308 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 150 + OFFSET_X, 1, 0 );
changeAnime( spep_0 + 172 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 198 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 222 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 258 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 150 + OFFSET_X, 1, -323.5, -41.3 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -323.5, -41.3 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -280.5, -48.6 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -280.5, -48.6 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -238.8, -55.7 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -238.8, -55.7 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -198.2, -62.6 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -198.2, -62.6 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -158.8, -69.3 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -158.8, -69.3 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -120.6, -75.8 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -120.6, -75.8 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -83.6, -82.1 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -83.6, -82.1 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -47.8, -88.2 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -47.8, -88.2 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -13.2, -94 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -13.2, -94 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 20.1, -99.7 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 20.1, -99.7 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 52.3, -105.1 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 52.3, -105.1 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 58.3, -105.8 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 58.3, -105.8 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 64.4, -106.5 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 64.4, -106.5 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 70.7, -107.2 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 70.7, -107.2 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 77.2, -107.9 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 77.2, -107.9 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 83.8, -108.7 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 83.8, -108.7 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 90.6, -109.4 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 90.6, -109.4 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 97.5, -110.2 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 97.5, -110.2 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 104.6, -111 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 104.6, -111 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 111.9, -111.8 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 111.9, -111.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 119.4, -112.7 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 119.4, -112.7 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 127, -113.5 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 127, -113.5 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 134.7, -114.4 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 134.7, -114.4 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 142.6, -115.2 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 142.6, -115.2 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 233.6, -46.9 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X ,1 ,233.6 ,-46.9 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X ,1 ,200.3 ,-80.1 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X ,1 ,200.3 ,-80.1 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X ,1 ,178.2 ,-101.5 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X ,1 ,178.2 ,-101.5 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X ,1 ,164.4 ,-114.4 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X ,1 ,164.4 ,-114.4 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X ,1 ,156.4 ,-121.2 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X ,1 ,156.4 ,-121.2 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X ,1 ,152.2 ,-123.9 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X ,1 ,152.2 ,-123.9 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X ,1 ,148.7 ,-129.2 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X ,1 ,148.7 ,-129.2 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X ,1 ,146.6 ,-132.9 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X ,1 ,146.6 ,-132.9 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X ,1 ,145.2 ,-135.9 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X ,1 ,145.2 ,-135.9 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X ,1 ,144.1 ,-138.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X ,1 ,144.1 ,-138.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X ,1 ,143.1 ,-141.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X ,1 ,143.1 ,-141.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X ,1 ,198.8 ,-21.3 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X ,1 ,198.8 ,-21.3 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X ,1 ,12.8 ,-213.8 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X ,1 ,12.8 ,-213.8 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X ,1 ,-70.7 ,-293.7 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X ,1 ,-70.7 ,-293.7 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X ,1 ,-41.1 ,-217.1 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X ,1 ,-41.1 ,-217.1 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X ,1 ,9.5 ,-188.6 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X ,1 ,9.5 ,-188.6 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X ,1 ,59.7 ,-132.8 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X ,1 ,59.7 ,-132.8 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X ,1 ,80.9 ,-48.5 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X ,1 ,80.9 ,-48.5 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 148.8, 180.4 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 148.8, 180.4 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 196.6, 212.1 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 196.6, 212.1 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 241.1, 238.3 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 241.1, 238.3 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 263.4, 293.1 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 263.4, 293.1 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 282.3, 342.4 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 282.3, 342.4 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 314.7, 385.5 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 314.7, 385.5 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 313.8, 394.8 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 313.8, 394.8 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 360, 416.1 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 360, 416.1 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 351, 461.9 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 351, 461.9 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 362.4, 451.8 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 362.4, 451.8 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 372, 478.9 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 372, 478.9 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 357.9, 475.3 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 357.9, 475.3 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -12.7, -55 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -12.7, -55 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 36.6, -21.8 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 36.6, -21.8 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 85.8, 11.2 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 85.8, 11.2 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 134.6, 44 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 134.6, 44 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 182.8, 76.3 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 182.8, 76.3 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 230.1, 108.2 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 230.1, 108.2 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 272.5, 135 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 272.5, 135 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 313.8, 161 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 313.8, 161 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 353.7, 186.2 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 353.7, 186.2 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 392, 210.4 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 392, 210.4 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 428.6, 233.3 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 428.6, 233.3 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 467.4, 258.3 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 467.4, 258.3 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 504.1, 282 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 504.1, 282 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 538.6, 304.1 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 538.6, 304.1 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 570.8, 324.8 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 570.8, 324.8 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 600.5, 343.9 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 600.5, 343.9 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 627.6, 361.3 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 627.6, 361.3 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 652.5, 376.3 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 652.5, 376.3 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 661.4, 379.8 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 661.4, 379.8 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 682.8, 390 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 682.8, 390 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 691.9, 406 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 691.9, 406 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 706.4, 406.1 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 706.4, 406.1 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 714.3, 418.1 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 714.3, 418.1 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 714.3, 412.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 714.3, 412.3 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 728.4, 424.2 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 728.4, 424.2 , 0 );

setScaleKey( spep_0 + 150 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 4.21, 4.21 );

setRotateKey( spep_0 + 150 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, -2.2 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, -0.1 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -45 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -29.7 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -29.7 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -29.4 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -29.4 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, -29 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -28.6 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, -28.6 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -28.3 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -28.3 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, -27.2 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, -27.2 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, -26.6 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, -26.3 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, -26.3 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, -26 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -26 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -25.7 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, -25.7 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -25.2 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -25.2 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -25 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -25 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -24.6 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -24.5 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -24.5 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -24.3 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -24.3 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -24.1 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, -24.1 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, -24 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, -24 );

setBlendColor( spep_0 + 150 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 308 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );

--敵の動き2
setDisp( spep_0 + 356 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 392 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 356 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 366 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 356 + OFFSET_X, 1, -236, -433.3 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -236, -433.3 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -54, -310.8 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -54, -310.8 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -105.6, -241.1 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -105.6, -241.1 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -65.4, -303.7 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -65.4, -303.7 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 149.3, -49.5 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 149.3, -49.5 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 153.3, 13.7 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 153.3, 13.7 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 154.7, 76.1 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 154.7, 76.1 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 184.1, 40.5 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 184.1, 40.5 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 210.9, 4.3 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 210.9, 4.3 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 248.2, 30.5 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 248.2, 30.5 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 283, 55.9 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 283, 55.9 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 282.6, 51.2 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 282.6, 51.2 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 279.6, 45.9 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 279.6, 45.9 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 289.9, 62.5 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 289.9, 62.5 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 307.2, 46.9 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 307.2, 46.9 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 300.3, 52.2 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 300.3, 52.2 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 310.4, 62.2 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 310.4, 62.2 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 307.9, 60.5 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 307.9, 60.5 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 305.5, 58.9 , 0 );

setScaleKey( spep_0 + 356 + OFFSET_X, 1, 8.21, 8.21 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 8.21, 8.21 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 7.11, 7.11 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 7.11, 7.11 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 6.45, 6.45 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 6.45, 6.45 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 6.23, 6.23 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 6.23, 6.23 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.81, 0.81 );

setRotateKey( spep_0 + 356 + OFFSET_X, 1, -22.7 );
setRotateKey( spep_0 + 363 + OFFSET_X, 1, -22.7 );
setRotateKey( spep_0 + 364 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, 4 );

setBlendColor( spep_0 + 356 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 392 + OFFSET_X, 1, 3, 0, 0, 0, 0.0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 420, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--表情変わる
SE003 = playSeVer2( spep_0 + 44, 1387, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE003, 63 );
SE004 = playSeVer2( spep_0 + 48, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE004, 166 );
--1号回りこんでいく
SE005 = playSeVer2( spep_0 + 106, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE005, 124 );
SE006 = playSeVer2( spep_0 + 114, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE006, 143 );
SE007 = playSeVer2( spep_0 + 124, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 124, SE007, 129 );
SE008 = playSeVer2( spep_0 + 128, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE008, 72 );
SE009 = playSeVer2( spep_0 + 138, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE009, 79 );
setTimeStretch( SE009, 1.41, 30, 4 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 200; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);

    pauseAll( SP_dodge, 67);
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
   
    setBlendColor( SP_dodge + 8 , 1, 3, 0, 0, 0, 0 );

    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
    
-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--アッパー
SE010 = playSeVer2( spep_0 + 204, 1003, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 212, 1187, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 212, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 212, SE012, 84 );
SE013 = playSeVer2( spep_0 + 212, 1110, "", 0, 0, 0, -1);
--敵飛んでいく
SE014 = playSeVer2( spep_0 + 246, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 246, SE014, 71 );
--追いかける
SE015 = playSeVer2( spep_0 + 268, 1117, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 268, 1182, "", 0, 0, 0, -1);
--振りかぶる
SE017 = playSeVer2( spep_0 + 278, 1072, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 300, 1004, "", 0, 0, 0, -1);
--平手打ち
SE019 = playSeVer2( spep_0 + 348, 1110, "",spep_0 + 404, 0, 12, -1);
SE020 = playSeVer2( spep_0 + 348, 1387, "",spep_0 + 406, 0, 14, -1);
SE021 = playSeVer2( spep_0 + 350, 1187, "",spep_0 + 404, 0, 12, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0 -2;--392F

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

-------------------------------------------------
-- 1号構えアップ～フィニッシュ
-------------------------------------------------
MAX_FRAME_1 = 372;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 1号構えアップ～フィニッシュ(ef_002)
setEffMoveKey( spep_1 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_f, 0);
setEffAlphaKey( spep_1 + 0, finish_f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_f, 255);

finish_b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 1号構えアップ～フィニッシュ(ef_002b)
setEffMoveKey( spep_1 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_b, 0);
setEffAlphaKey( spep_1 + 0, finish_b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_1 + 208 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 250 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 208 + OFFSET_X, 1, 105 );

setMoveKey( spep_1 + 208 + OFFSET_X, 1, 13.7, -375.1 , 0 );
setMoveKey( spep_1 + 209 + OFFSET_X, 1, 13.7, -375.1 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, 4.1, -346.9 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_X, 1, 4.1, -346.9 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, -5.4, -321.5 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_X, 1, -5.4, -321.5 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, 3.6, -273.8 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_X, 1, 3.6, -273.8 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 12.6, -228.9 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_X, 1, 12.6, -228.9 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 5.4, -198.1 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_X, 1, 5.4, -198.1 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, -1.7, -170.1 , 0 );
setMoveKey( spep_1 + 221 + OFFSET_X, 1, -1.7, -170.1 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, 3.8, -147.1 , 0 );
setMoveKey( spep_1 + 223 + OFFSET_X, 1, 3.8, -147.1 , 0 );
setMoveKey( spep_1 + 224 + OFFSET_X, 1, 9.3, -127 , 0 );
setMoveKey( spep_1 + 225 + OFFSET_X, 1, 9.3, -127 , 0 );
setMoveKey( spep_1 + 226 + OFFSET_X, 1, 3.8, -101.6 , 0 );
setMoveKey( spep_1 + 227 + OFFSET_X, 1, 3.8, -101.6 , 0 );
setMoveKey( spep_1 + 228 + OFFSET_X, 1, -1.6, -78.9 , 0 );
setMoveKey( spep_1 + 229 + OFFSET_X, 1, -1.6, -78.9 , 0 );
setMoveKey( spep_1 + 230 + OFFSET_X, 1, 4.1, -68.1 , 0 );
setMoveKey( spep_1 + 231 + OFFSET_X, 1, 4.1, -68.1 , 0 );
setMoveKey( spep_1 + 232 + OFFSET_X, 1, 9.7, -60.2 , 0 );
setMoveKey( spep_1 + 233 + OFFSET_X, 1, 9.7, -60.2 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, 4.4, -46.9 , 0 );
setMoveKey( spep_1 + 235 + OFFSET_X, 1, 4.4, -46.9 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, -0.9, -36.4 , 0 );
setMoveKey( spep_1 + 237 + OFFSET_X, 1, -0.9, -36.4 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, 6.5, -31 , 0 );
setMoveKey( spep_1 + 239 + OFFSET_X, 1, 6.5, -31 , 0 );
setMoveKey( spep_1 + 240 + OFFSET_X, 1, 13.9, -28.4 , 0 );
setMoveKey( spep_1 + 241 + OFFSET_X, 1, 13.9, -28.4 , 0 );
setMoveKey( spep_1 + 242 + OFFSET_X, 1, 5.9, -26.5 , 0 );
setMoveKey( spep_1 + 243 + OFFSET_X, 1, 5.9, -26.5 , 0 );
setMoveKey( spep_1 + 244 + OFFSET_X, 1, -1.9, -24.6 , 0 );
setMoveKey( spep_1 + 245 + OFFSET_X, 1, -1.9, -24.6 , 0 );
setMoveKey( spep_1 + 246 + OFFSET_X, 1, 3, -25.1 , 0 );
setMoveKey( spep_1 + 247 + OFFSET_X, 1, 3, -25.1 , 0 );
setMoveKey( spep_1 + 248 + OFFSET_X, 1, 7.9, -25.7 , 0 );
setMoveKey( spep_1 + 249 + OFFSET_X, 1, 7.9, -25.7 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, 1.8, -18.2 , 0 );

setScaleKey( spep_1 + 208 + OFFSET_X, 1, 7.99, 7.99 );
setScaleKey( spep_1 + 209 + OFFSET_X, 1, 7.99, 7.99 );
setScaleKey( spep_1 + 210 + OFFSET_X, 1, 7.12, 7.12 );
setScaleKey( spep_1 + 211 + OFFSET_X, 1, 7.12, 7.12 );
setScaleKey( spep_1 + 212 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_1 + 213 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_1 + 214 + OFFSET_X, 1, 5.55, 5.55 );
setScaleKey( spep_1 + 215 + OFFSET_X, 1, 5.55, 5.55 );
setScaleKey( spep_1 + 216 + OFFSET_X, 1, 4.84, 4.84 );
setScaleKey( spep_1 + 217 + OFFSET_X, 1, 4.84, 4.84 );
setScaleKey( spep_1 + 218 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_1 + 219 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_1 + 220 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_1 + 221 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_1 + 222 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_1 + 223 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_1 + 224 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_1 + 225 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_1 + 226 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_1 + 227 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_1 + 228 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_1 + 229 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_1 + 230 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 231 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 232 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 233 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 234 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 235 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 236 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 237 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 238 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 239 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 240 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 241 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 242 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 243 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 244 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 245 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 246 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 247 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 248 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_1 + 249 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_1 + 250 + OFFSET_X, 1, 0.51, 0.51 );

setRotateKey( spep_1 + 208 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 250 + OFFSET_X, 1, 0 );

setBlendColor( spep_1 + 208 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_1 + 250 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--銃構える
SE023 = playSeVer2( spep_1 + 0, 1389, "", 0, 0, 0, -1);
--銃溜め
SE024 = playSeVer2( spep_1 + 18, 1443, "",spep_1 + 218, 12, 26, -1);
setSeVolumeByWorkId( spep_1 + 18, SE024, 193 );
setStartTimeMs( SE024,  400 );
SE025 = playSeVer2( spep_1 + 2, 1271, "",spep_1 + 216, 0, 22, -1);
SE026 = playSeVer2( spep_1 + 20, 1275, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_1 + 20, 1393, "",spep_1 + 216, 0, 24, -1);
--銃溜め２
SE028 = playSeVer2( spep_1 + 118, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 118, SE028, 92 );
setPitch( spep_1 + 118, SE028, -600 );
setTimeStretch( SE028, 0.6, 30, 4 );
SE030 = playSeVer2( spep_1 + 118, 1313, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 118, 1354, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_1 + 120, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE029,  33 );
--気弾発射
SE032 = playSeVer2( spep_1 + 182, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 182, SE032, 141 );
SE033 = playSeVer2( spep_1 + 182, 1193, "",spep_1 + 286, 0, 34, -1);
SE034 = playSeVer2( spep_1 + 182, 1027, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_1 + 182, 1177, "",spep_1 + 280, 0, 28, -1);
--爆発
SE036 = playSeVer2( spep_1 + 248, 1159, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_1 + 254, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 260); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -2); -- 372F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 1号アップ～掌底２
-------------------------------------------------
MAX_FRAME_0 = 392;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 1号アップ～掌底２(ef_001)
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0);
setEffAlphaKey( spep_0 + 0, base_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255);

base_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 1号アップ～掌底２(ef_001b)
setEffMoveKey( spep_0 + 0, base_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_b, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_b, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_b, 0);
setEffAlphaKey( spep_0 + 0, base_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 150 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 308 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 150 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 172 + OFFSET_X, 1, 0 );
changeAnime( spep_0 + 198 + OFFSET_X, 1, 18 );
changeAnime( spep_0 + 222 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 258 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 150 + OFFSET_X, 1, 323.5, -41.3 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 323.5, -41.3 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 280.5, -48.6 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 280.5, -48.6 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 238.8, -55.7 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 238.8, -55.7 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 198.2, -62.6 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 198.2, -62.6 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 158.8, -69.3 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 158.8, -69.3 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 120.6, -75.8 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 120.6, -75.8 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 83.6, -82.1 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 83.6, -82.1 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 47.8, -88.2 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 47.8, -88.2 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 13.2, -94 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 13.2, -94 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -20.1, -99.7 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -20.1, -99.7 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -52.3, -105.1 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -52.3, -105.1 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -58.3, -105.8 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -58.3, -105.8 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -64.4, -106.5 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -64.4, -106.5 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -70.7, -107.2 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -70.7, -107.2 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -77.2, -107.9 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -77.2, -107.9 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -83.8, -108.7 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -83.8, -108.7 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -90.6, -109.4 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -90.6, -109.4 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -97.5, -110.2 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -97.5, -110.2 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -104.6, -111 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -104.6, -111 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -111.9, -111.8 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -111.9, -111.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -119.4, -112.7 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -119.4, -112.7 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -127, -113.5 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -127, -113.5 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -134.7, -114.4 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -134.7, -114.4 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -142.6, -115.2 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -142.6, -115.2 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -233.6, -46.9 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X ,1 ,-233.6 ,-46.9 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X ,1 ,-200.3 ,-80.1 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X ,1 ,-200.3 ,-80.1 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X ,1 ,-178.2 ,-101.5 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X ,1 ,-178.2 ,-101.5 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X ,1 ,-164.4 ,-114.4 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X ,1 ,-164.4 ,-114.4 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X ,1 ,-156.4 ,-121.2 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X ,1 ,-156.4 ,-121.2 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X ,1 ,-152.2 ,-123.9 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X ,1 ,-152.2 ,-123.9 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X ,1 ,-148.7 ,-129.2 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X ,1 ,-148.7 ,-129.2 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X ,1 ,-146.6 ,-132.9 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X ,1 ,-146.6 ,-132.9 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X ,1 ,-145.2 ,-135.9 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X ,1 ,-145.2 ,-135.9 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X ,1 ,-144.1 ,-138.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X ,1 ,-144.1 ,-138.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X ,1 ,-143.1 ,-141.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X ,1 ,-143.1 ,-141.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X ,1 ,-198.8 ,-21.3 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X ,1 ,-198.8 ,-21.3 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X ,1 ,-12.8 ,-213.8 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X ,1 ,-12.8 ,-213.8 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X ,1 ,70.7 ,-293.7 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X ,1 ,70.7 ,-293.7 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X ,1 ,41.1 ,-217.1 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X ,1 ,41.1 ,-217.1 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X ,1 ,-9.5 ,-188.6 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X ,1 ,-9.5 ,-188.6 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X ,1 ,-59.7 ,-132.8 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X ,1 ,-59.7 ,-132.8 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X ,1 ,-80.9 ,-48.5 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X ,1 ,-80.9 ,-48.5 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -148.8, 180.4 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -148.8, 180.4 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -196.6, 212.1 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -196.6, 212.1 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -241.1, 238.3 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -241.1, 238.3 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -263.4, 293.1 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -263.4, 293.1 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -282.3, 342.4 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -282.3, 342.4 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -314.7, 385.5 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -314.7, 385.5 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -313.8, 394.8 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -313.8, 394.8 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -360, 416.1 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -360, 416.1 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -351, 461.9 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -351, 461.9 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -362.4, 451.8 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -362.4, 451.8 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -372, 478.9 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -372, 478.9 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -357.9, 475.3 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -357.9, 475.3 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 12.7, -55 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 12.7, -55 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -36.6, -21.8 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -36.6, -21.8 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -85.8, 11.2 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -85.8, 11.2 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -134.6, 44 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -134.6, 44 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -182.8, 76.3 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -182.8, 76.3 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -230.1, 108.2 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -230.1, 108.2 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -272.5, 135 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -272.5, 135 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -313.8, 161 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -313.8, 161 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -353.7, 186.2 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -353.7, 186.2 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -392, 210.4 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -392, 210.4 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -428.6, 233.3 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -428.6, 233.3 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -467.4, 258.3 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -467.4, 258.3 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -504.1, 282 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -504.1, 282 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -538.6, 304.1 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -538.6, 304.1 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -570.8, 324.8 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -570.8, 324.8 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -600.5, 343.9 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -600.5, 343.9 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -627.6, 361.3 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -627.6, 361.3 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -652.5, 376.3 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -652.5, 376.3 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -661.4, 379.8 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -661.4, 379.8 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -682.8, 390 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -682.8, 390 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -691.9, 406 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -691.9, 406 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -706.4, 406.1 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -706.4, 406.1 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -714.3, 418.1 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -714.3, 418.1 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -714.3, 412.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -714.3, 412.3 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -728.4, 424.2 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -728.4, 424.2 , 0 );

setScaleKey( spep_0 + 150 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 247 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 3.27, 3.27 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 3.55, 3.55 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 4.15, 4.15 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 4.21, 4.21 );

setRotateKey( spep_0 + 150 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_0 + 199 + OFFSET_X, 1, 3.5 );
setRotateKey( spep_0 + 200 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_0 + 201 + OFFSET_X, 1, 2.2 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_0 + 205 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_0 + 206 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, 0.4 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, 0.2 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_0 + 211 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_0 + 212 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 221 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 222 + OFFSET_X, 1, 45 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, 45 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, 29.4 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, 29.4 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, 29 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, 29 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 27.9 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, 27.9 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 27.2 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 27.2 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 26.9 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 26.9 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 26.6 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, 26.6 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, 26.3 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 26.3 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 26 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, 26 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, 25.7 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, 25.7 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, 25.5 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, 25.5 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, 25.2 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 25.2 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, 25 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, 25 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 24.8 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, 24.8 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 24.6 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, 24.6 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, 24.5 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, 24.5 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 24.3 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, 24.3 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, 24.2 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, 24.2 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, 24.1 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, 24.1 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, 24 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, 24 );

setBlendColor( spep_0 + 150 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 308 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );

--敵の動き2
setDisp( spep_0 + 356 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 392 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 356 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 366 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 356 + OFFSET_X, 1, 236, -433.3 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 236, -433.3 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 54, -310.8 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 54, -310.8 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 105.6, -241.1 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 105.6, -241.1 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 65.4, -303.7 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 65.4, -303.7 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -149.3, -49.5 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -149.3, -49.5 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -153.3, 13.7 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -153.3, 13.7 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -154.7, 76.1 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -154.7, 76.1 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -184.1, 40.5 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -184.1, 40.5 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -210.9, 4.3 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -210.9, 4.3 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -248.2, 30.5 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -248.2, 30.5 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -283, 55.9 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -283, 55.9 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -282.6, 51.2 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -282.6, 51.2 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -279.6, 45.9 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -279.6, 45.9 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -289.9, 62.5 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -289.9, 62.5 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -307.2, 46.9 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -307.2, 46.9 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -300.3, 52.2 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -300.3, 52.2 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -310.4, 62.2 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -310.4, 62.2 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -307.9, 60.5 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -307.9, 60.5 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -305.5, 58.9 , 0 );

setScaleKey( spep_0 + 356 + OFFSET_X, 1, 8.21, 8.21 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 8.21, 8.21 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 7.11, 7.11 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 7.11, 7.11 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 6.45, 6.45 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 6.45, 6.45 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 6.23, 6.23 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 6.23, 6.23 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.81, 0.81 );

setRotateKey( spep_0 + 356 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_0 + 363 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_0 + 364 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, -4 );

setBlendColor( spep_0 + 356 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 392 + OFFSET_X, 1, 3, 0, 0, 0, 0.0 );

--敵の動き2
setDisp( spep_0 + 356 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 392 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 356 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 366 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 356 + OFFSET_X, 1, 236, -433.3 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 236, -433.3 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 54, -310.8 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 54, -310.8 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 105.6, -241.1 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 105.6, -241.1 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 65.4, -303.7 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 65.4, -303.7 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -149.3, -49.5 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -149.3, -49.5 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -153.3, 13.7 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -153.3, 13.7 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -154.7, 76.1 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -154.7, 76.1 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -184.1, 40.5 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -184.1, 40.5 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -210.9, 4.3 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -210.9, 4.3 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -248.2, 30.5 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -248.2, 30.5 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -283, 55.9 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -283, 55.9 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -282.6, 51.2 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -282.6, 51.2 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -279.6, 45.9 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -279.6, 45.9 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -289.9, 62.5 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, -289.9, 62.5 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, -307.2, 46.9 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -307.2, 46.9 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -300.3, 52.2 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -300.3, 52.2 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -310.4, 62.2 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -310.4, 62.2 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -307.9, 60.5 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -307.9, 60.5 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -305.5, 58.9 , 0 );

setScaleKey( spep_0 + 356 + OFFSET_X, 1, 8.21, 8.21 );
setScaleKey( spep_0 + 357 + OFFSET_X, 1, 8.21, 8.21 );
setScaleKey( spep_0 + 358 + OFFSET_X, 1, 7.11, 7.11 );
setScaleKey( spep_0 + 359 + OFFSET_X, 1, 7.11, 7.11 );
setScaleKey( spep_0 + 360 + OFFSET_X, 1, 6.45, 6.45 );
setScaleKey( spep_0 + 361 + OFFSET_X, 1, 6.45, 6.45 );
setScaleKey( spep_0 + 362 + OFFSET_X, 1, 6.23, 6.23 );
setScaleKey( spep_0 + 363 + OFFSET_X, 1, 6.23, 6.23 );
setScaleKey( spep_0 + 364 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 367 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 368 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 369 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 370 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 371 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 372 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 373 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 374 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.81, 0.81 );

setRotateKey( spep_0 + 356 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_0 + 363 + OFFSET_X, 1, 22.7 );
setRotateKey( spep_0 + 364 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, -4 );

setBlendColor( spep_0 + 356 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_0 + 392 + OFFSET_X, 1, 3, 0, 0, 0, 0.0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 420, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
--表情変わる
SE003 = playSeVer2( spep_0 + 44, 1387, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE003, 63 );
SE004 = playSeVer2( spep_0 + 48, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE004, 166 );
--1号回りこんでいく
SE005 = playSeVer2( spep_0 + 106, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE005, 124 );
SE006 = playSeVer2( spep_0 + 114, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE006, 143 );
SE007 = playSeVer2( spep_0 + 124, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 124, SE007, 129 );
SE008 = playSeVer2( spep_0 + 128, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE008, 72 );
SE009 = playSeVer2( spep_0 + 138, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE009, 79 );
setTimeStretch( SE009, 1.41, 30, 4 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 200; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);

    pauseAll( SP_dodge, 67);
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
   
    setBlendColor( SP_dodge + 8 , 1, 3, 0, 0, 0, 0 );

    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
    
-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--アッパー
SE010 = playSeVer2( spep_0 + 204, 1003, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 212, 1187, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 212, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 212, SE012, 84 );
SE013 = playSeVer2( spep_0 + 212, 1110, "", 0, 0, 0, -1);
--敵飛んでいく
SE014 = playSeVer2( spep_0 + 246, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 246, SE014, 71 );
--追いかける
SE015 = playSeVer2( spep_0 + 268, 1117, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 268, 1182, "", 0, 0, 0, -1);
--振りかぶる
SE017 = playSeVer2( spep_0 + 278, 1072, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 300, 1004, "", 0, 0, 0, -1);
--平手打ち
SE019 = playSeVer2( spep_0 + 348, 1110, "",spep_0 + 404, 0, 12, -1);
SE020 = playSeVer2( spep_0 + 348, 1387, "",spep_0 + 406, 0, 14, -1);
SE021 = playSeVer2( spep_0 + 350, 1187, "",spep_0 + 404, 0, 12, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0 -2;--392F

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 0);

-------------------------------------------------
-- 1号構えアップ～フィニッシュ
-------------------------------------------------
MAX_FRAME_1 = 372;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 1号構えアップ～フィニッシュ(ef_002)
setEffMoveKey( spep_1 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_f, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_f, 0);
setEffAlphaKey( spep_1 + 0, finish_f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_f, 255);

finish_b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 1号構えアップ～フィニッシュ(ef_002b)
setEffMoveKey( spep_1 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, finish_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, finish_b, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, finish_b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, finish_b, 0);
setEffAlphaKey( spep_1 + 0, finish_b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_1 + 208 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 250 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 208 + OFFSET_X, 1, 5 );

setMoveKey( spep_1 + 208 + OFFSET_X, 1, 13.7, -375.1 , 0 );
setMoveKey( spep_1 + 209 + OFFSET_X, 1, 13.7, -375.1 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, 4.1, -346.9 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_X, 1, 4.1, -346.9 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, -5.4, -321.5 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_X, 1, -5.4, -321.5 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, 3.6, -273.8 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_X, 1, 3.6, -273.8 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 12.6, -228.9 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_X, 1, 12.6, -228.9 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 5.4, -198.1 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_X, 1, 5.4, -198.1 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, -1.7, -170.1 , 0 );
setMoveKey( spep_1 + 221 + OFFSET_X, 1, -1.7, -170.1 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, 3.8, -147.1 , 0 );
setMoveKey( spep_1 + 223 + OFFSET_X, 1, 3.8, -147.1 , 0 );
setMoveKey( spep_1 + 224 + OFFSET_X, 1, 9.3, -127 , 0 );
setMoveKey( spep_1 + 225 + OFFSET_X, 1, 9.3, -127 , 0 );
setMoveKey( spep_1 + 226 + OFFSET_X, 1, 3.8, -101.6 , 0 );
setMoveKey( spep_1 + 227 + OFFSET_X, 1, 3.8, -101.6 , 0 );
setMoveKey( spep_1 + 228 + OFFSET_X, 1, -1.6, -78.9 , 0 );
setMoveKey( spep_1 + 229 + OFFSET_X, 1, -1.6, -78.9 , 0 );
setMoveKey( spep_1 + 230 + OFFSET_X, 1, 4.1, -68.1 , 0 );
setMoveKey( spep_1 + 231 + OFFSET_X, 1, 4.1, -68.1 , 0 );
setMoveKey( spep_1 + 232 + OFFSET_X, 1, 9.7, -60.2 , 0 );
setMoveKey( spep_1 + 233 + OFFSET_X, 1, 9.7, -60.2 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, 4.4, -46.9 , 0 );
setMoveKey( spep_1 + 235 + OFFSET_X, 1, 4.4, -46.9 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, -0.9, -36.4 , 0 );
setMoveKey( spep_1 + 237 + OFFSET_X, 1, -0.9, -36.4 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, 6.5, -31 , 0 );
setMoveKey( spep_1 + 239 + OFFSET_X, 1, 6.5, -31 , 0 );
setMoveKey( spep_1 + 240 + OFFSET_X, 1, 13.9, -28.4 , 0 );
setMoveKey( spep_1 + 241 + OFFSET_X, 1, 13.9, -28.4 , 0 );
setMoveKey( spep_1 + 242 + OFFSET_X, 1, 5.9, -26.5 , 0 );
setMoveKey( spep_1 + 243 + OFFSET_X, 1, 5.9, -26.5 , 0 );
setMoveKey( spep_1 + 244 + OFFSET_X, 1, -1.9, -24.6 , 0 );
setMoveKey( spep_1 + 245 + OFFSET_X, 1, -1.9, -24.6 , 0 );
setMoveKey( spep_1 + 246 + OFFSET_X, 1, 3, -25.1 , 0 );
setMoveKey( spep_1 + 247 + OFFSET_X, 1, 3, -25.1 , 0 );
setMoveKey( spep_1 + 248 + OFFSET_X, 1, 7.9, -25.7 , 0 );
setMoveKey( spep_1 + 249 + OFFSET_X, 1, 7.9, -25.7 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, 1.8, -18.2 , 0 );

setScaleKey( spep_1 + 208 + OFFSET_X, 1, 7.99, 7.99 );
setScaleKey( spep_1 + 209 + OFFSET_X, 1, 7.99, 7.99 );
setScaleKey( spep_1 + 210 + OFFSET_X, 1, 7.12, 7.12 );
setScaleKey( spep_1 + 211 + OFFSET_X, 1, 7.12, 7.12 );
setScaleKey( spep_1 + 212 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_1 + 213 + OFFSET_X, 1, 6.3, 6.3 );
setScaleKey( spep_1 + 214 + OFFSET_X, 1, 5.55, 5.55 );
setScaleKey( spep_1 + 215 + OFFSET_X, 1, 5.55, 5.55 );
setScaleKey( spep_1 + 216 + OFFSET_X, 1, 4.84, 4.84 );
setScaleKey( spep_1 + 217 + OFFSET_X, 1, 4.84, 4.84 );
setScaleKey( spep_1 + 218 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_1 + 219 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_1 + 220 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_1 + 221 + OFFSET_X, 1, 3.61, 3.61 );
setScaleKey( spep_1 + 222 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_1 + 223 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_1 + 224 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_1 + 225 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_1 + 226 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_1 + 227 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_1 + 228 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_1 + 229 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_1 + 230 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 231 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 232 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 233 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 234 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 235 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_1 + 236 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 237 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 238 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 239 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 240 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 241 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 242 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 243 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 244 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 245 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 246 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 247 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 248 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_1 + 249 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_1 + 250 + OFFSET_X, 1, 0.51, 0.51 );

setRotateKey( spep_1 + 208 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 250 + OFFSET_X, 1, 0 );

setBlendColor( spep_1 + 208 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_1 + 250 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--銃構える
SE023 = playSeVer2( spep_1 + 0, 1389, "", 0, 0, 0, -1);
--銃溜め
SE024 = playSeVer2( spep_1 + 18, 1443, "",spep_1 + 218, 12, 26, -1);
setSeVolumeByWorkId( spep_1 + 18, SE024, 193 );
setStartTimeMs( SE024,  400 );
SE025 = playSeVer2( spep_1 + 2, 1271, "",spep_1 + 216, 0, 22, -1);
SE026 = playSeVer2( spep_1 + 20, 1275, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_1 + 20, 1393, "",spep_1 + 216, 0, 24, -1);
--銃溜め２
SE028 = playSeVer2( spep_1 + 118, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 118, SE028, 92 );
setPitch( spep_1 + 118, SE028, -600 );
setTimeStretch( SE028, 0.6, 30, 4 );
SE030 = playSeVer2( spep_1 + 118, 1313, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 118, 1354, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_1 + 120, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE029,  33 );
--気弾発射
SE032 = playSeVer2( spep_1 + 182, 1402, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 182, SE032, 141 );
SE033 = playSeVer2( spep_1 + 182, 1193, "",spep_1 + 286, 0, 34, -1);
SE034 = playSeVer2( spep_1 + 182, 1027, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_1 + 182, 1177, "",spep_1 + 280, 0, 28, -1);
--爆発
SE036 = playSeVer2( spep_1 + 248, 1159, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_1 + 254, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 260); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -2); -- 372F

end