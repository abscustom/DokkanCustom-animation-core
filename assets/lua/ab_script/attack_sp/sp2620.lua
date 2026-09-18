--1027460:LR_リブリアン&カクンサ&ロージィ_超必殺技：ラブリーファンタジア
--sp_effect_a9_00116
--sp2620

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162288;	--ef_001bとセット。敵の手前に配置。
SP_01b = 162290;	--ef_001とセット。敵の奥に配置。
SP_02 = 162291;		--ef_002bとセット。敵の手前に配置。
SP_02b = 162293;	--ef_002とセット。敵の奥に配置。

--エフェクト(てき)
SP_01r = 162289;	--敵側　ef_001bとセット。敵の手前に配置。
SP_01br = 162290;	--ef_001とセット。敵の奥に配置。
SP_02r = 162292;	--敵側　ef_002bとセット。敵の手前に配置。
SP_02br = 162293;	--ef_002とセット。敵の奥に配置。


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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕～カードまで
-------------------------------------------------

MAX_FRAME_0 = 520;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 前面(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 背面(ef_002)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);


-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 136 + OFFSET_X, 1, 1);
setDisp( spep_0 + 290 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 136 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 152 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 182 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 210 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 136 + OFFSET_X, 1, 107.7, -71.6 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 107.6, -71.4 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 107.4, -71 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 107.1, -70.4 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 106.6, -69.5 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 105.9, -68.3 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 105.2, -66.9 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 104.2, -65.2 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 104.2, -65.2 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 221.4, -41.4 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 221.4, -41.4 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 175.7, -34.1 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 175.7, -34.1 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 128.9, -25.9 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 128.9, -25.9 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 195, -40.3 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 195, -40.3 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 163.7, -34.7 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 163.7, -34.7 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 131.9, -28.6 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 131.9, -28.6 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 139.7, -22.3 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 139.7, -22.3 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 126.4, -37 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 126.4, -37 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 141, -37.5 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 141, -37.5 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 127.5, -24 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 127.5, -24 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 134.9, -31.4 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 134.9, -31.4 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 142.2, -24.7 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 142.2, -24.7 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 128.5, -38.9 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 128.5, -38.9 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 135.6, -32 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 135.6, -32 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 135.7, -32.1 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 135.7, -32.1 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 104.7, -28.3 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 104.7, -28.3 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 113.9, -27.9 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 113.9, -27.9 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 120.5, -28.6 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 120.5, -28.6 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 63.9, -9.2 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 63.9, -9.2 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 96.5, -17 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 96.5, -17 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 127.6, -25.5 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 127.6, -25.5 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 136.5, -17.7 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 136.5, -17.7 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 124.1, -31 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 124.1, -31 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 139.5, -30.4 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 139.5, -30.4 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 126.6, -15.9 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 126.6, -15.9 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 134.5, -22.5 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 134.5, -22.5 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 142.1, -15.3 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 142.1, -15.3 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 128.5, -29.1 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 128.5, -29.1 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 135.6, -22 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 135.6, -22 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 194, -40.8 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 194, -40.8 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 200.3, -29.7 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 200.3, -29.7 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 204.8, -19.8 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 204.8, -19.8 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 121.6, -27.1 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 121.6, -27.1 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 167.3, -20.4 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 167.3, -20.4 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 211.9, -14.6 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 211.9, -14.6 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 270.5, 2.5 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 270.5, 2.5 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 308.2, -1.5 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 308.2, -1.5 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 327.3, -1.9 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 327.3, -1.9 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 318, 11.7 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 318, 11.7 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 329.2, 4.3 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 329.2, 4.3 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 340.1, 11 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 340.1, 11 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 329.6, -3.3 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 329.6, -3.3 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 339.6, 3.4 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 339.6, 3.4 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 342.3, 3.2 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 342.3, 3.2 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 344.5, 3 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 344.5, 3 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 346.4, 2.9 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 346.4, 2.9 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 347.8, 2.7 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 347.8, 2.7 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 348.8, 2.7 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 348.8, 2.7 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 356.4, 9.6 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 356.4, 9.6 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 342.6, -4.4 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 342.6, -4.4 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 202.9, -19.8 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 202.9, -19.8 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 194.9, -6 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 194.9, -6 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 172.7, -20 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 172.7, -20 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 178.3, -19.9 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 178.3, -19.9 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 170, -13.2 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 170, -13.2 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 175.8, -6.6 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 175.8, -6.6 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 160.7, -20.9 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 160.7, -20.9 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 173.7, -21.1 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 173.7, -21.1 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 165.7, -14.4 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 165.7, -14.4 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 164.8, -14.6 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 164.8, -14.6 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 164, -14.8 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 164, -14.8 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 163.4, -15 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 163.4, -15 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 162.8, -15.2 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 162.8, -15.2 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 162.3, -15.3 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 162.3, -15.3 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 161.9, -15.4 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 161.9, -15.4 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 161.7, -15.5 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 161.7, -15.5 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 161.5, -15.6 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 161.5, -15.6 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 161.5, -15.7 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 161.5, -15.7 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 161.6, -15.8 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 161.6, -15.8 , 0 );

setScaleKey( spep_0 + 136 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 0.72, 0.72 );

setRotateKey( spep_0 + 136 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, -30 )
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 330 + OFFSET_X, 1, 1);
setDisp( spep_0 + 386 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 330 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 330 + OFFSET_X, 1, -226.5, 79.5 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -226.5, 79.5 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -221, 85.1 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -221, 85.1 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -230.6, 75.6 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -230.6, 75.6 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -220.2, 76 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -220.2, 76 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -229.8, 86.5 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -229.8, 86.5 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -224.4, 81.9 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -224.4, 81.9 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -228.1, 78.3 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -228.1, 78.3 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -219.7, 78.7 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -219.7, 78.7 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -227.4, 87.1 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -227.4, 87.1 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -219.1, 87.4 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -219.1, 87.4 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -226.8, 79.8 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -226.8, 79.8 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -218.5, 80.1 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -218.5, 80.1 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -226.3, 88.4 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -226.3, 88.4 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -222.1, 84.7 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -222.1, 84.7 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -219.9, 86.9 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -219.9, 86.9 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -223.7, 83.2 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -223.7, 83.2 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -219.5, 83.4 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -219.5, 83.4 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -223.3, 87.7 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -223.3, 87.7 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -221.2, 85.9 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -221.2, 85.9 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -219.1, 88.1 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -219.1, 88.1 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -223, 84.2 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -223, 84.2 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -218.9, 84.4 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -218.9, 84.4 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -222.9, 88.5 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -222.9, 88.5 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -220.9, 86.7 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -220.9, 86.7 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -220.9, 86.8 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -220.9, 86.8 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -220.9, 86.9 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -220.9, 86.9 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -220.9, 87 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -220.9, 87 , 0 );

