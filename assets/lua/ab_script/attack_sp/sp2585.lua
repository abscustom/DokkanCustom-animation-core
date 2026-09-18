--1027000:UR_超サイヤ人トランクス(青年期)_バーニングブレイカー
--sp_effect_a2_00219
--sp2585

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162059;  --ef_001  開幕気合い突進～空中攻撃 敵より前
SP_02 = 162060;  --ef_001b 開幕気合い突進～空中攻撃 敵より後ろ
SP_03 = 162063;  --ef_002  気弾連射～フィニッシュ 敵より前
SP_04 = 162064;  --ef_002b  気弾連射～フィニッシュ 敵より後ろ

--エフェクト(敵)
SP_01r = 162061;  --ef_001r  開幕気合い突進～空中攻撃 敵より前 敵側
SP_02r = 162062;  --ef_001br 開幕気合い突進～空中攻撃 敵より前 敵側
SP_03r = 162065;  --ef_002r  気弾連射～フィニッシュ 敵より前 敵側
SP_04r = 162066;  --ef_002br 気弾連射～フィニッシュ 敵より後ろ 敵側

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

ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;
        spep_1 = 366;
        spep_2 = spep_1 + 94;

        timing_skip = spep_2 + 140;

        skipFrame(0, spep_0 + timing_skip );  -- スキップ先フレーム指定

        -- ** 音 ** --
        --連続気弾
        SE043 = playSeVer2( spep_2 + 140 + 3, 1401, "",spep_2 + 168, 0, 14, -1);
        setSeVolumeByWorkId( spep_2 + 140 + 3, SE043, 120 );

    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕気合い突進～空中攻撃(366f)
-------------------------------------------------
MAX_FRAME_0 = 366;


-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- エフェクトのコメント(エフェクト名)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); -- エフェクトのコメント(エフェクト名_back)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -135, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -135, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -135, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 150 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 350 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 150 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 186 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 260 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 334 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 150 + OFFSET_X, 1, 410.8, -549.3 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 410.8, -549.3 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 364.1, -473.9 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 317.4, -398.5 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 270.7, -323.2 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 224, -247.9 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 177.4, -172.5 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 177.1, -172.2 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 176.7, -171.9 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 176.3, -171.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 175.9, -171.2 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 175.6, -170.9 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 175.2, -170.6 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 174.9, -170.3 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 174.5, -170 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 174.2, -169.7 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 173.8, -169.4 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 173.4, -169 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 173.1, -168.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 223.8, -90.1 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 220.8, -93.7 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 217.9, -97.4 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 215, -101 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 212, -104.7 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 209.1, -108.3 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 206.1, -112 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 203.2, -115.6 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 200.3, -119.3 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 197.3, -122.9 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 191.9, -124.2 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 187.7, -119.7 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 183.6, -115.2 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 179.4, -110.7 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 175.2, -106.2 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 171.1, -101.7 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 166.9, -97.2 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 162.7, -92.7 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 158.5, -88.2 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 154.4, -83.7 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 150.2, -79.2 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 146, -74.7 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 141.9, -70.2 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 137.7, -65.7 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 133.5, -61.2 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 129.4, -56.7 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 125.2, -52.2 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 121, -47.7 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 116.8, -43.2 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 112.7, -38.7 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 108.5, -34.2 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 104.3, -29.7 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 100.2, -25.2 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 96, -20.7 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 87.5, -23.6 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 159, -79.2 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 159, -79.2 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 105.2, 21.2 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 105.2, 21.2 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 77.2, -10.7 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 77.2, -10.7 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 58.5, 68.5 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 58.5, 68.5 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 61.9, -17.5 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 61.9, -17.5 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 130.8, 70 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 130.8, 70 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 47.9, 59.1 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 47.9, 59.1 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 318.2, -101.9 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 318.2, -101.9 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 293.3, -83.7 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 293.3, -83.7 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 323, -105.8 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 323, -105.8 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 344.5, -124.5 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 344.5, -124.5 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 358.2, -140.2 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 358.2, -140.2 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 364.1, -152.7 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 364.1, -152.7 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 362, -162 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 362, -162 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 363.1, -166.4 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 363.1, -166.4 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 364, -170.7 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 364, -170.7 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 364.9, -175 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 364.9, -175 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 365.9, -179.3 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 365.9, -179.3 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 366.7, -183.5 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 366.7, -183.5 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 367.6, -187.6 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 367.6, -187.6 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 368.4, -191.7 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 368.4, -191.7 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 369.2, -195.7 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 369.2, -195.7 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 370, -199.7 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 370, -199.7 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 370.8, -203.7 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 370.8, -203.7 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 371.5, -207.5 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 371.5, -207.5 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 370.4, -206.3 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 370.4, -206.3 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 369.4, -205 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 369.4, -205 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 368.4, -203.7 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 368.4, -203.7 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 367.3, -202.5 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 367.3, -202.5 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 366.3, -201.2 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 366.3, -201.2 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 365.2, -200 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 365.2, -200 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 364.2, -198.7 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 364.2, -198.7 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 363.1, -197.4 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 363.1, -197.4 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 362.1, -196.1 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 362.1, -196.1 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 361, -194.9 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 361, -194.9 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 360, -193.6 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 360, -193.6 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 359, -192.3 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 359, -192.3 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 435.5, -241.4 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 435.5, -241.4 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 386.7, -134.4 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 386.7, -134.4 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 83.7, -129.8 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 83.7, -129.8 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 87.2, -46.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 87.2, -46.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 112.6, -129.4 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 112.6, -129.4 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 203.6, -38.2 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 203.6, -38.2 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 142.7, -45.5 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 142.7, -45.5 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 269.6, -136.4 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 269.6, -136.4 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 223.5, -94.8 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 223.5, -94.8 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 503.4, -139.9 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 503.4, -139.9 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 783.3, -185 , 0 );

