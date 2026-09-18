--1032830:UR_クリリン_必殺技：気円烈斬
--sp_effect_b4_00421
--sp2977

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_02 = 164376;  -- 正面で気円斬を作成～フィニッシュまで ef_002


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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = 15;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 196;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 172);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 172, SP_02, spep_2 + 172 -1 + 2, 1);
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --飛んでいく
        SE023 = playSeVer2( spep_2 + 175, 1241, "", 0, 0, 0, -1);
        SE010 = playSeVer2( spep_2 + 175, 1242, "", 0, 0, 0, -1);
        setStartTimeMs( SE010,  900 );
--発射
        SE009 = playSeVer2( spep_2 + 175, 1027, "", 0, 0, 0, -1);
        SE007 = playSeVer2( spep_2 + 175, 1177, "", 0, 0, 0, -1);
        setStartTimeMs( SE007,  900 );
    else

        setupMovie(0 , SP_02, 0, 1);
    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- 開幕〜顔のアップ
-------------------------------------------------
MAX_FRAME_0 = 196;

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 106;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 125, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 125, 515.5 , 0 );
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

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 218, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);

--腕上げる
SE003 = playSeVer2( spep_0 + 54, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE003, 65 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --196F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--溜め
SE006 = playSeVer2( spep_1 + 82, 1516, "", 0, 0, 0, -1);

-------------------------------------------------
-- 正面で気円斬を作成～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 462;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 正面で気円斬を作成～フィニッシュまで(ef_002)
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

--敵の動き1

setDisp( spep_2 + 82 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 276 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 82 + OFFSET_X, 1, 100 );
changeAnime( spep_2 + 134 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 204 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 248 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 82 + OFFSET_X, 1, 273.2, 84.1 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 273.2, 84.1 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 0, -69.4 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 0, -69.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 0, -69.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 0, -69.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 0.1, -69.2 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 0.1, -69.2 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 0.1, -69.1 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 0.1, -69.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 0.1, -68.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 0.1, -68.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 0.1, -68.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 0.1, -68.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 0.1, -68.3 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 0.1, -68.3 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 0.2, -67.8 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 0.2, -67.8 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 0.2, -67.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 0.2, -67.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 0.3, -66.5 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 0.3, -66.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 0.4, -65.7 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 0.4, -65.7 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 0.5, -64.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 0.5, -64.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 0.6, -63.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 0.6, -63.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 0.7, -62.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 0.7, -62.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 0.8, -60.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 0.8, -60.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 1, -59 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 1, -59 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 1.1, -57 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 1.1, -57 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 1.3, -54.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 1.3, -54.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 1.6, -52.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 1.6, -52.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 1.8, -49.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 1.8, -49.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 2.1, -46.8 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 2.1, -46.8 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -77.9, 17.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -77.9, 17.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -75.6, 13.7 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -75.6, 13.7 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -73.6, 10.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -73.6, 10.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -71.7, 7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -71.7, 7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -70.1, 4.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -70.1, 4.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -68.6, 1.7 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -68.6, 1.7 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -67.3, -0.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -67.3, -0.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -66.3, -2.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -66.3, -2.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -65.4, -3.8 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -65.4, -3.8 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -64.7, -5 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -64.7, -5 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -64.2, -5.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -64.2, -5.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -63.9, -6.3 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -63.9, -6.3 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -62.4, 20.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -62.4, 20.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -120.4, 72.6 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -120.4, 72.6 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -4.4, -19.4 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -4.4, -19.4 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -96.4, 46.6 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -96.4, 46.6 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -24.4, -3.4 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -24.4, -3.4 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -120.4, 72.6 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -120.4, 72.6 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -4.4, -19.4 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -4.4, -19.4 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -47.9, 17.8 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -47.9, 17.8 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -42.7, 14.7 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -42.7, 14.7 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -36.1, 26.3 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -36.1, 26.3 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -15.7, 22 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -15.7, 22 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 4.2, 22.6 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 4.2, 22.6 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 21.8, 23.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 21.8, 23.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 37, 23.6 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 37, 23.6 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 50, 24 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 50, 24 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 60.7, 24.4 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 60.7, 24.4 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 69.1, 24.7 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 69.1, 24.7 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 75.2, 24.9 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 75.2, 24.9 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 79, 25.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 79, 25.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 80.5, 25.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 80.5, 25.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 79.7, 25.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 79.7, 25.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 78.2, 25.2 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 78.2, 25.2 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 40.9, 44.7 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 40.9, 44.7 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 97.2, 66.8 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 97.2, 66.8 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -17.8, 1.2 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -17.8, 1.2 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 99.8, 67.8 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 99.8, 67.8 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -13.9, 2.6 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -13.9, 2.6 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 97.1, 75.6 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 97.1, 75.6 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 14.8, 18.9 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 14.8, 18.9 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 44.9, 47.4 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 44.9, 47.4 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 19.2, 29.5 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 19.2, 29.5 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 67.6, 54.1 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 67.6, 54.1 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 73.9, 56.4 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 73.9, 56.4 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 80.9, 58.8 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 80.9, 58.8 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 88.5, 61.5 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 88.5, 61.5 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 96.7, 64.4 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 96.7, 64.4 , 0 );

setScaleKey( spep_2 + 82 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 3.23, 3.23 );

setRotateKey( spep_2 + 82 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, -46.9 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, -47 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -47 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, -41 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, -41 );

--敵の動き2

setDisp( spep_2 + 290 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 308 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 290 + OFFSET_X, 1, 1013.5, 153.1 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 1013.5, 153.1 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 1003.9, 152.7 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 1003.9, 152.7 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 975.1, 151.5 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 975.1, 151.5 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 927.3, 149.5 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 927.3, 149.5 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 860.2, 146.6 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 860.2, 146.6 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 774, 143 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 774, 143 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 668.6, 138.5 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 668.6, 138.5 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 544.1, 133.2 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 544.1, 133.2 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 400.5, 127.1 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 400.5, 127.1 , 0 );

setScaleKey( spep_2 + 290 + OFFSET_X, 1, 5.91, 5.91 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 5.91, 5.91 );

setRotateKey( spep_2 + 290 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, -21 );

-- ** 音 ** --

--発射
SE007 = playSeVer2( spep_2 + 80, 1177, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 80, 1201, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 80, 1027, "", 0, 0, 0, -1);

--飛んでいく
SE010 = playSeVer2( spep_2 + 78, 1242, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 100; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

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

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --

--２発目発射
SE011 = playSeVer2( spep_2 + 104, 1201, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 104, 1027, "", 0, 0, 0, -1);

--飛んでいく
SE013 = playSeVer2( spep_2 + 122, 1241, "", 0, 0, 0, -1);

--３発目発射
SE014 = playSeVer2( spep_2 + 122, 1201, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 122, 1027, "", 0, 0, 0, -1);

--敵ヒット１
SE016 = playSeVer2( spep_2 + 208, 1032, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 208, 1142, "", 0, 0, 0, -1);

--飛んでいく
SE018 = playSeVer2( spep_2 + 220, 1242, "", 0, 0, 0, -1);

--敵ヒット１
SE019 = playSeVer2( spep_2 + 220, 1009, "", 0, 0, 0, -1);

--敵ヒット２
SE020 = playSeVer2( spep_2 + 250, 1032, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 250, 1142, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 258, 1009, "", 0, 0, 0, -1);

--飛んでいく
SE023 = playSeVer2( spep_2 + 268, 1241, "", 0, 0, 0, -1);

--ラスト敵ヒット
SE024 = playSeVer2( spep_2 + 316, 1120, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 316, 1032, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 316, 1142, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 322, 1009, "", 0, 0, 0, -1);

--飛んでいく２
SE028 = playSeVer2( spep_2 + 326, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 326, SE028, 145 );

--岩切れる
SE029 = playSeVer2( spep_2 + 368, 1141, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 368, 1137, "",spep_2 + 442, 0, 46, -1);
SE031 = playSeVer2( spep_2 + 380, 1032, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 344); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 462F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_02, 0, 1);

-------------------------------------------------
-- 開幕〜顔のアップ
-------------------------------------------------
MAX_FRAME_0 = 196;

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 106;
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
setEffMoveKey( spep_x + 16, ctgogo, 125, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 125, 515.5 , 0 );
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

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 218, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);