setScaleKey( spep_0 + 330 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 1.22, 1.22 );

setRotateKey( spep_0 + 330 + OFFSET_X, 1, 15 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, 15 );

-- 敵の動き3
setDisp( spep_0 + 442 + OFFSET_X, 1, 1);
setDisp( spep_0 + 522 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 442 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 462 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 478 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 442 + OFFSET_X, 1, 3.8, 80.5 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 3.8, 80.5 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, -9.8, 58.9 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, -9.8, 58.9 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 16.4, 57.3 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 16.4, 57.3 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 2.5, 75.7 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 2.5, 75.7 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 18.6, 64.2 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 18.6, 64.2 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 34.5, 72.7 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 34.5, 72.7 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 20.3, 51.2 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 20.3, 51.2 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 46, 49.7 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 46, 49.7 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 31.7, 68.3 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 31.7, 68.3 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 47.1, 56.8 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 47.1, 56.8 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 72.4, 40.6 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 72.4, 40.6 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 61.9, 21.7 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 61.9, 21.7 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 91.1, 22.7 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 91.1, 22.7 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 80.1, 43.8 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 80.1, 43.8 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 98.9, 34.8 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 98.9, 34.8 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 117.4, 45.8 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 117.4, 45.8 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 105.6, 26.8 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 105.6, 26.8 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 133.6, 27.6 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 133.6, 27.6 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 105.8, 117.7 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 105.8, 117.7 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 123.5, 112 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 123.5, 112 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 140.8, 126.1 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 140.8, 126.1 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 127.9, 110.1 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 127.9, 110.1 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 154.6, 113.9 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 154.6, 113.9 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 141, 137.5 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 141, 137.5 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 157.1, 130.9 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 157.1, 130.9 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 173, 144.2 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 173, 144.2 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 158.5, 127.3 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 158.5, 127.3 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 183.6, 130.2 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 183.6, 130.2 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 168.5, 153 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 168.5, 153 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 183.1, 145.5 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 183.1, 145.5 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 197.4, 157.9 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 197.4, 157.9 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 181.3, 140.1 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 181.3, 140.1 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 205, 142.2 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 205, 142.2 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 188.3, 164.1 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 188.3, 164.1 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 201.3, 155.8 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 201.3, 155.8 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 214.1, 167.3 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 214.1, 167.3 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 196.5, 148.6 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 196.5, 148.6 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 218.6, 149.8 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 218.6, 149.8 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 200.4, 170.8 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 200.4, 170.8 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 201.9, 151.7 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 201.9, 151.7 , 0 );

setScaleKey( spep_0 + 442 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 522 + OFFSET_X, 1, 0.73, 0.73 );

setRotateKey( spep_0 + 442 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, -29.4 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, -29.4 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, -28.6 );
setRotateKey( spep_0 + 447 + OFFSET_X, 1, -28.6 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, -27.1 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, -27.1 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, -26.3 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, -26.3 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, -24.9 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, -24.9 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_0 + 459 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_0 + 460 + OFFSET_X, 1, -23.5 );
setRotateKey( spep_0 + 461 + OFFSET_X, 1, -23.5 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_0 + 463 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_0 + 464 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_0 + 467 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_0 + 468 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_0 + 469 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_0 + 470 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_0 + 473 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_0 + 474 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_0 + 475 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_0 + 476 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 477 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_0 + 479 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_0 + 480 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_0 + 481 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_0 + 483 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_0 + 485 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_0 + 486 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_0 + 487 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_0 + 488 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 489 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 490 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_0 + 491 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_0 + 492 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_0 + 493 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_0 + 494 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_0 + 495 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_0 + 496 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_0 + 497 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_0 + 498 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_0 + 499 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_0 + 500 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_0 + 501 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_0 + 502 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_0 + 503 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_0 + 504 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_0 + 505 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_0 + 506 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 507 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 508 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 509 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 510 + OFFSET_X, 1, -7.1 );
setRotateKey( spep_0 + 511 + OFFSET_X, 1, -7.1 );
setRotateKey( spep_0 + 512 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_0 + 513 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_0 + 514 + OFFSET_X, 1, -6.6 );
setRotateKey( spep_0 + 515 + OFFSET_X, 1, -6.6 );
setRotateKey( spep_0 + 516 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_0 + 517 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_0 + 518 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_0 + 519 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_0 + 520 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 522 + OFFSET_X, 1, -6 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--リブリアン降りてくる
SE001 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, 0.6);
SE002 = playSeVer2( spep_0 + 0, 63, "", 0, 0, 0, 0.6);
SE003 = playSeVer2( spep_0 + 18, 1118, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 18, SE003, 63 );
--画面アップに
SE004 = playSeVer2( spep_0 + 82, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 82, SE004, 141 );
SE005 = playSeVer2( spep_0 + 82, 1003, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 82, SE005, 86 );
--ズーム
SE006 = playSeVer2( spep_0 + 82, 1072, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
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

--パンチ
SE007 = playSeVer2( spep_0 + 144, 1004, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 152, 1187, "",spep_0 + 214, 0, 40, -1);
SE009 = playSeVer2( spep_0 + 152, 1009, "", 0, 0, 0, -1);
--パンチ２
SE010 = playSeVer2( spep_0 + 182, 1110, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 182, 1010, "", 0, 0, 0, -1);
--殴り飛ばす
SE012 = playSeVer2( spep_0 + 202, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 202, SE012, 132 );
SE013 = playSeVer2( spep_0 + 210, 1120, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 210, 1183, "",spep_0 + 340, 0, 62, -1);
--カクンサ向かっていく
SE015 = playSeVer2( spep_0 + 246, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 246, SE015, 76 );
SE016 = playSeVer2( spep_0 + 246, 1019, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 246, 1117, "", 0, 0, 0, 0.6);
SE020 = playSeVer2( spep_0 + 312, 1019, "",spep_0 + 336, 0, 14, -1);
--振りかぶる
SE018 = playSeVer2( spep_0 + 298, 1116, "",spep_0 + 336, 0, 14, -1);
SE019 = playSeVer2( spep_0 + 308, 1004, "", 0, 0, 0, -1);
--ひっかく
SE021 = playSeVer2( spep_0 + 320, 1032, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 320, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 320, SE022, 83 );
SE023 = playSeVer2( spep_0 + 324, 1238, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 324, SE023, 69 );
SE024 = playSeVer2( spep_0 + 330, 1031, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE024, 86 );
--画面遷移
SE025 = playSeVer2( spep_0 + 380, 1232, "", 0, 0, 0, -1);
--ロージィポーズ
SE026 = playSeVer2( spep_0 + 390, 1189, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 394, 1006, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 394, 1013, "", 0, 0, 0, -1);
--連続気弾
SE029 = playSeVer2( spep_0 + 442, 1403, "",spep_0 + 536, 0, 10, -1);
SE030 = playSeVer2( spep_0 + 442, 1406, "",spep_0 + 538, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 442, SE030, 150 );
--爆発
SE031 = playSeVer2( spep_0 + 450, 1023, "",spep_0 + 538, 0, 10, -1);
SE032 = playSeVer2( spep_0 + 472, 1024, "",spep_0 + 540, 0, 10, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;-- 520

--------------------------------------
--カードカットイン(94F)
--------------------------------------

spep_1 = showCardCutin(spep_c, 0);

-------------------------------------------------
-- フィニッシュまで
-------------------------------------------------

MAX_FRAME_1 = 428;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1+ 0, SP_02, 0x100, -1, 0, 0, 0); -- 前面(ef_001)
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 背面(ef_002)
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 20;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -10, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -10, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -10, 515.5 , 0 );
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