setScaleKey( spep_0 + 150 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 4.02, 4.02 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 4.87, 4.87 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 4.87, 4.87 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 2.58, 2.58 );

setRotateKey( spep_0 + 150 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 24 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, 24 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, 28 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, 28 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, 29 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, 29 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 29.6 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, 29.6 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, 29.9 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, 29.9 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 30.2 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, 30.2 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, 30.6 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, 30.6 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, 30.9 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, 30.9 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 31.2 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, 31.2 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, 32.2 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, 32.2 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, 32.5 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, 32.5 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, 33.1 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, 33.1 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, 34.1 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, 34.1 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, 34.4 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, 34.4 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, 35 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, 35 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 36 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, 36 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 343 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_0 + 347 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, -33.1 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);

--顔カットイン
--SE002 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);

--気を高める
SE006 = playSeVer2( spep_0 + 96, 1035, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 96, 1026, "", 0, 0, 0, -1);

--向かっていく
SE008 = playSeVer2( spep_0 + 132, 1116, "",spep_0 + 190, 0, 36, -1);
SE009 = playSeVer2( spep_0 + 150, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE009, 126 );
SE010 = playSeVer2( spep_0 + 156, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE010, 129 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

  SP_dodge = spep_0 + 170; --エンドフェイズのフレーム数を置き換える
  
  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE006, 0);
  stopSe( SP_dodge - 12, SE007, 0);
  stopSe( SP_dodge - 12, SE008, 0);
  stopSe( SP_dodge - 12, SE009, 0);
  stopSe( SP_dodge - 12, SE010, 0);
  
  pauseAll( SP_dodge, 67);   
  
  speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
  setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
  
  kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
  --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
  
  entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
  endPhase(SP_dodge+10);
  
do return end
else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 音 ** --
--助走つける
SE011 = playSeVer2( spep_0 + 190, 1117, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 190, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 190, SE012, 56 );
SE013 = playSeVer2( spep_0 + 190, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 190, SE013, 32 );
SE014 = playSeVer2( spep_0 + 212, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 214, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 214, SE015, 32 );
SE016 = playSeVer2( spep_0 + 238, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 238, SE016, 32 );

