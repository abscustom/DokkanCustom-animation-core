--1032360:UR_アルティメット孫悟飯+ガンマ1号_必殺技：爆力魔閃
--sp_effect_a2_00274
--sp2932

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01 = 164328;  -- セリフカットイン〜格闘 ef_001
SP_02 = 164329;  -- 両手から気弾〜爆発 ef_002


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

ENABLE_AUTO_TIME_STRETCH(0.76);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 330;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 172);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 172, SP_01, spep_2 + 172 -1 + 2, 1);
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --SE名
        SE026 = playSeVer2( spep_2 + 174, 1024, "", 0, 0, 0, -1);
        SE027 = playSeVer2( spep_2 + 174, 1159, "", 0, 0, 0, -1);
    else

        setupMovie(0 , SP_01, 0, 1);
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- セリフカットイン〜格闘
-------------------------------------------------
MAX_FRAME_0 = 330;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- セリフカットイン〜格闘(ef_001)
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
spep_x = spep_0 + 10;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -85, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -85, 515.5 , 0 );
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

--敵の動き1

y = -80;

setDisp( spep_0 + 164 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 264 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 164 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 192 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 196 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 198 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 204 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 208 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 210 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 214 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 218 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 224 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 228 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 242 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 164 + OFFSET_X, 1, 316.8, 812.8 + y , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 316.8, 812.8 + y , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 307.9, 780.4 + y , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 307.9, 780.4 + y , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 298.2, 744.7 + y , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 298.2, 744.7 + y , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 287.5, 705.4 + y , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 287.5, 705.4 + y , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 275.8, 662.1 + y , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 275.8, 662.1 + y , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 262.8, 614.5 + y , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 262.8, 614.5 + y , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 248.6, 562.4 + y , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 248.6, 562.4 + y , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 233.2, 505.8 + y , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 233.2, 505.8 + y , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 216.7, 445.1 + y , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 216.7, 445.1 + y , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 199.4, 381.6 + y , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 199.4, 381.6 + y , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 181.8, 316.8 + y , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 181.8, 316.8 + y , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 164.3, 252.6 + y , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 164.3, 252.6 + y , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 147.4, 190.6 + y , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 147.4, 190.6 + y , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 131.5, 132.2 + y , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 131.5, 132.2 + y , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 116.5, 77.6 + y , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 116.5, 77.6 + y , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 119.8, 76.7 + y , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 119.8, 76.7 + y , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 123.1, 75.8 + y , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 123.1, 75.8 + y , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 144.6, 68.8 + y , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 144.6, 68.8 + y , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 148.5, 81.1 + y , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 148.5, 81.1 + y , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 178.7, 105.2 + y , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 178.7, 105.2 + y , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 193.6, 105.2 + y , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 193.6, 105.2 + y , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 192.9, 81.8 + y , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 192.9, 81.8 + y , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 216.8, 99.3 + y , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 216.8, 99.3 + y , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 212.2, 111.7 + y , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 212.2, 111.7 + y , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 172.7, 113.6 + y , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 172.7, 113.6 + y , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 187.7, 113.6 + y , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 187.7, 113.6 + y , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 200.5, 112.2 + y , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 200.5, 112.2 + y , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 199.6, 96.4 + y , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 199.6, 96.4 + y , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 197.4, 105.8 + y , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 197.4, 105.8 + y , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 172.6, 113.6 + y , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 172.6, 113.6 + y , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 187.6, 113.6 + y , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 187.6, 113.6 + y , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 174.9, 120.8 + y , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 174.9, 120.8 + y , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 175.6, 118.9 + y , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 175.6, 118.9 + y , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 170.9, 116.4 + y , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 170.9, 116.4 + y , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 171.6, 114.5 + y , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 171.6, 114.5 + y , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 169.7, 112.2 + y , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 169.7, 112.2 + y , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 165.5, 109.7 + y , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 165.5, 109.7 + y , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 166.2, 107.9 + y , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 166.2, 107.9 + y , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 141.9, 45.7 + y , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 141.9, 45.7 + y , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 145.8, 58.1 + y , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 145.8, 58.1 + y , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 134.1, 51.7 + y , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 134.1, 51.7 + y , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 149.2, 52.2 + y , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 149.2, 52.2 + y , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 137.1, 60.8 + y , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 137.1, 60.8 + y , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 142.9, 50.9 + y , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 142.9, 50.9 + y , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 147.9, 68.8 + y , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 147.9, 68.8 + y , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 149.7, 78 + y , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 149.7, 78 + y , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 152.4, 92.1 + y , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 152.4, 92.1 + y , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 156.4, 112.7 + y , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 156.4, 112.7 + y , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 161.8, 141.7 + y , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 161.8, 141.7 + y , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 320.7, 825.1 + y , 0 );