-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_1 + 182 + OFFSET_X, 1, 1);
setDisp( spep_1 + 220 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 182 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 200 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 182 + OFFSET_X, 1, 126.1, 27 , 0 );
setMoveKey( spep_1 + 183 + OFFSET_X, 1, 126.1, 27 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, 129.6, 28 , 0 );
setMoveKey( spep_1 + 185 + OFFSET_X, 1, 129.6, 28 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_X, 1, 133.1, 28.9 , 0 );
setMoveKey( spep_1 + 187 + OFFSET_X, 1, 133.1, 28.9 , 0 );
setMoveKey( spep_1 + 188 + OFFSET_X, 1, 136.5, 29.9 , 0 );
setMoveKey( spep_1 + 189 + OFFSET_X, 1, 136.5, 29.9 , 0 );
setMoveKey( spep_1 + 190 + OFFSET_X, 1, 140, 30.8 , 0 );
setMoveKey( spep_1 + 191 + OFFSET_X, 1, 140, 30.8 , 0 );
setMoveKey( spep_1 + 192 + OFFSET_X, 1, 143.5, 31.7 , 0 );
setMoveKey( spep_1 + 193 + OFFSET_X, 1, 143.5, 31.7 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_X, 1, 147, 32.7 , 0 );
setMoveKey( spep_1 + 195 + OFFSET_X, 1, 147, 32.7 , 0 );
setMoveKey( spep_1 + 196 + OFFSET_X, 1, 150.4, 33.6 , 0 );
setMoveKey( spep_1 + 197 + OFFSET_X, 1, 150.4, 33.6 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_X, 1, 101.1, 37 , 0 );
setMoveKey( spep_1 + 199 + OFFSET_X, 1, 101.1, 37 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_X, 1, 117.2, 29.7 , 0 );
setMoveKey( spep_1 + 201 + OFFSET_X, 1, 117.2, 29.7 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, 163.8, 31.6 , 0 );
setMoveKey( spep_1 + 203 + OFFSET_X, 1, 163.8, 31.6 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, 206.1, 33.6 , 0 );
setMoveKey( spep_1 + 205 + OFFSET_X, 1, 206.1, 33.6 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, 140.6, 61.1 , 0 );
setMoveKey( spep_1 + 207 + OFFSET_X, 1, 140.6, 61.1 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, 176.4, 46.8 , 0 );
setMoveKey( spep_1 + 209 + OFFSET_X, 1, 176.4, 46.8 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, 209.4, 32.5 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_X, 1, 209.4, 32.5 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, 198.9, 45.6 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_X, 1, 198.9, 45.6 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, 212.7, 32 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_X, 1, 212.7, 32 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 393.4, 38.8 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_X, 1, 393.4, 38.8 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 550.9, 24.6 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_X, 1, 550.9, 24.6 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, 734.2, 24.4 , 0 );

setScaleKey( spep_1 + 182 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 196 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 197 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 198 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_1 + 199 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_1 + 200 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 201 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 202 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 203 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 204 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 205 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 206 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 207 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 208 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 209 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 210 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 211 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 212 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 213 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 214 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 220 + OFFSET_X, 1, 0.26, 0.26 );

setRotateKey( spep_1 + 182 + OFFSET_X, 1, -22 );
setRotateKey( spep_1 + 199 + OFFSET_X, 1, -22 );
setRotateKey( spep_1 + 200 + OFFSET_X, 1, -7 );
setRotateKey( spep_1 + 220 + OFFSET_X, 1, -7 );

-- 敵の動き2
setDisp( spep_1 + 232 + OFFSET_X, 1, 1);
setDisp( spep_1 + 282 + OFFSET_X, 1, 0);