--キック
SE017 = playSeVer2( spep_0 + 242, 1258, "",spep_0 + 304, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 242, SE017, 71 );
SE018 = playSeVer2( spep_0 + 256, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 256, SE018, 89 );
SE019 = playSeVer2( spep_0 + 256, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 256, SE019, 89 );
SE020 = playSeVer2( spep_0 + 264, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE020, 88 );

--近づく
SE021 = playSeVer2( spep_0 + 296, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE021, 116 );
SE022 = playSeVer2( spep_0 + 296, 1048, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE022, 79 );

--オーラ
SE023 = playSeVer2( spep_0 + 296, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE023, 63 );
SE024 = playSeVer2( spep_0 + 320, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 320, SE024, 63 );

--殴り飛ばす
SE025 = playSeVer2( spep_0 + 334, 1009, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 336, 1120, "",spep_0 + 382, 0, 10, -1);
SE027 = playSeVer2( spep_0 + 338, 1110, "",spep_0 + 384, 0, 12, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --366f


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--オーラ
SE029 = playSeVer2( spep_1 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE029, 63 );

-------------------------------------------------
-- 気弾連射～フィニッシュ(298f)
-------------------------------------------------
MAX_FRAME_2 = 298;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0); -- エフェクトのコメント(エフェクト名)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0); -- エフェクトのコメント(エフェクト名_back)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 敵キャラクター ** --
setDisp( spep_2 + 140 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 298 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 140 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 140 + OFFSET_X, 1, 695.4, -950.9 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 605, -815 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 526.5, -695.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 438, -589.2 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 333.5, -457.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 259.2, -337.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 152.7, -235.5 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 151.6, -231.7 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 150.6, -215.8 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 161.5, -216 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 162.5, -230.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 147.4, -218.3 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 162.3, -218.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 145.3, -236.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 144.2, -232.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 143.2, -216.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 154.1, -217.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 155, -231.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 140, -219.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 154.9, -219.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 137.9, -237.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 136.8, -233.9 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 135.7, -218 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 146.7, -218.1 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 147.6, -232.3 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 132.6, -220.5 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 147.5, -220.6 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 130.4, -238.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 129.4, -235 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 128.3, -219.1 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 139.2, -219.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 140.1, -233.4 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 125.1, -221.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 140, -221.7 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 123, -239.9 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 121.9, -236 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 120.8, -220.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 131.8, -220.3 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 132.7, -234.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 117.7, -222.7 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 132.6, -222.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 115.5, -241 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 114.5, -237.1 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 113.4, -221.3 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 124.4, -221.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 125.3, -235.6 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 110.3, -223.8 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 125.2, -223.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 108.1, -242.1 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 107.1, -238.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 106, -222.4 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 117, -222.5 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 117.9, -236.7 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 102.8, -224.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 117.8, -225 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 100.7, -243.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 99.7, -239.3 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 98.6, -223.5 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 109.5, -223.6 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 110.5, -237.8 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 95.4, -225.9 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 110.4, -226.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 93.3, -244.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 92.2, -240.4 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 91.2, -224.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 102.1, -224.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 103.1, -238.9 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 88, -227 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 102.9, -227.2 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 85.9, -245.4 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 84.8, -241.5 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 83.8, -225.7 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 94.7, -225.8 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 95.6, -240 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 80.6, -228.1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 95.5, -228.3 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 78.5, -246.4 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 77.4, -242.6 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 76.3, -226.7 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 87.3, -226.9 , 0 );

setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.66, 1.66 );