setScaleKey( spep_0 + 164 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_0 + 164 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, -60.2 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, -60.2 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, -60.2 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, -60.2 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, -60.2 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, -60.2 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -60.2 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -60.2 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, 2.8 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -11.5 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, -11.5 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, -11 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -11 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, -52.9 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, -52.9 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, -53.1 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, -53.1 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -53.6 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, -53.6 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -54.5 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, -54.5 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -56 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -56 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -58.2 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -58.2 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -61.4 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -61.4 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -66 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, -66 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 164 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );

--敵の動き2

setDisp( spep_0 + 294 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 330 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 294 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 294 + OFFSET_X, 1, -20.3, -169.4 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -20.3, -169.4 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -19.2, -170.2 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -19.2, -170.2 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -15.9, -172.5 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -15.9, -172.5 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -10.3, -176.4 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -10.3, -176.4 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -2.4, -181.9 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -2.4, -181.9 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 7.6, -189 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 7.6, -189 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 20, -197.6 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 20, -197.6 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 34.5, -207.8 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 34.5, -207.8 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 51.3, -219.5 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 51.3, -219.5 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 70.3, -232.8 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 70.3, -232.8 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 91.6, -247.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 91.6, -247.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 115.1, -264.1 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 115.1, -264.1 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 204.9, -327 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 204.9, -327 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 282.7, -381.4 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 282.7, -381.4 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 348.6, -427.5 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 348.6, -427.5 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 402.5, -465.1 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 402.5, -465.1 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 444.4, -494.5 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 444.4, -494.5 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 474.3, -515.4 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 474.3, -515.4 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 492.3, -527.9 , 0 );

setScaleKey( spep_0 + 294 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.85, 0.85 );