setMoveKey( spep_1 + 232 + OFFSET_X, 1, -223.7, 10.7 , 0 );
setMoveKey( spep_1 + 233 + OFFSET_X, 1, -223.7, 10.7 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, -206.7, -14 , 0 );
setMoveKey( spep_1 + 235 + OFFSET_X, 1, -206.7, -14 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, -157.9, -25.9 , 0 );
setMoveKey( spep_1 + 237 + OFFSET_X, 1, -157.9, -25.9 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, -133.3, -25.1 , 0 );
setMoveKey( spep_1 + 239 + OFFSET_X, 1, -133.3, -25.1 , 0 );
setMoveKey( spep_1 + 240 + OFFSET_X, 1, -84, -46.6 , 0 );
setMoveKey( spep_1 + 241 + OFFSET_X, 1, -84, -46.6 , 0 );
setMoveKey( spep_1 + 242 + OFFSET_X, 1, -30.8, -55.4 , 0 );
setMoveKey( spep_1 + 243 + OFFSET_X, 1, -30.8, -55.4 , 0 );
setMoveKey( spep_1 + 244 + OFFSET_X, 1, 5.1, -86.4 , 0 );
setMoveKey( spep_1 + 245 + OFFSET_X, 1, 5.1, -86.4 , 0 );
setMoveKey( spep_1 + 246 + OFFSET_X, 1, 65.8, -97.8 , 0 );
setMoveKey( spep_1 + 247 + OFFSET_X, 1, 65.8, -97.8 , 0 );
setMoveKey( spep_1 + 248 + OFFSET_X, 1, 116.3, -124.5 , 0 );
setMoveKey( spep_1 + 249 + OFFSET_X, 1, 116.3, -124.5 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, 128.9, -122 , 0 );
setMoveKey( spep_1 + 251 + OFFSET_X, 1, 128.9, -122 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, 134.1, -126.2 , 0 );
setMoveKey( spep_1 + 253 + OFFSET_X, 1, 134.1, -126.2 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, 139.1, -130.2 , 0 );
setMoveKey( spep_1 + 255 + OFFSET_X, 1, 139.1, -130.2 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, 143.7, -134 , 0 );
setMoveKey( spep_1 + 257 + OFFSET_X, 1, 143.7, -134 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, 148, -137.5 , 0 );
setMoveKey( spep_1 + 259 + OFFSET_X, 1, 148, -137.5 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, 152, -140.8 , 0 );
setMoveKey( spep_1 + 261 + OFFSET_X, 1, 152, -140.8 , 0 );
setMoveKey( spep_1 + 262 + OFFSET_X, 1, 155.8, -143.8 , 0 );
setMoveKey( spep_1 + 263 + OFFSET_X, 1, 155.8, -143.8 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, 159.2, -146.6 , 0 );
setMoveKey( spep_1 + 265 + OFFSET_X, 1, 159.2, -146.6 , 0 );
setMoveKey( spep_1 + 266 + OFFSET_X, 1, 162.3, -149.1 , 0 );
setMoveKey( spep_1 + 267 + OFFSET_X, 1, 162.3, -149.1 , 0 );
setMoveKey( spep_1 + 268 + OFFSET_X, 1, 165.1, -151.4 , 0 );
setMoveKey( spep_1 + 269 + OFFSET_X, 1, 165.1, -151.4 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X, 1, 167.6, -153.4 , 0 );
setMoveKey( spep_1 + 271 + OFFSET_X, 1, 167.6, -153.4 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X, 1, 169.8, -155.2 , 0 );
setMoveKey( spep_1 + 273 + OFFSET_X, 1, 169.8, -155.2 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X, 1, 171.7, -156.7 , 0 );
setMoveKey( spep_1 + 275 + OFFSET_X, 1, 171.7, -156.7 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, 173.2, -158 , 0 );
setMoveKey( spep_1 + 277 + OFFSET_X, 1, 173.2, -158 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, 174.5, -159.1 , 0 );
setMoveKey( spep_1 + 279 + OFFSET_X, 1, 174.5, -159.1 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X, 1, 175.5, -159.9 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X, 1, 175.5, -159.9 , 0 );

setScaleKey( spep_1 + 232 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 233 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 234 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 235 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 236 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 237 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 238 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_1 + 239 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_1 + 240 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 241 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 242 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 243 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 244 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 245 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 246 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 247 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 248 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 249 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 250 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 251 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 252 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 253 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 254 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 255 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 256 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_1 + 257 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_1 + 258 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_1 + 259 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_1 + 260 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_1 + 261 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_1 + 262 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 263 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 264 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_1 + 265 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_1 + 266 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 267 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 268 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_1 + 269 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_1 + 270 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 273 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 274 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 275 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 276 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_1 + 282 + OFFSET_X, 1, 0.14, 0.14 );

setRotateKey( spep_1 + 232 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 282 + OFFSET_X, 1, 0 );

setBlendColor( spep_1 + 200 + OFFSET_X, 1, 5, 0.95, 0.27, 0.97, 0.85 );
setBlendColor( spep_1 + 282 + OFFSET_X, 1, 5, 0, 0, 0, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--リブリアンハート作る
SE034 = playSeVer2( spep_1 + 0, 1432, "", 0, 0, 0, 0.6);
SE035 = playSeVer2( spep_1 + 6, 1434, "", 0, 0, 0, -1);
--ハート正面撃つ
SE037 = playSeVer2( spep_1 + 106, 1027, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_1 + 106, 1115, "",spep_1 + 226, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 106, SE038, 89 );
SE039 = playSeVer2( spep_1 + 106, 1112, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_1 + 106, 1022, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_1 + 106, 1435, "",spep_1 + 222, 0, 26, -1);
setSeVolumeByWorkId( spep_1 + 106, SE041, 170 );
--敵ヒット
SE042 = playSeVer2( spep_1 + 190, 1179, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_1 + 198, 1011, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_1 + 198, 1187, "", 0, 0, 0, -1);
--敵飛んでいく
SE045 = playSeVer2( spep_1 + 228, 1121, "",spep_1 + 298, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 228, SE045, 81 );
SE046 = playSeVer2( spep_1 + 228, 1183, "",spep_1 + 298, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 228, SE046, 77 );
--爆発
SE047 = playSeVer2( spep_1 + 280, 1159, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_1 + 280, 1024, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_1 + 286, 1427, "", 0, 0, 0, -1);
--地響き
SE049 = playSeVer2( spep_1 + 280, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 280, SE049, 63 );

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 300); 
endPhase( spep_1 + MAX_FRAME_1 -4); -- 428

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------
spep_0 = 0;


-------------------------------------------------
-- 開幕～カードまで
-------------------------------------------------

MAX_FRAME_0 = 520;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- 前面(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- 背面(ef_002)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);