setRotateKey( spep_2 + 140 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--オーラ
SE030 = playSeVer2( spep_2 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 20, SE030, 63 );

--連続気弾
SE031 = playSeVer2( spep_2 + 40, 1403, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE031, 124 );
SE032 = playSeVer2( spep_2 + 40, 1406, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE032, 94 );
SE033 = playSeVer2( spep_2 + 40, 1401, "",spep_2 + 76, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 40, SE033, 120 );
SE034 = playSeVer2( spep_2 + 48, 1401, "",spep_2 + 84, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 48, SE034, 120 );
SE035 = playSeVer2( spep_2 + 56, 1401, "",spep_2 + 92, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 56, SE035, 102 );
SE036 = playSeVer2( spep_2 + 66, 1401, "",spep_2 + 100, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 66, SE036, 112 );
SE037 = playSeVer2( spep_2 + 76, 1401, "",spep_2 + 112, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 76, SE037, 137 );
SE038 = playSeVer2( spep_2 + 86, 1401, "",spep_2 + 122, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 86, SE038, 120 );
SE039 = playSeVer2( spep_2 + 98, 1401, "",spep_2 + 132, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 98, SE039, 109 );
SE040 = playSeVer2( spep_2 + 106, 1401, "",spep_2 + 140, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 106, SE040, 99 );
SE041 = playSeVer2( spep_2 + 114, 1401, "",spep_2 + 148, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 114, SE041, 120 );
SE042 = playSeVer2( spep_2 + 122, 1401, "",spep_2 + 158, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 122, SE042, 112 );
SE043 = playSeVer2( spep_2 + 134, 1401, "",spep_2 + 168, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 134, SE043, 120 );
SE044 = playSeVer2( spep_2 + 144, 1401, "",spep_2 + 178, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 144, SE044, 135 );
SE045 = playSeVer2( spep_2 + 148, 1406, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 148, SE045, 85 );
SE047 = playSeVer2( spep_2 + 154, 1401, "",spep_2 + 188, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 154, SE047, 117 );
SE048 = playSeVer2( spep_2 + 162, 1401, "",spep_2 + 198, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 162, SE048, 99 );
SE050 = playSeVer2( spep_2 + 174, 1401, "",spep_2 + 208, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 174, SE050, 108 );
SE051 = playSeVer2( spep_2 + 184, 1401, "",spep_2 + 218, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 184, SE051, 66 );
SE053 = playSeVer2( spep_2 + 194, 1401, "",spep_2 + 230, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 194, SE053, 68 );
SE054 = playSeVer2( spep_2 + 204, 1401, "",spep_2 + 238, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 204, SE054, 82 );
SE056 = playSeVer2( spep_2 + 214, 1401, "",spep_2 + 250, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 214, SE056, 120 );
SE057 = playSeVer2( spep_2 + 224, 1401, "",spep_2 + 260, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 224, SE057, 120 );
SE058 = playSeVer2( spep_2 + 240, 1401, "",spep_2 + 276, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 240, SE058, 120 );
SE059 = playSeVer2( spep_2 + 250, 1401, "",spep_2 + 286, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 250, SE059, 120 );
SE060 = playSeVer2( spep_2 + 258, 1401, "",spep_2 + 286 +8, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 258, SE060, 120 );
SE064 = playSeVer2( spep_2 + 258 +8, 1401, "",spep_2 + 286 +8 +8, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 258 +8, SE059, 120 );

--連続爆発
SE046 = playSeVer2( spep_2 + 148, 1023, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 188, 1011, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 170, 1014, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 206, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 196); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 終了フレーム  298f -2

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 開幕気合い突進～空中攻撃(366f)
-------------------------------------------------
MAX_FRAME_0 = 366;


-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- エフェクトのコメント(エフェクト名)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_02r, 0x80, -1, 0, 0, 0); -- エフェクトのコメント(エフェクト名_back)
setEffMoveKey( spep_0 + 0, start_b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_b, 0);
setEffAlphaKey( spep_0 + 0, start_b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_b, 255);