setRotateKey( spep_0 + 294 + OFFSET_X, 1, 34.9 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, 34.9 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, 34.8 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 352, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--気ダメ
SE003 = playSeVer2( spep_0 + 102, 1004, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 122, 1503, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE004, 112 );
SE005 = playSeVer2( spep_0 + 122, 1035, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 132, 1504, "", 0, 0, 0, -1);

--向かっていく
SE007 = playSeVer2( spep_0 + 156, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 156, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 180; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
pauseAll( SP_dodge, 67);

setBlendColor( SP_dodge + 6, 1, 3, 0, 0, 0, 0 );

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

--パンチ１
SE009 = playSeVer2( spep_0 + 186, 1187, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 186, 1009, "", 0, 0, 0, -1);

--パンチ２
SE011 = playSeVer2( spep_0 + 206, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE011, 68 );
SE012 = playSeVer2( spep_0 + 206, 1110, "", 0, 0, 0, -1);

--蹴り飛ばす
SE013 = playSeVer2( spep_0 + 236, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE014 = playSeVer2( spep_0 + 236, 1121, "",spep_0 + 352, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 236, SE014, 65 );

--瞬間移動
SE015 = playSeVer2( spep_0 + 268, 1109, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 288, 1109, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --330F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--気弾溜め
SE018 = playSeVer2( spep_1 + 90, 1296, "",spep_1 + 190, 0, 24, -1);
SE019 = playSeVer2( spep_1 + 90, 1209, "",spep_1 + 192, 0, 26, -1);

-------------------------------------------------
-- 両手から気弾〜爆発
-------------------------------------------------
MAX_FRAME_2 = 300;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 両手から気弾〜爆発(ef_00b)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 116 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 162 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 116 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 128 + OFFSET_X, 1, 106 );

x = -100;

setMoveKey( spep_2 + 116 + OFFSET_X, 1, 2.4, -73.4 + x , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 2.4, -73.4 + x , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 2.4, -73.7 + x , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 2.4, -73.7 + x , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 2.5, -74 + x , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 2.5, -74 + x , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 2.5, -74.3 + x , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 2.5, -74.3 + x , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 2.5, -74.6 + x , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 2.5, -74.6 + x , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 2.4, -74.9 + x , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 2.4, -74.9 + x , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 33.7, -75.1 + x , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 33.7, -75.1 + x , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 33.9, -75.4 + x , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 33.9, -75.4 + x , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 36.4, -80.5 + x , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 36.4, -80.5 + x , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 29.4, -77.5 + x , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 29.4, -77.5 + x , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 9.4, -70.2 + x , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 9.4, -70.2 + x , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 3.4, -73.2 + x , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 3.4, -73.2 + x , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 15.1, -47.2 + x , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 15.1, -47.2 + x , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 17.6, -52.2 + x , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 17.6, -52.2 + x , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 17.5, -70.3 + x , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 17.5, -70.3 + x , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 26, -70.3 + x , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 26, -70.3 + x , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 31.9, -73.3 + x , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 31.9, -73.3 + x , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 33.9, -68.3 + x , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 33.9, -68.3 + x , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 29.3, -99.2 + x , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 29.3, -99.2 + x , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 22.3, -96.2 + x , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 22.3, -96.2 + x , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 37.9, -77.4 + x , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 37.9, -77.4 + x , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 31.9, -80.4 + x , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 31.9, -80.4 + x , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 33.9, -98.9 + x , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 33.9, -98.9 + x , 0 );

setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.13, 1.13 );

setRotateKey( spep_2 + 116 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -69.4 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -69.4 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -40.8 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -64.7 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -64.7 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -34.8 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -49 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, -49 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, -63 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, -49 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -49 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -23 );

setBlendColor( spep_2 + 116 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_2 + 162 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--気弾溜め
SE020 = playSeVer2( spep_2 + 6, 1507, "", 0, 0, 0, -1);

--連続気弾発射
SE021 = playSeVer2( spep_2 + 70, 1021, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 70, 1406, "",spep_2 + 184, 0, 20, -1);
SE023 = playSeVer2( spep_2 + 70, 1423, "",spep_2 + 196, 0, 36, -1);
SE024 = playSeVer2( spep_2 + 70, 1463, "", 0, 0, 0, -1);

--爆発
SE025 = playSeVer2( spep_2 + 124, 1023, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 160, 1024, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 160, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 180); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 300F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

setupMovie(0 , SP_01, 0, 1);

spep_0 = 0;

-------------------------------------------------
-- セリフカットイン〜格闘
-------------------------------------------------
MAX_FRAME_0 = 330;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- セリフカットイン〜格闘(ef_001)
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
spep_x = spep_0 + 10;
--[[
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
]]
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -85, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -85, 515.5 , 0 );
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

-- ** 敵キャラクター ** --

--敵の動き1

y = -80;

setDisp( spep_0 + 164 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 264 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 164 + OFFSET_X, 1, 0 );
changeAnime( spep_0 + 192 + OFFSET_X, 1, 4 );
changeAnime( spep_0 + 196 + OFFSET_X, 1, 0 );
changeAnime( spep_0 + 198 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 204 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 208 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 210 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 214 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 218 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 224 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 228 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 242 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 164 + OFFSET_X, 1, -316.8, 812.8 + y , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -316.8, 812.8 + y , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -307.9, 780.4 + y , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -307.9, 780.4 + y , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -298.2, 744.7 + y , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -298.2, 744.7 + y , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -287.5, 705.4 + y , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -287.5, 705.4 + y , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -275.8, 662.1 + y , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -275.8, 662.1 + y , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -262.8, 614.5 + y , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -262.8, 614.5 + y , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -248.6, 562.4 + y , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -248.6, 562.4 + y , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -233.2, 505.8 + y , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -233.2, 505.8 + y , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -216.7, 445.1 + y , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -216.7, 445.1 + y , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -199.4, 381.6 + y , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -199.4, 381.6 + y , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -181.8, 316.8 + y , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -181.8, 316.8 + y , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -164.3, 252.6 + y , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -164.3, 252.6 + y , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -147.4, 190.6 + y , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -147.4, 190.6 + y , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -131.5, 132.2 + y , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -131.5, 132.2 + y , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -116.5, 77.6 + y , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -116.5, 77.6 + y , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -119.8, 76.7 + y , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -119.8, 76.7 + y , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -123.1, 75.8 + y , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -123.1, 75.8 + y , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -144.6, 68.8 + y , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -144.6, 68.8 + y , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -148.5, 81.1 + y , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -148.5, 81.1 + y , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -178.7, 105.2 + y , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -178.7, 105.2 + y , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -193.6, 105.2 + y , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -193.6, 105.2 + y , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -192.9, 81.8 + y , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -192.9, 81.8 + y , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -216.8, 99.3 + y , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -216.8, 99.3 + y , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -212.2, 111.7 + y , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -212.2, 111.7 + y , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -172.7, 113.6 + y , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -172.7, 113.6 + y , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -187.7, 113.6 + y , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -187.7, 113.6 + y , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -200.5, 112.2 + y , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -200.5, 112.2 + y , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -199.6, 96.4 + y , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -199.6, 96.4 + y , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -197.4, 105.8 + y , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -197.4, 105.8 + y , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -172.6, 113.6 + y , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -172.6, 113.6 + y , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -187.6, 113.6 + y , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -187.6, 113.6 + y , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -174.9, 120.8 + y , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -174.9, 120.8 + y , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -175.6, 118.9 + y , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -175.6, 118.9 + y , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -170.9, 116.4 + y , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -170.9, 116.4 + y , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -171.6, 114.5 + y , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -171.6, 114.5 + y , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -169.7, 112.2 + y , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -169.7, 112.2 + y , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -165.5, 109.7 + y , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -165.5, 109.7 + y , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -166.2, 107.9 + y , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -166.2, 107.9 + y , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -141.9, 45.7 + y , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -141.9, 45.7 + y , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -145.8, 58.1 + y , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -145.8, 58.1 + y , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -134.1, 51.7 + y , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -134.1, 51.7 + y , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -149.2, 52.2 + y , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -149.2, 52.2 + y , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -137.1, 60.8 + y , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -137.1, 60.8 + y , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -142.9, 50.9 + y , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -142.9, 50.9 + y , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -147.9, 68.8 + y , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -147.9, 68.8 + y , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -149.7, 78 + y , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -149.7, 78 + y , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -152.4, 92.1 + y , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -152.4, 92.1 + y , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -156.4, 112.7 + y , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -156.4, 112.7 + y , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -161.8, 141.7 + y , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -161.8, 141.7 + y , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -320.7, 825.1 + y , 0 );

setScaleKey( spep_0 + 164 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 249 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 251 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1, 1 );

setRotateKey( spep_0 + 164 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 197 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 198 + OFFSET_X, 1, 60.2 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, 60.2 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 207 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 208 + OFFSET_X, 1, 60.2 );
setRotateKey( spep_0 + 209 + OFFSET_X, 1, 60.2 );
setRotateKey( spep_0 + 210 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 213 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 214 + OFFSET_X, 1, 60.2 );
setRotateKey( spep_0 + 217 + OFFSET_X, 1, 60.2 );
setRotateKey( spep_0 + 218 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, 60.2 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, 60.2 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, 11 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, 11 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, 52.8 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, 52.8 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, 53.1 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, 53.1 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, 53.6 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, 53.6 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, 54.5 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, 54.5 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, 56 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, 56 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, 58.2 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, 58.2 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, 61.4 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, 61.4 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, 66 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, 66 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 164 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );

--敵の動き2

setDisp( spep_0 + 294 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 330 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 294 + OFFSET_X, 1, 7 );

setMoveKey( spep_0 + 294 + OFFSET_X, 1, 20.3, -169.4 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 20.3, -169.4 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 19.2, -170.2 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 19.2, -170.2 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 15.9, -172.5 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 15.9, -172.5 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 10.3, -176.4 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 10.3, -176.4 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 2.4, -181.9 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 2.4, -181.9 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -7.6, -189 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -7.6, -189 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -20, -197.6 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -20, -197.6 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -34.5, -207.8 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -34.5, -207.8 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -51.3, -219.5 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -51.3, -219.5 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -70.3, -232.8 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -70.3, -232.8 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -91.6, -247.7 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -91.6, -247.7 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -115.1, -264.1 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -115.1, -264.1 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -204.9, -327 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -204.9, -327 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -282.7, -381.4 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -282.7, -381.4 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -348.6, -427.5 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -348.6, -427.5 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -402.5, -465.1 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -402.5, -465.1 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -444.4, -494.5 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -444.4, -494.5 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -474.3, -515.4 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -474.3, -515.4 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -492.3, -527.9 , 0 );

setScaleKey( spep_0 + 294 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 0.85, 0.85 );

setRotateKey( spep_0 + 294 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, -34.8 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 352, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--気ダメ
SE003 = playSeVer2( spep_0 + 102, 1004, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 122, 1503, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 122, SE004, 112 );
SE005 = playSeVer2( spep_0 + 122, 1035, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 132, 1504, "", 0, 0, 0, -1);

--向かっていく
SE007 = playSeVer2( spep_0 + 156, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 156, 1117, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 180; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
pauseAll( SP_dodge, 67);

setBlendColor( SP_dodge + 6, 1, 3, 0, 0, 0, 0 );

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

--パンチ１
SE009 = playSeVer2( spep_0 + 186, 1187, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 186, 1009, "", 0, 0, 0, -1);

--パンチ２
SE011 = playSeVer2( spep_0 + 206, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE011, 68 );
SE012 = playSeVer2( spep_0 + 206, 1110, "", 0, 0, 0, -1);

--蹴り飛ばす
SE013 = playSeVer2( spep_0 + 236, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE014 = playSeVer2( spep_0 + 236, 1121, "",spep_0 + 352, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 236, SE014, 65 );

--瞬間移動
SE015 = playSeVer2( spep_0 + 268, 1109, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 288, 1109, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --330F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--気弾溜め
SE018 = playSeVer2( spep_1 + 90, 1296, "",spep_1 + 190, 0, 24, -1);
SE019 = playSeVer2( spep_1 + 90, 1209, "",spep_1 + 192, 0, 26, -1);

-------------------------------------------------
-- 両手から気弾〜爆発
-------------------------------------------------
MAX_FRAME_2 = 300;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 両手から気弾〜爆発(ef_00b)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 116 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 162 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 116 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 128 + OFFSET_X, 1, 6 );

x = -100;

setMoveKey( spep_2 + 116 + OFFSET_X, 1, -2.4, -73.4 + x , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -2.4, -73.4 + x , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -2.4, -73.7 + x , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -2.4, -73.7 + x , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -2.5, -74 + x , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -2.5, -74 + x , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -2.5, -74.3 + x , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -2.5, -74.3 + x , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -2.5, -74.6 + x , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -2.5, -74.6 + x , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -2.4, -74.9 + x , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -2.4, -74.9 + x , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -33.7, -75.1 + x , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -33.7, -75.1 + x , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -33.9, -75.4 + x , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -33.9, -75.4 + x , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -36.4, -80.5 + x , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -36.4, -80.5 + x , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -29.4, -77.5 + x , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -29.4, -77.5 + x , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -9.4, -70.2 + x , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -9.4, -70.2 + x , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -3.4, -73.2 + x , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -3.4, -73.2 + x , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -15.1, -47.2 + x , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -15.1, -47.2 + x , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -17.6, -52.2 + x , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -17.6, -52.2 + x , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -17.5, -70.3 + x , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -17.5, -70.3 + x , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -26, -70.3 + x , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -26, -70.3 + x , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -31.9, -73.3 + x , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -31.9, -73.3 + x , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -33.9, -68.3 + x , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -33.9, -68.3 + x , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -29.3, -99.2 + x , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -29.3, -99.2 + x , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -22.3, -96.2 + x , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -22.3, -96.2 + x , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -37.9, -77.4 + x , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -37.9, -77.4 + x , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -31.9, -80.4 + x , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -31.9, -80.4 + x , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -33.9, -98.9 + x , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -33.9, -98.9 + x , 0 );

setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.13, 1.13 );

setRotateKey( spep_2 + 116 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, 69.4 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, 69.4 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, 40.8 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, 40.8 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, 64.7 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, 64.7 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 34.8 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 49 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 49 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 63 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 63 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 49 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 49 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 23 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 23 );

setBlendColor( spep_2 + 116 + OFFSET_X, 1, 3, 0, 0, 0, 0.3 );
setBlendColor( spep_2 + 162 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--気弾溜め
SE020 = playSeVer2( spep_2 + 6, 1507, "", 0, 0, 0, -1);

--連続気弾発射
SE021 = playSeVer2( spep_2 + 70, 1021, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 70, 1406, "",spep_2 + 184, 0, 20, -1);
SE023 = playSeVer2( spep_2 + 70, 1423, "",spep_2 + 196, 0, 36, -1);
SE024 = playSeVer2( spep_2 + 70, 1463, "", 0, 0, 0, -1);

--爆発
SE025 = playSeVer2( spep_2 + 124, 1023, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 160, 1024, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 160, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 180); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 300F


end