-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 136 + OFFSET_X, 1, 1);
setDisp( spep_0 + 290 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 136 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 152 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 182 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 210 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 136 + OFFSET_X, 1, 107.7, -71.6 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 107.6, -71.4 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 107.4, -71 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 107.1, -70.4 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 106.6, -69.5 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 105.9, -68.3 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 105.2, -66.9 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 104.2, -65.2 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 104.2, -65.2 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 221.4, -41.4 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 221.4, -41.4 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 175.7, -34.1 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 175.7, -34.1 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 128.9, -25.9 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 128.9, -25.9 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 195, -40.3 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 195, -40.3 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 163.7, -34.7 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 163.7, -34.7 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 131.9, -28.6 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 131.9, -28.6 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 139.7, -22.3 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 139.7, -22.3 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 126.4, -37 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 126.4, -37 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 141, -37.5 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 141, -37.5 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 127.5, -24 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 127.5, -24 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 134.9, -31.4 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 134.9, -31.4 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 142.2, -24.7 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 142.2, -24.7 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 128.5, -38.9 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 128.5, -38.9 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 135.6, -32 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 135.6, -32 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 135.7, -32.1 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 135.7, -32.1 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 104.7, -28.3 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 104.7, -28.3 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 113.9, -27.9 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 113.9, -27.9 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 120.5, -28.6 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 120.5, -28.6 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 63.9, -9.2 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 63.9, -9.2 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 96.5, -17 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 96.5, -17 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 127.6, -25.5 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 127.6, -25.5 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 136.5, -17.7 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 136.5, -17.7 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 124.1, -31 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 124.1, -31 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 139.5, -30.4 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 139.5, -30.4 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 126.6, -15.9 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 126.6, -15.9 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 134.5, -22.5 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 134.5, -22.5 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 142.1, -15.3 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 142.1, -15.3 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 128.5, -29.1 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 128.5, -29.1 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 135.6, -22 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 135.6, -22 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 194, -40.8 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 194, -40.8 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 200.3, -29.7 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 200.3, -29.7 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 204.8, -19.8 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 204.8, -19.8 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 121.6, -27.1 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 121.6, -27.1 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 167.3, -20.4 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 167.3, -20.4 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 211.9, -14.6 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 211.9, -14.6 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 270.5, 2.5 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 270.5, 2.5 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 308.2, -1.5 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 308.2, -1.5 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 327.3, -1.9 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 327.3, -1.9 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 318, 11.7 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 318, 11.7 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 329.2, 4.3 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 329.2, 4.3 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 340.1, 11 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 340.1, 11 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 329.6, -3.3 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 329.6, -3.3 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 339.6, 3.4 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 339.6, 3.4 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 342.3, 3.2 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 342.3, 3.2 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 344.5, 3 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 344.5, 3 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 346.4, 2.9 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 346.4, 2.9 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 347.8, 2.7 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 347.8, 2.7 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 348.8, 2.7 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 348.8, 2.7 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 356.4, 9.6 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 356.4, 9.6 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 342.6, -4.4 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 342.6, -4.4 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 202.9, -19.8 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 202.9, -19.8 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 194.9, -6 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 194.9, -6 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 172.7, -20 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 172.7, -20 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 178.3, -19.9 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 178.3, -19.9 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 170, -13.2 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 170, -13.2 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 175.8, -6.6 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 175.8, -6.6 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 160.7, -20.9 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 160.7, -20.9 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 173.7, -21.1 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 173.7, -21.1 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 165.7, -14.4 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 165.7, -14.4 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 164.8, -14.6 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 164.8, -14.6 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 164, -14.8 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 164, -14.8 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 163.4, -15 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 163.4, -15 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 162.8, -15.2 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 162.8, -15.2 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 162.3, -15.3 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 162.3, -15.3 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 161.9, -15.4 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 161.9, -15.4 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 161.7, -15.5 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 161.7, -15.5 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 161.5, -15.6 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 161.5, -15.6 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 161.5, -15.7 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 161.5, -15.7 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 161.6, -15.8 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 161.6, -15.8 , 0 );

setScaleKey( spep_0 + 136 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 2.05, 2.05 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 1.76, 1.76 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 245 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 0.72, 0.72 );

setRotateKey( spep_0 + 136 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 181 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 182 + OFFSET_X, 1, -30 )
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -30 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp( spep_0 + 330 + OFFSET_X, 1, 1);
setDisp( spep_0 + 386 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 330 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 330 + OFFSET_X, 1, -226.5, 79.5 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -226.5, 79.5 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -221, 85.1 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -221, 85.1 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -230.6, 75.6 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -230.6, 75.6 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -220.2, 76 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -220.2, 76 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -229.8, 86.5 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -229.8, 86.5 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -224.4, 81.9 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -224.4, 81.9 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -228.1, 78.3 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -228.1, 78.3 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -219.7, 78.7 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -219.7, 78.7 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -227.4, 87.1 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -227.4, 87.1 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -219.1, 87.4 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -219.1, 87.4 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -226.8, 79.8 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -226.8, 79.8 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, -218.5, 80.1 , 0 );
setMoveKey( spep_0 + 353 + OFFSET_X, 1, -218.5, 80.1 , 0 );
setMoveKey( spep_0 + 354 + OFFSET_X, 1, -226.3, 88.4 , 0 );
setMoveKey( spep_0 + 355 + OFFSET_X, 1, -226.3, 88.4 , 0 );
setMoveKey( spep_0 + 356 + OFFSET_X, 1, -222.1, 84.7 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, -222.1, 84.7 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, -219.9, 86.9 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, -219.9, 86.9 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, -223.7, 83.2 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, -223.7, 83.2 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, -219.5, 83.4 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, -219.5, 83.4 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, -223.3, 87.7 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, -223.3, 87.7 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, -221.2, 85.9 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, -221.2, 85.9 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, -219.1, 88.1 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, -219.1, 88.1 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, -223, 84.2 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, -223, 84.2 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, -218.9, 84.4 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, -218.9, 84.4 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, -222.9, 88.5 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, -222.9, 88.5 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, -220.9, 86.7 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, -220.9, 86.7 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, -220.9, 86.8 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, -220.9, 86.8 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, -220.9, 86.9 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, -220.9, 86.9 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, -220.9, 87 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -220.9, 87 , 0 );