----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -135, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -135, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -135, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 150 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 350 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 150 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 186 + OFFSET_X, 1, 102 );
changeAnime( spep_0 + 260 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 334 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 150 + OFFSET_X, 1, 410.8, -549.3 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 410.8, -549.3 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 364.1, -473.9 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 317.4, -398.5 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 270.7, -323.2 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 224, -247.9 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 177.4, -172.5 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 177.1, -172.2 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 176.7, -171.9 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 176.3, -171.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 175.9, -171.2 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 175.6, -170.9 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 175.2, -170.6 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 174.9, -170.3 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 174.5, -170 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 174.2, -169.7 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 173.8, -169.4 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 173.4, -169 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 173.1, -168.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 223.8, -90.1 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 220.8, -93.7 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 217.9, -97.4 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 215, -101 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 212, -104.7 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 209.1, -108.3 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 206.1, -112 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 203.2, -115.6 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 200.3, -119.3 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 197.3, -122.9 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 191.9, -124.2 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 187.7, -119.7 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 183.6, -115.2 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 179.4, -110.7 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 175.2, -106.2 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 171.1, -101.7 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 166.9, -97.2 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 162.7, -92.7 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 158.5, -88.2 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 154.4, -83.7 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 150.2, -79.2 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 146, -74.7 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 141.9, -70.2 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 137.7, -65.7 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 133.5, -61.2 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 129.4, -56.7 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 125.2, -52.2 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 121, -47.7 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 116.8, -43.2 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 112.7, -38.7 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 108.5, -34.2 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 104.3, -29.7 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 100.2, -25.2 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 96, -20.7 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 87.5, -23.6 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 159, -79.2 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 159, -79.2 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 105.2, 21.2 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 105.2, 21.2 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 77.2, -10.7 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 77.2, -10.7 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 58.5, 68.5 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 58.5, 68.5 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 61.9, -17.5 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 61.9, -17.5 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 130.8, 70 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 130.8, 70 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 47.9, 59.1 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 47.9, 59.1 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 318.2, -101.9 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 318.2, -101.9 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 293.3, -83.7 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 293.3, -83.7 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 323, -105.8 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 323, -105.8 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 344.5, -124.5 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 344.5, -124.5 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 358.2, -140.2 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 358.2, -140.2 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 364.1, -152.7 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 364.1, -152.7 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 362, -162 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 362, -162 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 363.1, -166.4 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 363.1, -166.4 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 364, -170.7 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 364, -170.7 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 364.9, -175 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 364.9, -175 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 365.9, -179.3 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 365.9, -179.3 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 366.7, -183.5 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 366.7, -183.5 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 367.6, -187.6 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 367.6, -187.6 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 368.4, -191.7 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 368.4, -191.7 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 369.2, -195.7 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 369.2, -195.7 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 370, -199.7 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 370, -199.7 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 370.8, -203.7 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 370.8, -203.7 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 371.5, -207.5 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 371.5, -207.5 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 370.4, -206.3 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 370.4, -206.3 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 369.4, -205 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 369.4, -205 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 368.4, -203.7 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 368.4, -203.7 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 367.3, -202.5 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 367.3, -202.5 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 366.3, -201.2 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 366.3, -201.2 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 365.2, -200 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 365.2, -200 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 364.2, -198.7 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 364.2, -198.7 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 363.1, -197.4 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 363.1, -197.4 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 362.1, -196.1 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 362.1, -196.1 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 361, -194.9 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 361, -194.9 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 360, -193.6 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 360, -193.6 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 359, -192.3 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 359, -192.3 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 435.5, -241.4 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 435.5, -241.4 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 386.7, -134.4 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 386.7, -134.4 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 83.7, -129.8 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 83.7, -129.8 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 87.2, -46.9 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 87.2, -46.9 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 112.6, -129.4 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 112.6, -129.4 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 203.6, -38.2 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 203.6, -38.2 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 142.7, -45.5 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 142.7, -45.5 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 269.6, -136.4 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 269.6, -136.4 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 223.5, -94.8 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 223.5, -94.8 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 503.4, -139.9 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 503.4, -139.9 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 783.3, -185 , 0 );