--腕上げる
SE003 = playSeVer2( spep_0 + 54, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 54, SE003, 65 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --196F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--溜め
SE006 = playSeVer2( spep_1 + 82, 1516, "", 0, 0, 0, -1);

-------------------------------------------------
-- 正面で気円斬を作成～フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 462;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 正面で気円斬を作成～フィニッシュまで(ef_002)
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

--敵の動き1

setDisp( spep_2 + 82 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 276 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 82 + OFFSET_X, 1, 0 );
changeAnime( spep_2 + 134 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 204 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 248 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 82 + OFFSET_X, 1, -273.2, 84.1 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -273.2, 84.1 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 0, -69.4 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 0, -69.4 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 0, -69.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 0, -69.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -0.1, -69.2 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -0.1, -69.2 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -0.1, -69.1 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -0.1, -69.1 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -0.1, -68.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -0.1, -68.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -0.1, -68.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -0.1, -68.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -0.1, -68.3 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -0.1, -68.3 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -0.2, -67.8 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -0.2, -67.8 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -0.2, -67.2 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -0.2, -67.2 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -0.3, -66.5 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -0.3, -66.5 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -0.4, -65.7 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -0.4, -65.7 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -0.5, -64.7 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -0.5, -64.7 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -0.6, -63.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -0.6, -63.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -0.7, -62.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -0.7, -62.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -0.8, -60.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -0.8, -60.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -1, -59 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -1, -59 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -1.1, -57 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -1.1, -57 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -1.3, -54.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -1.3, -54.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -1.6, -52.4 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -1.6, -52.4 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -1.8, -49.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -1.8, -49.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -2.1, -46.8 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -2.1, -46.8 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 77.9, 17.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 77.9, 17.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 75.6, 13.7 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 75.6, 13.7 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 73.6, 10.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 73.6, 10.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 71.7, 7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 71.7, 7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 70.1, 4.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 70.1, 4.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 68.6, 1.7 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 68.6, 1.7 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 67.3, -0.5 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 67.3, -0.5 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 66.3, -2.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 66.3, -2.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 65.4, -3.8 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 65.4, -3.8 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 64.7, -5 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 64.7, -5 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 64.2, -5.8 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 64.2, -5.8 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 63.9, -6.3 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 63.9, -6.3 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 62.4, 20.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 62.4, 20.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 120.4, 72.6 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 120.4, 72.6 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 4.4, -19.4 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 4.4, -19.4 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 96.4, 46.6 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 96.4, 46.6 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 24.4, -3.4 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 24.4, -3.4 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 120.4, 72.6 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 120.4, 72.6 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 4.4, -19.4 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 4.4, -19.4 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 47.9, 17.8 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 47.9, 17.8 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 42.7, 14.7 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 42.7, 14.7 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 36.1, 26.3 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 36.1, 26.3 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 15.7, 22 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 15.7, 22 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -4.2, 22.6 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -4.2, 22.6 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -21.8, 23.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -21.8, 23.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -37, 23.6 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -37, 23.6 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -50, 24 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -50, 24 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -60.7, 24.4 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -60.7, 24.4 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -69.1, 24.7 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -69.1, 24.7 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -75.2, 24.9 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -75.2, 24.9 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -79, 25.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -79, 25.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -80.5, 25.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -80.5, 25.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -79.7, 25.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -79.7, 25.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -78.2, 25.2 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -78.2, 25.2 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -40.9, 44.7 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -40.9, 44.7 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -97.2, 66.8 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -97.2, 66.8 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 17.8, 1.2 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 17.8, 1.2 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -99.8, 67.8 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -99.8, 67.8 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 13.9, 2.6 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 13.9, 2.6 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -97.1, 75.6 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -97.1, 75.6 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -14.8, 18.9 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -14.8, 18.9 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -44.9, 47.4 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -44.9, 47.4 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -19.2, 29.5 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -19.2, 29.5 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -67.6, 54.1 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -67.6, 54.1 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -73.9, 56.4 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -73.9, 56.4 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -80.9, 58.8 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -80.9, 58.8 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -88.5, 61.5 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -88.5, 61.5 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -96.7, 64.4 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -96.7, 64.4 , 0 );

setScaleKey( spep_2 + 82 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 1.94, 1.94 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 2.88, 2.88 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 2.92, 2.92 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 2.93, 2.93 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 2.97, 2.97 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 2.98, 2.98 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 3.23, 3.23 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 3.23, 3.23 );

setRotateKey( spep_2 + 82 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 46.9 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, 46.9 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 47 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, 47 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 41 );
setRotateKey( spep_2 + 276 + OFFSET_X, 1, 41 );

--敵の動き2

setDisp( spep_2 + 290 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 308 + OFFSET_X, 1, 0 );

setMoveKey( spep_2 + 290 + OFFSET_X, 1, -1013.5, 153.1 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -1013.5, 153.1 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -1003.9, 152.7 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -1003.9, 152.7 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -975.1, 151.5 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -975.1, 151.5 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -927.3, 149.5 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -927.3, 149.5 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -860.2, 146.6 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -860.2, 146.6 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -774, 143 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -774, 143 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -668.6, 138.5 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -668.6, 138.5 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -544.1, 133.2 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -544.1, 133.2 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -400.5, 127.1 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -400.5, 127.1 , 0 );

setScaleKey( spep_2 + 290 + OFFSET_X, 1, 5.91, 5.91 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 5.91, 5.91 );

setRotateKey( spep_2 + 290 + OFFSET_X, 1, 21 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 21 );

-- ** 音 ** --

--発射
SE007 = playSeVer2( spep_2 + 80, 1177, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 80, 1201, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 80, 1027, "", 0, 0, 0, -1);

--飛んでいく
SE010 = playSeVer2( spep_2 + 78, 1242, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 100; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

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

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --

--２発目発射
SE011 = playSeVer2( spep_2 + 104, 1201, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 104, 1027, "", 0, 0, 0, -1);

--飛んでいく
SE013 = playSeVer2( spep_2 + 122, 1241, "", 0, 0, 0, -1);

--３発目発射
SE014 = playSeVer2( spep_2 + 122, 1201, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 122, 1027, "", 0, 0, 0, -1);

--敵ヒット１
SE016 = playSeVer2( spep_2 + 208, 1032, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 208, 1142, "", 0, 0, 0, -1);

--飛んでいく
SE018 = playSeVer2( spep_2 + 220, 1242, "", 0, 0, 0, -1);

--敵ヒット１
SE019 = playSeVer2( spep_2 + 220, 1009, "", 0, 0, 0, -1);

--敵ヒット２
SE020 = playSeVer2( spep_2 + 250, 1032, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 250, 1142, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 258, 1009, "", 0, 0, 0, -1);

--飛んでいく
SE023 = playSeVer2( spep_2 + 268, 1241, "", 0, 0, 0, -1);

--ラスト敵ヒット
SE024 = playSeVer2( spep_2 + 316, 1120, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 316, 1032, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 316, 1142, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 322, 1009, "", 0, 0, 0, -1);

--飛んでいく２
SE028 = playSeVer2( spep_2 + 326, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 326, SE028, 145 );

--岩切れる
SE029 = playSeVer2( spep_2 + 368, 1141, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 368, 1137, "",spep_2 + 442, 0, 46, -1);
SE031 = playSeVer2( spep_2 + 380, 1032, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 344); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 462F


end