setScaleKey( spep_0 + 330 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 355 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 356 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 365 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 366 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 1.22, 1.22 );

setRotateKey( spep_0 + 330 + OFFSET_X, 1, 15 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, 15 );

-- 敵の動き3
setDisp( spep_0 + 442 + OFFSET_X, 1, 1);
setDisp( spep_0 + 522 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 442 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 462 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 478 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 442 + OFFSET_X, 1, 3.8, 80.5 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 3.8, 80.5 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, -9.8, 58.9 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, -9.8, 58.9 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 16.4, 57.3 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 16.4, 57.3 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 2.5, 75.7 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 2.5, 75.7 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 18.6, 64.2 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 18.6, 64.2 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 34.5, 72.7 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 34.5, 72.7 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 20.3, 51.2 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 20.3, 51.2 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 46, 49.7 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 46, 49.7 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 31.7, 68.3 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 31.7, 68.3 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 47.1, 56.8 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 47.1, 56.8 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 72.4, 40.6 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 72.4, 40.6 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 61.9, 21.7 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 61.9, 21.7 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 91.1, 22.7 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 91.1, 22.7 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 80.1, 43.8 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 80.1, 43.8 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 98.9, 34.8 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 98.9, 34.8 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 117.4, 45.8 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 117.4, 45.8 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 105.6, 26.8 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 105.6, 26.8 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 133.6, 27.6 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 133.6, 27.6 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 105.8, 117.7 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 105.8, 117.7 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 123.5, 112 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 123.5, 112 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 140.8, 126.1 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 140.8, 126.1 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 127.9, 110.1 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 127.9, 110.1 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 154.6, 113.9 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 154.6, 113.9 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 141, 137.5 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 141, 137.5 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 157.1, 130.9 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 157.1, 130.9 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 173, 144.2 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 173, 144.2 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 158.5, 127.3 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 158.5, 127.3 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 183.6, 130.2 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 183.6, 130.2 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 168.5, 153 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 168.5, 153 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 183.1, 145.5 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 183.1, 145.5 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 197.4, 157.9 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 197.4, 157.9 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 181.3, 140.1 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 181.3, 140.1 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 205, 142.2 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 205, 142.2 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 188.3, 164.1 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 188.3, 164.1 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 201.3, 155.8 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 201.3, 155.8 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 214.1, 167.3 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 214.1, 167.3 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 196.5, 148.6 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 196.5, 148.6 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 218.6, 149.8 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 218.6, 149.8 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 200.4, 170.8 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 200.4, 170.8 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 201.9, 151.7 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 201.9, 151.7 , 0 );

setScaleKey( spep_0 + 442 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 461 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 462 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 478 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_0 + 522 + OFFSET_X, 1, 0.73, 0.73 );

setRotateKey( spep_0 + 442 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, -29.4 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, -29.4 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, -28.6 );
setRotateKey( spep_0 + 447 + OFFSET_X, 1, -28.6 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, -27.9 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, -27.1 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, -27.1 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, -26.3 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, -26.3 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_0 + 455 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_0 + 456 + OFFSET_X, 1, -24.9 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, -24.9 );
setRotateKey( spep_0 + 458 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_0 + 459 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_0 + 460 + OFFSET_X, 1, -23.5 );
setRotateKey( spep_0 + 461 + OFFSET_X, 1, -23.5 );
setRotateKey( spep_0 + 462 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_0 + 463 + OFFSET_X, 1, -3.5 );
setRotateKey( spep_0 + 464 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_0 + 467 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_0 + 468 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_0 + 469 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_0 + 470 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_0 + 473 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_0 + 474 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_0 + 475 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_0 + 476 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 477 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 478 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_0 + 479 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_0 + 480 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_0 + 481 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_0 + 482 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_0 + 483 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_0 + 484 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_0 + 485 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_0 + 486 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_0 + 487 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_0 + 488 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 489 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 490 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_0 + 491 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_0 + 492 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_0 + 493 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_0 + 494 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_0 + 495 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_0 + 496 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_0 + 497 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_0 + 498 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_0 + 499 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_0 + 500 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_0 + 501 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_0 + 502 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_0 + 503 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_0 + 504 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_0 + 505 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_0 + 506 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 507 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_0 + 508 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 509 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 510 + OFFSET_X, 1, -7.1 );
setRotateKey( spep_0 + 511 + OFFSET_X, 1, -7.1 );
setRotateKey( spep_0 + 512 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_0 + 513 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_0 + 514 + OFFSET_X, 1, -6.6 );
setRotateKey( spep_0 + 515 + OFFSET_X, 1, -6.6 );
setRotateKey( spep_0 + 516 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_0 + 517 + OFFSET_X, 1, -6.4 );
setRotateKey( spep_0 + 518 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_0 + 519 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_0 + 520 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 522 + OFFSET_X, 1, -6 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--リブリアン降りてくる
SE001 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, 0.6);
SE002 = playSeVer2( spep_0 + 0, 63, "", 0, 0, 0, 0.6);
SE003 = playSeVer2( spep_0 + 18, 1118, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 18, SE003, 63 );
--画面アップに
SE004 = playSeVer2( spep_0 + 82, 1151, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 82, SE004, 141 );
SE005 = playSeVer2( spep_0 + 82, 1003, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 82, SE005, 86 );
--ズーム
SE006 = playSeVer2( spep_0 + 82, 1072, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 100; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
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

--パンチ
SE007 = playSeVer2( spep_0 + 144, 1004, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 152, 1187, "",spep_0 + 214, 0, 40, -1);
SE009 = playSeVer2( spep_0 + 152, 1009, "", 0, 0, 0, -1);
--パンチ２
SE010 = playSeVer2( spep_0 + 182, 1110, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 182, 1010, "", 0, 0, 0, -1);
--殴り飛ばす
SE012 = playSeVer2( spep_0 + 202, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 202, SE012, 132 );
SE013 = playSeVer2( spep_0 + 210, 1120, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 210, 1183, "",spep_0 + 340, 0, 62, -1);
--カクンサ向かっていく
SE015 = playSeVer2( spep_0 + 246, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 246, SE015, 76 );
SE016 = playSeVer2( spep_0 + 246, 1019, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 246, 1117, "", 0, 0, 0, 0.6);
SE020 = playSeVer2( spep_0 + 312, 1019, "",spep_0 + 336, 0, 14, -1);
--振りかぶる
SE018 = playSeVer2( spep_0 + 298, 1116, "",spep_0 + 336, 0, 14, -1);
SE019 = playSeVer2( spep_0 + 308, 1004, "", 0, 0, 0, -1);
--ひっかく
SE021 = playSeVer2( spep_0 + 320, 1032, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 320, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 320, SE022, 83 );
SE023 = playSeVer2( spep_0 + 324, 1238, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 324, SE023, 69 );
SE024 = playSeVer2( spep_0 + 330, 1031, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE024, 86 );
--画面遷移
SE025 = playSeVer2( spep_0 + 380, 1232, "", 0, 0, 0, -1);
--ロージィポーズ
SE026 = playSeVer2( spep_0 + 390, 1189, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 394, 1006, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 394, 1013, "", 0, 0, 0, -1);
--連続気弾
SE029 = playSeVer2( spep_0 + 442, 1403, "",spep_0 + 536, 0, 10, -1);
SE030 = playSeVer2( spep_0 + 442, 1406, "",spep_0 + 538, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 442, SE030, 150 );
--爆発
SE031 = playSeVer2( spep_0 + 450, 1023, "",spep_0 + 538, 0, 10, -1);
SE032 = playSeVer2( spep_0 + 472, 1024, "",spep_0 + 540, 0, 10, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;-- 520

--------------------------------------
--カードカットイン(94F)
--------------------------------------

spep_1 = showCardCutin(spep_c, 0);

-------------------------------------------------
-- フィニッシュまで
-------------------------------------------------

MAX_FRAME_1 = 428;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1+ 0, SP_02r, 0x100, -1, 0, 0, 0); -- 前面(ef_001)
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 背面(ef_002)
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 20;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -10, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -10, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -10, 515.5 , 0 );
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