setScaleKey( spep_0 + 150 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 3.49, 3.49 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 3.67, 3.67 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 3.84, 3.84 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 4.02, 4.02 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 4.1, 4.1 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 4.28, 4.28 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 4.31, 4.31 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 4.25, 4.25 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 4.14, 4.14 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 4.03, 4.03 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 3.81, 3.81 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 3.7, 3.7 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 3.59, 3.59 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 3.53, 3.53 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 3.37, 3.37 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 3.26, 3.26 );
setScaleKey( spep_0 + 246 + OFFSET_X, 1, 3.2, 3.2 );
setScaleKey( spep_0 + 248 + OFFSET_X, 1, 3.14, 3.14 );
setScaleKey( spep_0 + 250 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 252 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 3.16, 3.16 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 4.16, 4.16 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 4.96, 4.96 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 4.87, 4.87 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 4.87, 4.87 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 4.58, 4.58 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 4.09, 4.09 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 3.92, 3.92 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 3.94, 3.94 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 3.95, 3.95 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 3.97, 3.97 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 3.98, 3.98 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 3.99, 3.99 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 2.58, 2.58 );

setRotateKey( spep_0 + 150 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, 16 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 20 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 24 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, 24 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, 28 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, 28 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, 28.3 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, 29 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, 29 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, 29.3 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 29.6 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, 29.6 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, 29.9 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, 29.9 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 30.2 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, 30.2 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, 30.6 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, 30.6 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, 30.9 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, 30.9 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 31.2 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, 31.2 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, 32.2 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, 32.2 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, 32.5 );
setRotateKey( spep_0 + 311 + OFFSET_X, 1, 32.5 );
setRotateKey( spep_0 + 312 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, 32.8 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, 33.1 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, 33.1 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_0 + 317 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_0 + 318 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_0 + 319 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_0 + 320 + OFFSET_X, 1, 34.1 );
setRotateKey( spep_0 + 321 + OFFSET_X, 1, 34.1 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, 34.4 );
setRotateKey( spep_0 + 323 + OFFSET_X, 1, 34.4 );
setRotateKey( spep_0 + 324 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_0 + 325 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_0 + 326 + OFFSET_X, 1, 35 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, 35 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_0 + 329 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_0 + 330 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_0 + 331 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_0 + 332 + OFFSET_X, 1, 36 );
setRotateKey( spep_0 + 333 + OFFSET_X, 1, 36 );
setRotateKey( spep_0 + 334 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 335 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 336 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_0 + 337 + OFFSET_X, 1, -0.7 );
setRotateKey( spep_0 + 338 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_0 + 339 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_0 + 340 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_0 + 341 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_0 + 342 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 343 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 344 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_0 + 345 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_0 + 346 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_0 + 347 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_0 + 348 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_0 + 349 + OFFSET_X, 1, -18.6 );
setRotateKey( spep_0 + 350 + OFFSET_X, 1, -33.1 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);

--顔カットイン
--SE002 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);

--気を高める
SE006 = playSeVer2( spep_0 + 96, 1035, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 96, 1026, "", 0, 0, 0, -1);

--向かっていく
SE008 = playSeVer2( spep_0 + 132, 1116, "",spep_0 + 190, 0, 36, -1);
SE009 = playSeVer2( spep_0 + 150, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 150, SE009, 126 );
SE010 = playSeVer2( spep_0 + 156, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE010, 129 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

  SP_dodge = spep_0 + 170; --エンドフェイズのフレーム数を置き換える
  
  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE006, 0);
  stopSe( SP_dodge - 12, SE007, 0);
  stopSe( SP_dodge - 12, SE008, 0);
  stopSe( SP_dodge - 12, SE009, 0);
  stopSe( SP_dodge - 12, SE010, 0);
  
  pauseAll( SP_dodge, 67);   
  
  speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
  setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
  
  kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
  --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
  
  entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
  endPhase(SP_dodge+10);
  