-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_1 + 182 + OFFSET_X, 1, 1);
setDisp( spep_1 + 220 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 182 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 200 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 182 + OFFSET_X, 1, 126.1, 27 , 0 );
setMoveKey( spep_1 + 183 + OFFSET_X, 1, 126.1, 27 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_X, 1, 129.6, 28 , 0 );
setMoveKey( spep_1 + 185 + OFFSET_X, 1, 129.6, 28 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_X, 1, 133.1, 28.9 , 0 );
setMoveKey( spep_1 + 187 + OFFSET_X, 1, 133.1, 28.9 , 0 );
setMoveKey( spep_1 + 188 + OFFSET_X, 1, 136.5, 29.9 , 0 );
setMoveKey( spep_1 + 189 + OFFSET_X, 1, 136.5, 29.9 , 0 );
setMoveKey( spep_1 + 190 + OFFSET_X, 1, 140, 30.8 , 0 );
setMoveKey( spep_1 + 191 + OFFSET_X, 1, 140, 30.8 , 0 );
setMoveKey( spep_1 + 192 + OFFSET_X, 1, 143.5, 31.7 , 0 );
setMoveKey( spep_1 + 193 + OFFSET_X, 1, 143.5, 31.7 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_X, 1, 147, 32.7 , 0 );
setMoveKey( spep_1 + 195 + OFFSET_X, 1, 147, 32.7 , 0 );
setMoveKey( spep_1 + 196 + OFFSET_X, 1, 150.4, 33.6 , 0 );
setMoveKey( spep_1 + 197 + OFFSET_X, 1, 150.4, 33.6 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_X, 1, 101.1, 37 , 0 );
setMoveKey( spep_1 + 199 + OFFSET_X, 1, 101.1, 37 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_X, 1, 117.2, 29.7 , 0 );
setMoveKey( spep_1 + 201 + OFFSET_X, 1, 117.2, 29.7 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_X, 1, 163.8, 31.6 , 0 );
setMoveKey( spep_1 + 203 + OFFSET_X, 1, 163.8, 31.6 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, 206.1, 33.6 , 0 );
setMoveKey( spep_1 + 205 + OFFSET_X, 1, 206.1, 33.6 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, 140.6, 61.1 , 0 );
setMoveKey( spep_1 + 207 + OFFSET_X, 1, 140.6, 61.1 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, 176.4, 46.8 , 0 );
setMoveKey( spep_1 + 209 + OFFSET_X, 1, 176.4, 46.8 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, 209.4, 32.5 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_X, 1, 209.4, 32.5 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, 198.9, 45.6 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_X, 1, 198.9, 45.6 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, 212.7, 32 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_X, 1, 212.7, 32 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 393.4, 38.8 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_X, 1, 393.4, 38.8 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 550.9, 24.6 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_X, 1, 550.9, 24.6 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, 734.2, 24.4 , 0 );

setScaleKey( spep_1 + 182 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 196 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 197 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 198 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_1 + 199 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_1 + 200 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 201 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 202 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 203 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 204 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 205 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 206 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 207 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 208 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 209 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 210 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 211 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 212 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 213 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 214 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 220 + OFFSET_X, 1, 0.26, 0.26 );

setRotateKey( spep_1 + 182 + OFFSET_X, 1, -22 );
setRotateKey( spep_1 + 199 + OFFSET_X, 1, -22 );
setRotateKey( spep_1 + 200 + OFFSET_X, 1, -7 );
setRotateKey( spep_1 + 220 + OFFSET_X, 1, -7 );

-- 敵の動き2
setDisp( spep_1 + 232 + OFFSET_X, 1, 1);
setDisp( spep_1 + 282 + OFFSET_X, 1, 0);