do return end
else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 音 ** --
--助走つける
SE011 = playSeVer2( spep_0 + 190, 1117, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 190, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 190, SE012, 56 );
SE013 = playSeVer2( spep_0 + 190, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 190, SE013, 32 );
SE014 = playSeVer2( spep_0 + 212, 1004, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 214, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 214, SE015, 32 );
SE016 = playSeVer2( spep_0 + 238, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 238, SE016, 32 );

--キック
SE017 = playSeVer2( spep_0 + 242, 1258, "",spep_0 + 304, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 242, SE017, 71 );
SE018 = playSeVer2( spep_0 + 256, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 256, SE018, 89 );
SE019 = playSeVer2( spep_0 + 256, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 256, SE019, 89 );
SE020 = playSeVer2( spep_0 + 264, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 264, SE020, 88 );

--近づく
SE021 = playSeVer2( spep_0 + 296, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE021, 116 );
SE022 = playSeVer2( spep_0 + 296, 1048, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE022, 79 );

--オーラ
SE023 = playSeVer2( spep_0 + 296, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 296, SE023, 63 );
SE024 = playSeVer2( spep_0 + 320, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 320, SE024, 63 );

--殴り飛ばす
SE025 = playSeVer2( spep_0 + 334, 1009, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 336, 1120, "",spep_0 + 382, 0, 10, -1);
SE027 = playSeVer2( spep_0 + 338, 1110, "",spep_0 + 384, 0, 12, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --366f


--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--オーラ
SE029 = playSeVer2( spep_1 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 90, SE029, 63 );

-------------------------------------------------
-- 気弾連射～フィニッシュ(298f)
-------------------------------------------------
MAX_FRAME_2 = 298;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0); -- エフェクトのコメント(エフェクト名)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_04r, 0x80, -1, 0, 0, 0); -- エフェクトのコメント(エフェクト名_back)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 敵キャラクター ** --
setDisp( spep_2 + 140 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 298 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 140 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 140 + OFFSET_X, 1, 695.4, -950.9 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 605, -815 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 526.5, -695.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 438, -589.2 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 333.5, -457.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 259.2, -337.4 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 152.7, -235.5 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 151.6, -231.7 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 150.6, -215.8 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 161.5, -216 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 162.5, -230.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 147.4, -218.3 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 162.3, -218.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 145.3, -236.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 144.2, -232.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 143.2, -216.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 154.1, -217.1 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 155, -231.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 140, -219.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 154.9, -219.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 137.9, -237.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 136.8, -233.9 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 135.7, -218 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 146.7, -218.1 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 147.6, -232.3 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 132.6, -220.5 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 147.5, -220.6 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 130.4, -238.8 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 129.4, -235 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 128.3, -219.1 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 139.2, -219.3 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 140.1, -233.4 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 125.1, -221.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 140, -221.7 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 123, -239.9 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 121.9, -236 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 120.8, -220.2 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 131.8, -220.3 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 132.7, -234.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 117.7, -222.7 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 132.6, -222.8 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 115.5, -241 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 114.5, -237.1 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 113.4, -221.3 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 124.4, -221.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 125.3, -235.6 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 110.3, -223.8 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 125.2, -223.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 108.1, -242.1 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 107.1, -238.2 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 106, -222.4 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 117, -222.5 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 117.9, -236.7 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 102.8, -224.9 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 117.8, -225 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 100.7, -243.2 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 99.7, -239.3 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 98.6, -223.5 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 109.5, -223.6 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 110.5, -237.8 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 95.4, -225.9 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 110.4, -226.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 93.3, -244.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 92.2, -240.4 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 91.2, -224.6 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 102.1, -224.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 103.1, -238.9 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 88, -227 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 102.9, -227.2 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 85.9, -245.4 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 84.8, -241.5 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 83.8, -225.7 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 94.7, -225.8 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 95.6, -240 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 80.6, -228.1 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 95.5, -228.3 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 78.5, -246.4 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 77.4, -242.6 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 76.3, -226.7 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 87.3, -226.9 , 0 );

setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 1.44, 1.44 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.64, 1.64 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.66, 1.66 );

setRotateKey( spep_2 + 140 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--オーラ
SE030 = playSeVer2( spep_2 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 20, SE030, 63 );

--連続気弾
SE031 = playSeVer2( spep_2 + 40, 1403, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE031, 124 );
SE032 = playSeVer2( spep_2 + 40, 1406, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 40, SE032, 94 );
SE033 = playSeVer2( spep_2 + 40, 1401, "",spep_2 + 76, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 40, SE033, 120 );
SE034 = playSeVer2( spep_2 + 48, 1401, "",spep_2 + 84, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 48, SE034, 120 );
SE035 = playSeVer2( spep_2 + 56, 1401, "",spep_2 + 92, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 56, SE035, 102 );
SE036 = playSeVer2( spep_2 + 66, 1401, "",spep_2 + 100, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 66, SE036, 112 );
SE037 = playSeVer2( spep_2 + 76, 1401, "",spep_2 + 112, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 76, SE037, 137 );
SE038 = playSeVer2( spep_2 + 86, 1401, "",spep_2 + 122, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 86, SE038, 120 );
SE039 = playSeVer2( spep_2 + 98, 1401, "",spep_2 + 132, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 98, SE039, 109 );
SE040 = playSeVer2( spep_2 + 106, 1401, "",spep_2 + 140, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 106, SE040, 99 );
SE041 = playSeVer2( spep_2 + 114, 1401, "",spep_2 + 148, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 114, SE041, 120 );
SE042 = playSeVer2( spep_2 + 122, 1401, "",spep_2 + 158, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 122, SE042, 112 );
SE043 = playSeVer2( spep_2 + 134, 1401, "",spep_2 + 168, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 134, SE043, 120 );
SE044 = playSeVer2( spep_2 + 144, 1401, "",spep_2 + 178, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 144, SE044, 135 );
SE045 = playSeVer2( spep_2 + 148, 1406, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 148, SE045, 85 );
SE047 = playSeVer2( spep_2 + 154, 1401, "",spep_2 + 188, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 154, SE047, 117 );
SE048 = playSeVer2( spep_2 + 162, 1401, "",spep_2 + 198, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 162, SE048, 99 );
SE050 = playSeVer2( spep_2 + 174, 1401, "",spep_2 + 208, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 174, SE050, 108 );
SE051 = playSeVer2( spep_2 + 184, 1401, "",spep_2 + 218, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 184, SE051, 66 );
SE053 = playSeVer2( spep_2 + 194, 1401, "",spep_2 + 230, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 194, SE053, 68 );
SE054 = playSeVer2( spep_2 + 204, 1401, "",spep_2 + 238, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 204, SE054, 82 );
SE056 = playSeVer2( spep_2 + 214, 1401, "",spep_2 + 250, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 214, SE056, 120 );
SE057 = playSeVer2( spep_2 + 224, 1401, "",spep_2 + 260, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 224, SE057, 120 );
SE058 = playSeVer2( spep_2 + 240, 1401, "",spep_2 + 276, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 240, SE058, 120 );
SE059 = playSeVer2( spep_2 + 250, 1401, "",spep_2 + 286, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 250, SE059, 120 );
SE060 = playSeVer2( spep_2 + 258, 1401, "",spep_2 + 286 +8, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 258, SE060, 120 );
SE064 = playSeVer2( spep_2 + 258 +8, 1401, "",spep_2 + 286 +8 +8, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 258 +8, SE059, 120 );

--連続爆発
SE046 = playSeVer2( spep_2 + 148, 1023, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 188, 1011, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 170, 1014, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 206, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 196); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -2); -- 終了フレーム  298f -2

end