setMoveKey( spep_1 + 232 + OFFSET_X, 1, -223.7, 10.7 , 0 );
setMoveKey( spep_1 + 233 + OFFSET_X, 1, -223.7, 10.7 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, -206.7, -14 , 0 );
setMoveKey( spep_1 + 235 + OFFSET_X, 1, -206.7, -14 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, -157.9, -25.9 , 0 );
setMoveKey( spep_1 + 237 + OFFSET_X, 1, -157.9, -25.9 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, -133.3, -25.1 , 0 );
setMoveKey( spep_1 + 239 + OFFSET_X, 1, -133.3, -25.1 , 0 );
setMoveKey( spep_1 + 240 + OFFSET_X, 1, -84, -46.6 , 0 );
setMoveKey( spep_1 + 241 + OFFSET_X, 1, -84, -46.6 , 0 );
setMoveKey( spep_1 + 242 + OFFSET_X, 1, -30.8, -55.4 , 0 );
setMoveKey( spep_1 + 243 + OFFSET_X, 1, -30.8, -55.4 , 0 );
setMoveKey( spep_1 + 244 + OFFSET_X, 1, 5.1, -86.4 , 0 );
setMoveKey( spep_1 + 245 + OFFSET_X, 1, 5.1, -86.4 , 0 );
setMoveKey( spep_1 + 246 + OFFSET_X, 1, 65.8, -97.8 , 0 );
setMoveKey( spep_1 + 247 + OFFSET_X, 1, 65.8, -97.8 , 0 );
setMoveKey( spep_1 + 248 + OFFSET_X, 1, 116.3, -124.5 , 0 );
setMoveKey( spep_1 + 249 + OFFSET_X, 1, 116.3, -124.5 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, 128.9, -122 , 0 );
setMoveKey( spep_1 + 251 + OFFSET_X, 1, 128.9, -122 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, 134.1, -126.2 , 0 );
setMoveKey( spep_1 + 253 + OFFSET_X, 1, 134.1, -126.2 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, 139.1, -130.2 , 0 );
setMoveKey( spep_1 + 255 + OFFSET_X, 1, 139.1, -130.2 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, 143.7, -134 , 0 );
setMoveKey( spep_1 + 257 + OFFSET_X, 1, 143.7, -134 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, 148, -137.5 , 0 );
setMoveKey( spep_1 + 259 + OFFSET_X, 1, 148, -137.5 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, 152, -140.8 , 0 );
setMoveKey( spep_1 + 261 + OFFSET_X, 1, 152, -140.8 , 0 );
setMoveKey( spep_1 + 262 + OFFSET_X, 1, 155.8, -143.8 , 0 );
setMoveKey( spep_1 + 263 + OFFSET_X, 1, 155.8, -143.8 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, 159.2, -146.6 , 0 );
setMoveKey( spep_1 + 265 + OFFSET_X, 1, 159.2, -146.6 , 0 );
setMoveKey( spep_1 + 266 + OFFSET_X, 1, 162.3, -149.1 , 0 );
setMoveKey( spep_1 + 267 + OFFSET_X, 1, 162.3, -149.1 , 0 );
setMoveKey( spep_1 + 268 + OFFSET_X, 1, 165.1, -151.4 , 0 );
setMoveKey( spep_1 + 269 + OFFSET_X, 1, 165.1, -151.4 , 0 );
setMoveKey( spep_1 + 270 + OFFSET_X, 1, 167.6, -153.4 , 0 );
setMoveKey( spep_1 + 271 + OFFSET_X, 1, 167.6, -153.4 , 0 );
setMoveKey( spep_1 + 272 + OFFSET_X, 1, 169.8, -155.2 , 0 );
setMoveKey( spep_1 + 273 + OFFSET_X, 1, 169.8, -155.2 , 0 );
setMoveKey( spep_1 + 274 + OFFSET_X, 1, 171.7, -156.7 , 0 );
setMoveKey( spep_1 + 275 + OFFSET_X, 1, 171.7, -156.7 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, 173.2, -158 , 0 );
setMoveKey( spep_1 + 277 + OFFSET_X, 1, 173.2, -158 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, 174.5, -159.1 , 0 );
setMoveKey( spep_1 + 279 + OFFSET_X, 1, 174.5, -159.1 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X, 1, 175.5, -159.9 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X, 1, 175.5, -159.9 , 0 );

setScaleKey( spep_1 + 232 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 233 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_1 + 234 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 235 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_1 + 236 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 237 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 238 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_1 + 239 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_1 + 240 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 241 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 242 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 243 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 244 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 245 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_1 + 246 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 247 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_1 + 248 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 249 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 250 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 251 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 252 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 253 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 254 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 255 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 256 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_1 + 257 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_1 + 258 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_1 + 259 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_1 + 260 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_1 + 261 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_1 + 262 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 263 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 264 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_1 + 265 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_1 + 266 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 267 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 268 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_1 + 269 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_1 + 270 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 273 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 274 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 275 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 276 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_1 + 282 + OFFSET_X, 1, 0.14, 0.14 );

setRotateKey( spep_1 + 232 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 282 + OFFSET_X, 1, 0 );

setBlendColor( spep_1 + 200 + OFFSET_X, 1, 5, 0.95, 0.27, 0.97, 0.85 );
setBlendColor( spep_1 + 282 + OFFSET_X, 1, 5, 0, 0, 0, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--リブリアンハート作る
SE034 = playSeVer2( spep_1 + 0, 1432, "", 0, 0, 0, 0.6);
SE035 = playSeVer2( spep_1 + 6, 1434, "", 0, 0, 0, -1);
--ハート正面撃つ
SE037 = playSeVer2( spep_1 + 106, 1027, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_1 + 106, 1115, "",spep_1 + 226, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 106, SE038, 89 );
SE039 = playSeVer2( spep_1 + 106, 1112, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_1 + 106, 1022, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_1 + 106, 1435, "",spep_1 + 222, 0, 26, -1);
setSeVolumeByWorkId( spep_1 + 106, SE041, 170 );
--敵ヒット
SE042 = playSeVer2( spep_1 + 190, 1179, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_1 + 198, 1011, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_1 + 198, 1187, "", 0, 0, 0, -1);
--敵飛んでいく
SE045 = playSeVer2( spep_1 + 228, 1121, "",spep_1 + 298, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 228, SE045, 81 );
SE046 = playSeVer2( spep_1 + 228, 1183, "",spep_1 + 298, 0, 16, -1);
setSeVolumeByWorkId( spep_1 + 228, SE046, 77 );
--爆発
SE047 = playSeVer2( spep_1 + 280, 1159, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_1 + 280, 1024, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_1 + 286, 1427, "", 0, 0, 0, -1);
--地響き
SE049 = playSeVer2( spep_1 + 280, 1044, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 280, SE049, 63 );

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 300); 
endPhase( spep_1 + MAX_FRAME_1 -4); -- 428

end
