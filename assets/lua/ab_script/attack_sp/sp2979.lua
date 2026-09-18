--1032740:UR_タマガミ・ナンバー・スリー_EX必殺技：ヒートプラネットクラッシャー
--sp_effect_b1_00356
--sp2979

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164326;  -- ハンマーフリ被る〜セリフカットイン ef_001
SP_02 = 164327;  -- ハンマー投げる〜ビーム溜め〜爆発 ef_002


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

--DISABLE_VOICE_IF_DOUBLE_SPEED();

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 +  222;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 450);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 450 -  0, SP_01, spep_2 + 450 -1 + 2, 1);
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --SE名
    else

        setupMovie(0 , SP_01, 0, 1);
    end


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- ハンマーフリ被る〜セリフカットイン
-------------------------------------------------
MAX_FRAME_0 = 222;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ハンマーフリ被る〜セリフカットイン(ef_001)
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
spep_x = spep_0 + 16;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
]]
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

t = -2;

setDisp( spep_0 + 150 + OFFSET_X + t, 1, 1 );
setDisp( spep_0 + 224 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 150 + OFFSET_X + t, 1, 102 );

setMoveKey( spep_0 + 150 + OFFSET_X + t, 1, 726.9, -209.4 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X + t, 1, 726.9, -209.4 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X + t, 1, 716.7, -207.3 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X + t, 1, 716.7, -207.3 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X + t, 1, 706.3, -205.1 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X + t, 1, 706.3, -205.1 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X + t, 1, 695.6, -202.9 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X + t, 1, 695.6, -202.9 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X + t, 1, 684.7, -200.6 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X + t, 1, 684.7, -200.6 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X + t, 1, 673.5, -198.2 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X + t, 1, 673.5, -198.2 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X + t, 1, 662.2, -195.9 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X + t, 1, 662.2, -195.9 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X + t, 1, 650.6, -193.4 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X + t, 1, 650.6, -193.4 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X + t, 1, 638.8, -191 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X + t, 1, 638.8, -191 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X + t, 1, 626.9, -188.5 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X + t, 1, 626.9, -188.5 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X + t, 1, 614.8, -186 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X + t, 1, 614.8, -186 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X + t, 1, 602.5, -183.4 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X + t, 1, 602.5, -183.4 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X + t, 1, 590.2, -180.8 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X + t, 1, 590.2, -180.8 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X + t, 1, 577.8, -178.2 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X + t, 1, 577.8, -178.2 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X + t, 1, 565.3, -175.6 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X + t, 1, 565.3, -175.6 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X + t, 1, 552.7, -173 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X + t, 1, 552.7, -173 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X + t, 1, 540.2, -170.4 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X + t, 1, 540.2, -170.4 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X + t, 1, 527.6, -167.7 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X + t, 1, 527.6, -167.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X + t, 1, 515.2, -165.1 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X + t, 1, 515.2, -165.1 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X + t, 1, 502.8, -162.6 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X + t, 1, 502.8, -162.6 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X + t, 1, 490.5, -160 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X + t, 1, 490.5, -160 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X + t, 1, 478.4, -157.5 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X + t, 1, 478.4, -157.5 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X + t, 1, 466.5, -155 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X + t, 1, 466.5, -155 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X + t, 1, 454.8, -152.5 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X + t, 1, 454.8, -152.5 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X + t, 1, 443.4, -150.1 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X + t, 1, 443.4, -150.1 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X + t, 1, 432.4, -147.8 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X + t, 1, 432.4, -147.8 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X + t, 1, 421.7, -145.6 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X + t, 1, 421.7, -145.6 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X + t, 1, 411.5, -143.5 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X + t, 1, 411.5, -143.5 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X + t, 1, 401.7, -141.4 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X + t, 1, 401.7, -141.4 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X + t, 1, 392.6, -139.5 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X + t, 1, 392.6, -139.5 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X + t, 1, 384, -137.7 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X + t, 1, 384, -137.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X + t, 1, 376.1, -136.1 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X + t, 1, 376.1, -136.1 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X + t, 1, 368.9, -134.6 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X + t, 1, 368.9, -134.6 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X + t, 1, 362.5, -133.2 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X + t, 1, 362.5, -133.2 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X + t, 1, 357, -132.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X + t, 1, 357, -132.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X + t, 1, 352.4, -131.1 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X + t, 1, 352.4, -131.1 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X + t, 1, 348.8, -130.4 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X + t, 1, 348.8, -130.4 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X + t, 1, 346.4, -129.9 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X + t, 1, 346.4, -129.9 , 0 );

setScaleKey( spep_0 + 150 + OFFSET_X + t, 1, 6.32, 6.32 );
setScaleKey( spep_0 + 151 + OFFSET_X + t, 1, 6.32, 6.32 );
setScaleKey( spep_0 + 152 + OFFSET_X + t, 1, 6.27, 6.27 );
setScaleKey( spep_0 + 153 + OFFSET_X + t, 1, 6.27, 6.27 );
setScaleKey( spep_0 + 154 + OFFSET_X + t, 1, 6.22, 6.22 );
setScaleKey( spep_0 + 155 + OFFSET_X + t, 1, 6.22, 6.22 );
setScaleKey( spep_0 + 156 + OFFSET_X + t, 1, 6.16, 6.16 );
setScaleKey( spep_0 + 157 + OFFSET_X + t, 1, 6.16, 6.16 );
setScaleKey( spep_0 + 158 + OFFSET_X + t, 1, 6.11, 6.11 );
setScaleKey( spep_0 + 159 + OFFSET_X + t, 1, 6.11, 6.11 );
setScaleKey( spep_0 + 160 + OFFSET_X + t, 1, 6.05, 6.05 );
setScaleKey( spep_0 + 161 + OFFSET_X + t, 1, 6.05, 6.05 );
setScaleKey( spep_0 + 162 + OFFSET_X + t, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 163 + OFFSET_X + t, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 164 + OFFSET_X + t, 1, 5.93, 5.93 );
setScaleKey( spep_0 + 165 + OFFSET_X + t, 1, 5.93, 5.93 );
setScaleKey( spep_0 + 166 + OFFSET_X + t, 1, 5.87, 5.87 );
setScaleKey( spep_0 + 167 + OFFSET_X + t, 1, 5.87, 5.87 );
setScaleKey( spep_0 + 168 + OFFSET_X + t, 1, 5.81, 5.81 );
setScaleKey( spep_0 + 169 + OFFSET_X + t, 1, 5.81, 5.81 );
setScaleKey( spep_0 + 170 + OFFSET_X + t, 1, 5.75, 5.75 );
setScaleKey( spep_0 + 171 + OFFSET_X + t, 1, 5.75, 5.75 );
setScaleKey( spep_0 + 172 + OFFSET_X + t, 1, 5.69, 5.69 );
setScaleKey( spep_0 + 173 + OFFSET_X + t, 1, 5.69, 5.69 );
setScaleKey( spep_0 + 174 + OFFSET_X + t, 1, 5.63, 5.63 );
setScaleKey( spep_0 + 175 + OFFSET_X + t, 1, 5.63, 5.63 );
setScaleKey( spep_0 + 176 + OFFSET_X + t, 1, 5.57, 5.57 );
setScaleKey( spep_0 + 177 + OFFSET_X + t, 1, 5.57, 5.57 );
setScaleKey( spep_0 + 178 + OFFSET_X + t, 1, 5.5, 5.5 );
setScaleKey( spep_0 + 179 + OFFSET_X + t, 1, 5.5, 5.5 );
setScaleKey( spep_0 + 180 + OFFSET_X + t, 1, 5.44, 5.44 );
setScaleKey( spep_0 + 181 + OFFSET_X + t, 1, 5.44, 5.44 );
setScaleKey( spep_0 + 182 + OFFSET_X + t, 1, 5.38, 5.38 );
setScaleKey( spep_0 + 183 + OFFSET_X + t, 1, 5.38, 5.38 );
setScaleKey( spep_0 + 184 + OFFSET_X + t, 1, 5.31, 5.31 );
setScaleKey( spep_0 + 185 + OFFSET_X + t, 1, 5.31, 5.31 );
setScaleKey( spep_0 + 186 + OFFSET_X + t, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 187 + OFFSET_X + t, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 188 + OFFSET_X + t, 1, 5.19, 5.19 );
setScaleKey( spep_0 + 189 + OFFSET_X + t, 1, 5.19, 5.19 );
setScaleKey( spep_0 + 190 + OFFSET_X + t, 1, 5.13, 5.13 );
setScaleKey( spep_0 + 191 + OFFSET_X + t, 1, 5.13, 5.13 );
setScaleKey( spep_0 + 192 + OFFSET_X + t, 1, 5.07, 5.07 );
setScaleKey( spep_0 + 193 + OFFSET_X + t, 1, 5.07, 5.07 );
setScaleKey( spep_0 + 194 + OFFSET_X + t, 1, 5.01, 5.01 );
setScaleKey( spep_0 + 195 + OFFSET_X + t, 1, 5.01, 5.01 );
setScaleKey( spep_0 + 196 + OFFSET_X + t, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 197 + OFFSET_X + t, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 198 + OFFSET_X + t, 1, 4.89, 4.89 );
setScaleKey( spep_0 + 199 + OFFSET_X + t, 1, 4.89, 4.89 );
setScaleKey( spep_0 + 200 + OFFSET_X + t, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 201 + OFFSET_X + t, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 202 + OFFSET_X + t, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 203 + OFFSET_X + t, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 204 + OFFSET_X + t, 1, 4.73, 4.73 );
setScaleKey( spep_0 + 205 + OFFSET_X + t, 1, 4.73, 4.73 );
setScaleKey( spep_0 + 206 + OFFSET_X + t, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 207 + OFFSET_X + t, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 208 + OFFSET_X + t, 1, 4.63, 4.63 );
setScaleKey( spep_0 + 209 + OFFSET_X + t, 1, 4.63, 4.63 );
setScaleKey( spep_0 + 210 + OFFSET_X + t, 1, 4.59, 4.59 );
setScaleKey( spep_0 + 211 + OFFSET_X + t, 1, 4.59, 4.59 );
setScaleKey( spep_0 + 212 + OFFSET_X + t, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 213 + OFFSET_X + t, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 214 + OFFSET_X + t, 1, 4.51, 4.51 );
setScaleKey( spep_0 + 215 + OFFSET_X + t, 1, 4.51, 4.51 );
setScaleKey( spep_0 + 216 + OFFSET_X + t, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 217 + OFFSET_X + t, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 218 + OFFSET_X + t, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 219 + OFFSET_X + t, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 220 + OFFSET_X + t, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 221 + OFFSET_X + t, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 222 + OFFSET_X + t, 1, 4.41, 4.41 );
setScaleKey( spep_0 + 223 + OFFSET_X + t, 1, 4.41, 4.41 );
setScaleKey( spep_0 + 224 + OFFSET_X + t, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 226 + OFFSET_X + t, 1, 4.4, 4.4 );

setRotateKey( spep_0 + 150 + OFFSET_X + t, 1, 0 );
setRotateKey( spep_0 + 226 + OFFSET_X + t, 1, 0 );

-- ** 音 ** --

--背景
SE001 = playSeVer2( spep_0 + 0, 1264, "",spep_0 + 184, 0, 126, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 56 );
SE002 = playSeVer2( spep_0 + 0, 1314, "",spep_0 + 182, 0, 120, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 58 );
SE003 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 63 );

--振りかぶる
SE005 = playSeVer2( spep_0 + 72, 1117, "",spep_0 + 154, 0, 56, -1);
SE006 = playSeVer2( spep_0 + 72, 1116, "",spep_0 + 120, 0, 26, -1);
SE007 = playSeVer2( spep_0 + 84, 1497, "",spep_0 + 138, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 84, SE007, 61 );

--ハンマー構える
SE008 = playSeVer2( spep_0 + 140, 1387, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 140, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE009, 63 );
SE010 = playSeVer2( spep_0 + 140, 1414, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --222F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutinEx(spep_1, 0);

-- ** 音 ** --

--ハンマー投げる
SE012 = playSeVer2( spep_1 + 92, 1116, "",spep_1 + 136, 0, 22, -1);
SE013 = playSeVer2( spep_1 + 92, 1117, "",spep_1 + 180, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 92, SE013, 88 );

-------------------------------------------------
-- ハンマー投げる〜ビーム溜め〜爆発
-------------------------------------------------
MAX_FRAME_2 = 692;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ハンマー投げる〜ビーム溜め〜爆発(ef_002)
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

setDisp( spep_2 + 58 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 86 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 58 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 76 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 58 + OFFSET_X, 1, 9.5, -25.3 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 9.5, -25.3 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 9.5, -25.4 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 9.5, -25.4 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 74.2, -11.9 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 74.2, -11.9 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 145.7, 32.6 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 145.7, 32.6 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 237.1, 89.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 237.1, 89.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 346.7, 95.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 346.7, 95.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 358.8, 117.5 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 358.8, 117.5 , 0 );

setScaleKey( spep_2 + 58 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.57, 1.57 );

setRotateKey( spep_2 + 58 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, -15 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -15 );

--敵の動き2

setDisp( spep_2 + 532 + OFFSET_X, 1, 1 );

changeAnime( spep_2 + 532 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 532 + OFFSET_X, 1, -15.4, -138.1 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, -15.4, -138.1 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, -19.3, -120.9 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, -19.3, -120.9 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, -21.3, -134.5 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, -21.3, -134.5 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, -22.6, -120.1 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, -22.6, -120.1 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, -17.5, -118.9 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, -17.5, -118.9 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, -32.4, -132.9 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, -32.4, -132.9 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, -21.6, -122.4 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, -21.6, -122.4 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, -18.5, -125.9 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, -18.5, -125.9 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, -33.7, -125.3 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, -33.7, -125.3 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, -28.9, -125.3 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, -28.9, -125.3 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, -24.4, -118.8 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, -24.4, -118.8 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, -16, -122.8 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, -16, -122.8 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, -25.3, -111.1 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, -25.3, -111.1 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, -24.4, -109.7 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, -24.4, -109.7 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, -30.2, -110.4 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, -30.2, -110.4 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, -21, -121.9 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, -21, -121.9 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, -15.9, -109.5 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, -15.9, -109.5 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, -30.1, -112.9 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, -30.1, -112.9 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, -33.1, -101.7 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, -33.1, -101.7 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, -26.9, -109.4 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, -26.9, -109.4 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, -29.8, -112.4 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, -29.8, -112.4 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, -16.3, -114.7 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, -16.3, -114.7 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, -19.1, -104.5 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, -19.1, -104.5 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, -27.2, -100 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, -27.2, -100 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, -19.1, -106.7 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, -19.1, -106.7 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, -24.7, -108.5 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, -24.7, -108.5 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, -28.2, -94.2 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, -28.2, -94.2 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, -31.2, -90.4 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, -31.2, -90.4 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, -31.6, -105.7 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, -31.6, -105.7 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, -21.9, -86.5 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, -21.9, -86.5 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, -23.3, -103 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, -23.3, -103 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, -19.1, -86.8 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, -19.1, -86.8 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, -15, -91.4 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, -15, -91.4 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, -15.1, -91.5 , 0 );
setMoveKey( spep_2 + 599 + OFFSET_X, 1, -15.1, -91.5 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, -25.2, -95.6 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, -25.2, -95.6 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, -31.8, -79.4 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, -31.8, -79.4 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, -22.3, -94.4 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, -22.3, -94.4 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, -18, -88.5 , 0 );
setMoveKey( spep_2 + 607 + OFFSET_X, 1, -18, -88.5 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, -30.4, -90 , 0 );
setMoveKey( spep_2 + 609 + OFFSET_X, 1, -30.4, -90 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, -23.6, -92.2 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, -23.6, -92.2 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, -23.2, -74.1 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, -23.2, -74.1 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, -15, -85.9 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, -15, -85.9 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, -18.2, -77.8 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, -18.2, -77.8 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, -19.4, -70.1 , 0 );
setMoveKey( spep_2 + 619 + OFFSET_X, 1, -19.4, -70.1 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, -14.4, -81.7 , 0 );
setMoveKey( spep_2 + 621 + OFFSET_X, 1, -14.4, -81.7 , 0 );
setMoveKey( spep_2 + 622 + OFFSET_X, 1, -21.5, -72.8 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, -21.5, -72.8 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, -14.9, -76.6 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, -14.9, -76.6 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, -16.8, -77.3 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, -16.8, -77.3 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, -26, -74.1 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, -26, -74.1 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, -22.5, -69.8 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, -22.5, -69.8 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, -31.8, -78.1 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, -31.8, -78.1 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, -25.5, -67.4 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, -25.5, -67.4 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, -26.8, -71.2 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, -26.8, -71.2 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, -28.4, -69.8 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, -28.4, -69.8 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, -14.4, -56.6 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, -14.4, -56.6 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X, 1, -32.4, -60.4 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, -32.4, -60.4 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, -32.8, -58.9 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X, 1, -32.8, -58.9 , 0 );
setMoveKey( spep_2 + 646 + OFFSET_X, 1, -30.6, -58 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X, 1, -30.6, -58 , 0 );
setMoveKey( spep_2 + 648 + OFFSET_X, 1, -29.9, -69.2 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, -29.9, -69.2 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, -16.2, -63 , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X, 1, -16.2, -63 , 0 );
setMoveKey( spep_2 + 652 + OFFSET_X, 1, -16, -55.9 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, -16, -55.9 , 0 );
setMoveKey( spep_2 + 654 + OFFSET_X, 1, -19.4, -55.1 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, -19.4, -55.1 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, -19.2, -64 , 0 );
setMoveKey( spep_2 + 657 + OFFSET_X, 1, -19.2, -64 , 0 );
setMoveKey( spep_2 + 658 + OFFSET_X, 1, -28.8, -54.5 , 0 );
setMoveKey( spep_2 + 659 + OFFSET_X, 1, -28.8, -54.5 , 0 );
setMoveKey( spep_2 + 660 + OFFSET_X, 1, -24.4, -57.8 , 0 );
setMoveKey( spep_2 + 661 + OFFSET_X, 1, -24.4, -57.8 , 0 );
setMoveKey( spep_2 + 662 + OFFSET_X, 1, -18.1, -45.8 , 0 );
setMoveKey( spep_2 + 663 + OFFSET_X, 1, -18.1, -45.8 , 0 );
setMoveKey( spep_2 + 664 + OFFSET_X, 1, -32.5, -57.2 , 0 );
setMoveKey( spep_2 + 665 + OFFSET_X, 1, -32.5, -57.2 , 0 );
setMoveKey( spep_2 + 666 + OFFSET_X, 1, -18.3, -45 , 0 );
setMoveKey( spep_2 + 667 + OFFSET_X, 1, -18.3, -45 , 0 );
setMoveKey( spep_2 + 668 + OFFSET_X, 1, -21.7, -48.9 , 0 );
setMoveKey( spep_2 + 669 + OFFSET_X, 1, -21.7, -48.9 , 0 );
setMoveKey( spep_2 + 670 + OFFSET_X, 1, -26.4, -43.3 , 0 );
setMoveKey( spep_2 + 671 + OFFSET_X, 1, -26.4, -43.3 , 0 );
setMoveKey( spep_2 + 672 + OFFSET_X, 1, -23.6, -44.3 , 0 );
setMoveKey( spep_2 + 673 + OFFSET_X, 1, -23.6, -44.3 , 0 );
setMoveKey( spep_2 + 674 + OFFSET_X, 1, -20.9, -41.6 , 0 );
setMoveKey( spep_2 + 675 + OFFSET_X, 1, -20.9, -41.6 , 0 );
setMoveKey( spep_2 + 676 + OFFSET_X, 1, -27.8, -41.3 , 0 );
setMoveKey( spep_2 + 677 + OFFSET_X, 1, -27.8, -41.3 , 0 );
setMoveKey( spep_2 + 678 + OFFSET_X, 1, -16.6, -44.6 , 0 );
setMoveKey( spep_2 + 679 + OFFSET_X, 1, -16.6, -44.6 , 0 );
setMoveKey( spep_2 + 680 + OFFSET_X, 1, -30.7, -38.2 , 0 );
setMoveKey( spep_2 + 681 + OFFSET_X, 1, -30.7, -38.2 , 0 );
setMoveKey( spep_2 + 682 + OFFSET_X, 1, -25.7, -31.8 , 0 );
setMoveKey( spep_2 + 683 + OFFSET_X, 1, -25.7, -31.8 , 0 );
setMoveKey( spep_2 + 684 + OFFSET_X, 1, -18.2, -44.9 , 0 );
setMoveKey( spep_2 + 685 + OFFSET_X, 1, -18.2, -44.9 , 0 );
setMoveKey( spep_2 + 686 + OFFSET_X, 1, -26.6, -37.3 , 0 );
setMoveKey( spep_2 + 687 + OFFSET_X, 1, -26.6, -37.3 , 0 );
setMoveKey( spep_2 + 688 + OFFSET_X, 1, -31.6, -28.1 , 0 );
setMoveKey( spep_2 + 694 + OFFSET_X, 1, -31.6, -28.1 , 0 );

setScaleKey( spep_2 + 532 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 694 + OFFSET_X, 1, 1.13, 1.13 );

setRotateKey( spep_2 + 532 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 533 + OFFSET_X, 1, 7 );
setRotateKey( spep_2 + 534 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_2 + 535 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_2 + 536 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 537 + OFFSET_X, 1, 7.2 );
setRotateKey( spep_2 + 538 + OFFSET_X, 1, 7.3 );
setRotateKey( spep_2 + 539 + OFFSET_X, 1, 7.3 );
setRotateKey( spep_2 + 540 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_2 + 541 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_2 + 542 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 543 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_2 + 544 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_2 + 545 + OFFSET_X, 1, 7.6 );
setRotateKey( spep_2 + 546 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_2 + 547 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_2 + 548 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 549 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 550 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_2 + 551 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_2 + 552 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 553 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 554 + OFFSET_X, 1, 8.1 );
setRotateKey( spep_2 + 555 + OFFSET_X, 1, 8.1 );
setRotateKey( spep_2 + 556 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_2 + 557 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_2 + 558 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_2 + 559 + OFFSET_X, 1, 8.3 );
setRotateKey( spep_2 + 560 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_2 + 561 + OFFSET_X, 1, 8.4 );
setRotateKey( spep_2 + 562 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_2 + 563 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_2 + 564 + OFFSET_X, 1, 8.6 );
setRotateKey( spep_2 + 565 + OFFSET_X, 1, 8.6 );
setRotateKey( spep_2 + 566 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_2 + 567 + OFFSET_X, 1, 8.7 );
setRotateKey( spep_2 + 568 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 569 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_2 + 570 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_2 + 571 + OFFSET_X, 1, 8.9 );
setRotateKey( spep_2 + 572 + OFFSET_X, 1, 9 );
setRotateKey( spep_2 + 573 + OFFSET_X, 1, 9 );
setRotateKey( spep_2 + 574 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 575 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_2 + 576 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 577 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 578 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_2 + 579 + OFFSET_X, 1, 9.3 );
setRotateKey( spep_2 + 580 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_2 + 581 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_2 + 582 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 583 + OFFSET_X, 1, 9.5 );
setRotateKey( spep_2 + 584 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 585 + OFFSET_X, 1, 9.6 );
setRotateKey( spep_2 + 586 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_2 + 587 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_2 + 588 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 589 + OFFSET_X, 1, 9.8 );
setRotateKey( spep_2 + 590 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_2 + 591 + OFFSET_X, 1, 9.9 );
setRotateKey( spep_2 + 592 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 593 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 594 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_2 + 595 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_2 + 596 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_2 + 597 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_2 + 598 + OFFSET_X, 1, 10.3 );
setRotateKey( spep_2 + 599 + OFFSET_X, 1, 10.3 );
setRotateKey( spep_2 + 600 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_2 + 601 + OFFSET_X, 1, 10.4 );
setRotateKey( spep_2 + 602 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_2 + 603 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_2 + 604 + OFFSET_X, 1, 10.6 );
setRotateKey( spep_2 + 605 + OFFSET_X, 1, 10.6 );
setRotateKey( spep_2 + 606 + OFFSET_X, 1, 10.7 );
setRotateKey( spep_2 + 607 + OFFSET_X, 1, 10.7 );
setRotateKey( spep_2 + 608 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_2 + 609 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_2 + 610 + OFFSET_X, 1, 10.9 );
setRotateKey( spep_2 + 611 + OFFSET_X, 1, 10.9 );
setRotateKey( spep_2 + 612 + OFFSET_X, 1, 11.1 );
setRotateKey( spep_2 + 613 + OFFSET_X, 1, 11.1 );
setRotateKey( spep_2 + 614 + OFFSET_X, 1, 11.2 );
setRotateKey( spep_2 + 615 + OFFSET_X, 1, 11.2 );
setRotateKey( spep_2 + 616 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_2 + 617 + OFFSET_X, 1, 11.3 );
setRotateKey( spep_2 + 618 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_2 + 619 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_2 + 620 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_2 + 621 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_2 + 622 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_2 + 623 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_2 + 624 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 625 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_2 + 626 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_2 + 627 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_2 + 628 + OFFSET_X, 1, 11.9 );
setRotateKey( spep_2 + 629 + OFFSET_X, 1, 11.9 );
setRotateKey( spep_2 + 630 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 631 + OFFSET_X, 1, 12 );
setRotateKey( spep_2 + 632 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_2 + 633 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_2 + 634 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_2 + 635 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_2 + 636 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_2 + 637 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_2 + 638 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_2 + 639 + OFFSET_X, 1, 12.4 );
setRotateKey( spep_2 + 640 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_2 + 641 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_2 + 642 + OFFSET_X, 1, 12.6 );
setRotateKey( spep_2 + 643 + OFFSET_X, 1, 12.6 );
setRotateKey( spep_2 + 644 + OFFSET_X, 1, 12.7 );
setRotateKey( spep_2 + 645 + OFFSET_X, 1, 12.7 );
setRotateKey( spep_2 + 646 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 647 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_2 + 648 + OFFSET_X, 1, 12.9 );
setRotateKey( spep_2 + 649 + OFFSET_X, 1, 12.9 );
setRotateKey( spep_2 + 650 + OFFSET_X, 1, 13 );
setRotateKey( spep_2 + 651 + OFFSET_X, 1, 13 );
setRotateKey( spep_2 + 652 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_2 + 653 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_2 + 654 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_2 + 655 + OFFSET_X, 1, 13.2 );
setRotateKey( spep_2 + 656 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 657 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_2 + 658 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_2 + 659 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_2 + 660 + OFFSET_X, 1, 13.5 );
setRotateKey( spep_2 + 661 + OFFSET_X, 1, 13.5 );
setRotateKey( spep_2 + 662 + OFFSET_X, 1, 13.6 );
setRotateKey( spep_2 + 663 + OFFSET_X, 1, 13.6 );
setRotateKey( spep_2 + 664 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 665 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_2 + 666 + OFFSET_X, 1, 13.8 );
setRotateKey( spep_2 + 667 + OFFSET_X, 1, 13.8 );
setRotateKey( spep_2 + 668 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_2 + 669 + OFFSET_X, 1, 13.9 );
setRotateKey( spep_2 + 670 + OFFSET_X, 1, 14 );
setRotateKey( spep_2 + 671 + OFFSET_X, 1, 14 );
setRotateKey( spep_2 + 672 + OFFSET_X, 1, 14.1 );
setRotateKey( spep_2 + 673 + OFFSET_X, 1, 14.1 );
setRotateKey( spep_2 + 674 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_2 + 675 + OFFSET_X, 1, 14.2 );
setRotateKey( spep_2 + 676 + OFFSET_X, 1, 14.3 );
setRotateKey( spep_2 + 677 + OFFSET_X, 1, 14.3 );
setRotateKey( spep_2 + 678 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_2 + 679 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_2 + 680 + OFFSET_X, 1, 14.5 );
setRotateKey( spep_2 + 681 + OFFSET_X, 1, 14.5 );
setRotateKey( spep_2 + 682 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_2 + 683 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_2 + 684 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_2 + 685 + OFFSET_X, 1, 14.7 );
setRotateKey( spep_2 + 686 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_2 + 687 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_2 + 688 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_2 + 694 + OFFSET_X, 1, 14.9 );

-- ** 音 ** --

--ハンマー投げる
SE014 = playSeVer2( spep_2 + 2, 1003, "", 0, 0, 0, -1);

--ハンマー飛んでいく
SE015 = playSeVer2( spep_2 + 32, 1277, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 64; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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

--地面ささる
SE016 = playSeVer2( spep_2 + 66, 1387, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 68, 1187, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE018 = playSeVer2( spep_2 + 78, 1027, "", 0, 0, 0, -1);

--顔アップ
SE019 = playSeVer2( spep_2 + 104, 227, "",spep_2 + 154, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 104, SE019, 158 );
SE020 = playSeVer2( spep_2 + 104, 1002, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 104, SE020, 54 );
SE021 = playSeVer2( spep_2 + 108, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 108, SE021, 87 );
SE022 = playSeVer2( spep_2 + 108, 1387, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 108, SE022, 83 );

--両手気弾溜め
SE023 = playSeVer2( spep_2 + 188, 1382, "",spep_2 + 356, 8, 28, -1);
setStartTimeMs( SE023, 767 );
SE024 = playSeVer2( spep_2 + 194, 1445, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_2 + 194, SE024, 158 );
setStartTimeMs( SE024, 367 );
SE025 = playSeVer2( spep_2 + 178, 1004, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 180, 1334, "",spep_2 + 358, 0, 32, -1);
SE028 = playSeVer2( spep_2 + 182, 1253, "",spep_2 + 228, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 182, SE028, 82 );
SE029 = playSeVer2( spep_2 + 208, 1311, "", 0, 0, 0, -1);

--ズームアウト
SE026 = playSeVer2( spep_2 + 178, 1072, "", 0, 0, 0, -1);
setTimeStretch( SE026, 1.65, 30, 4 );

--両腕地面に立てる
SE030 = playSeVer2( spep_2 + 302, 1153, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 302, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 302, SE031, 72 );

--地響き
SE032 = playSeVer2( spep_2 + 326, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 326, SE032, 80 );

--爆発
SE033 = playSeVer2( spep_2 + 340, 1159, "",spep_2 + 494, 0, 26, -1);

--爆発予兆
SE034 = playSeVer2( spep_2 + 340, 1158, "",spep_2 + 500, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 340, SE034, 74 );
SE035 = playSeVer2( spep_2 + 396, 1144, "",spep_2 + 496, 20, 28, -1);
setSeVolumeByWorkId( spep_2 + 396, SE035, 85 );
setStartTimeMs( SE035, 600 );
SE036 = playSeVer2( spep_2 + 418, 1157, "",spep_2 + 510, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 418, SE036, 133 );

--爆発２
SE037 = playSeVer2( spep_2 + 458, 1156, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 460, 1067, "", 0, 0, 0, -1);

--爆発３
SE039 = playSeVer2( spep_2 + 518, 1068, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 518, 1168, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 570); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 692F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- ハンマーフリ被る〜セリフカットイン
-------------------------------------------------
MAX_FRAME_0 = 222;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ハンマーフリ被る〜セリフカットイン(ef_001)
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
spep_x = spep_0 + 16;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
]]
--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

t = -2;

setDisp( spep_0 + 150 + OFFSET_X + t, 1, 1 );
setDisp( spep_0 + 224 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 150 + OFFSET_X + t, 1, 2 );

setMoveKey( spep_0 + 150 + OFFSET_X + t, 1, -726.9, -209.4 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X + t, 1, -726.9, -209.4 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X + t, 1, -716.7, -207.3 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X + t, 1, -716.7, -207.3 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X + t, 1, -706.3, -205.1 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X + t, 1, -706.3, -205.1 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X + t, 1, -695.6, -202.9 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X + t, 1, -695.6, -202.9 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X + t, 1, -684.7, -200.6 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X + t, 1, -684.7, -200.6 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X + t, 1, -673.5, -198.2 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X + t, 1, -673.5, -198.2 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X + t, 1, -662.2, -195.9 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X + t, 1, -662.2, -195.9 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X + t, 1, -650.6, -193.4 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X + t, 1, -650.6, -193.4 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X + t, 1, -638.8, -191 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X + t, 1, -638.8, -191 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X + t, 1, -626.9, -188.5 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X + t, 1, -626.9, -188.5 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X + t, 1, -614.8, -186 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X + t, 1, -614.8, -186 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X + t, 1, -602.5, -183.4 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X + t, 1, -602.5, -183.4 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X + t, 1, -590.2, -180.8 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X + t, 1, -590.2, -180.8 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X + t, 1, -577.8, -178.2 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X + t, 1, -577.8, -178.2 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X + t, 1, -565.3, -175.6 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X + t, 1, -565.3, -175.6 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X + t, 1, -552.7, -173 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X + t, 1, -552.7, -173 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X + t, 1, -540.2, -170.4 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X + t, 1, -540.2, -170.4 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X + t, 1, -527.6, -167.7 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X + t, 1, -527.6, -167.7 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X + t, 1, -515.2, -165.1 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X + t, 1, -515.2, -165.1 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X + t, 1, -502.8, -162.6 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X + t, 1, -502.8, -162.6 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X + t, 1, -490.5, -160 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X + t, 1, -490.5, -160 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X + t, 1, -478.4, -157.5 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X + t, 1, -478.4, -157.5 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X + t, 1, -466.5, -155 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X + t, 1, -466.5, -155 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X + t, 1, -454.8, -152.5 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X + t, 1, -454.8, -152.5 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X + t, 1, -443.4, -150.1 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X + t, 1, -443.4, -150.1 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X + t, 1, -432.4, -147.8 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X + t, 1, -432.4, -147.8 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X + t, 1, -421.7, -145.6 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X + t, 1, -421.7, -145.6 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X + t, 1, -411.5, -143.5 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X + t, 1, -411.5, -143.5 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X + t, 1, -401.7, -141.4 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X + t, 1, -401.7, -141.4 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X + t, 1, -392.6, -139.5 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X + t, 1, -392.6, -139.5 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X + t, 1, -384, -137.7 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X + t, 1, -384, -137.7 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X + t, 1, -376.1, -136.1 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X + t, 1, -376.1, -136.1 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X + t, 1, -368.9, -134.6 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X + t, 1, -368.9, -134.6 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X + t, 1, -362.5, -133.2 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X + t, 1, -362.5, -133.2 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X + t, 1, -357, -132.1 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X + t, 1, -357, -132.1 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X + t, 1, -352.4, -131.1 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X + t, 1, -352.4, -131.1 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X + t, 1, -348.8, -130.4 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X + t, 1, -348.8, -130.4 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X + t, 1, -346.4, -129.9 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X + t, 1, -346.4, -129.9 , 0 );

setScaleKey( spep_0 + 150 + OFFSET_X + t, 1, 6.32, 6.32 );
setScaleKey( spep_0 + 151 + OFFSET_X + t, 1, 6.32, 6.32 );
setScaleKey( spep_0 + 152 + OFFSET_X + t, 1, 6.27, 6.27 );
setScaleKey( spep_0 + 153 + OFFSET_X + t, 1, 6.27, 6.27 );
setScaleKey( spep_0 + 154 + OFFSET_X + t, 1, 6.22, 6.22 );
setScaleKey( spep_0 + 155 + OFFSET_X + t, 1, 6.22, 6.22 );
setScaleKey( spep_0 + 156 + OFFSET_X + t, 1, 6.16, 6.16 );
setScaleKey( spep_0 + 157 + OFFSET_X + t, 1, 6.16, 6.16 );
setScaleKey( spep_0 + 158 + OFFSET_X + t, 1, 6.11, 6.11 );
setScaleKey( spep_0 + 159 + OFFSET_X + t, 1, 6.11, 6.11 );
setScaleKey( spep_0 + 160 + OFFSET_X + t, 1, 6.05, 6.05 );
setScaleKey( spep_0 + 161 + OFFSET_X + t, 1, 6.05, 6.05 );
setScaleKey( spep_0 + 162 + OFFSET_X + t, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 163 + OFFSET_X + t, 1, 5.99, 5.99 );
setScaleKey( spep_0 + 164 + OFFSET_X + t, 1, 5.93, 5.93 );
setScaleKey( spep_0 + 165 + OFFSET_X + t, 1, 5.93, 5.93 );
setScaleKey( spep_0 + 166 + OFFSET_X + t, 1, 5.87, 5.87 );
setScaleKey( spep_0 + 167 + OFFSET_X + t, 1, 5.87, 5.87 );
setScaleKey( spep_0 + 168 + OFFSET_X + t, 1, 5.81, 5.81 );
setScaleKey( spep_0 + 169 + OFFSET_X + t, 1, 5.81, 5.81 );
setScaleKey( spep_0 + 170 + OFFSET_X + t, 1, 5.75, 5.75 );
setScaleKey( spep_0 + 171 + OFFSET_X + t, 1, 5.75, 5.75 );
setScaleKey( spep_0 + 172 + OFFSET_X + t, 1, 5.69, 5.69 );
setScaleKey( spep_0 + 173 + OFFSET_X + t, 1, 5.69, 5.69 );
setScaleKey( spep_0 + 174 + OFFSET_X + t, 1, 5.63, 5.63 );
setScaleKey( spep_0 + 175 + OFFSET_X + t, 1, 5.63, 5.63 );
setScaleKey( spep_0 + 176 + OFFSET_X + t, 1, 5.57, 5.57 );
setScaleKey( spep_0 + 177 + OFFSET_X + t, 1, 5.57, 5.57 );
setScaleKey( spep_0 + 178 + OFFSET_X + t, 1, 5.5, 5.5 );
setScaleKey( spep_0 + 179 + OFFSET_X + t, 1, 5.5, 5.5 );
setScaleKey( spep_0 + 180 + OFFSET_X + t, 1, 5.44, 5.44 );
setScaleKey( spep_0 + 181 + OFFSET_X + t, 1, 5.44, 5.44 );
setScaleKey( spep_0 + 182 + OFFSET_X + t, 1, 5.38, 5.38 );
setScaleKey( spep_0 + 183 + OFFSET_X + t, 1, 5.38, 5.38 );
setScaleKey( spep_0 + 184 + OFFSET_X + t, 1, 5.31, 5.31 );
setScaleKey( spep_0 + 185 + OFFSET_X + t, 1, 5.31, 5.31 );
setScaleKey( spep_0 + 186 + OFFSET_X + t, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 187 + OFFSET_X + t, 1, 5.25, 5.25 );
setScaleKey( spep_0 + 188 + OFFSET_X + t, 1, 5.19, 5.19 );
setScaleKey( spep_0 + 189 + OFFSET_X + t, 1, 5.19, 5.19 );
setScaleKey( spep_0 + 190 + OFFSET_X + t, 1, 5.13, 5.13 );
setScaleKey( spep_0 + 191 + OFFSET_X + t, 1, 5.13, 5.13 );
setScaleKey( spep_0 + 192 + OFFSET_X + t, 1, 5.07, 5.07 );
setScaleKey( spep_0 + 193 + OFFSET_X + t, 1, 5.07, 5.07 );
setScaleKey( spep_0 + 194 + OFFSET_X + t, 1, 5.01, 5.01 );
setScaleKey( spep_0 + 195 + OFFSET_X + t, 1, 5.01, 5.01 );
setScaleKey( spep_0 + 196 + OFFSET_X + t, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 197 + OFFSET_X + t, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 198 + OFFSET_X + t, 1, 4.89, 4.89 );
setScaleKey( spep_0 + 199 + OFFSET_X + t, 1, 4.89, 4.89 );
setScaleKey( spep_0 + 200 + OFFSET_X + t, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 201 + OFFSET_X + t, 1, 4.83, 4.83 );
setScaleKey( spep_0 + 202 + OFFSET_X + t, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 203 + OFFSET_X + t, 1, 4.78, 4.78 );
setScaleKey( spep_0 + 204 + OFFSET_X + t, 1, 4.73, 4.73 );
setScaleKey( spep_0 + 205 + OFFSET_X + t, 1, 4.73, 4.73 );
setScaleKey( spep_0 + 206 + OFFSET_X + t, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 207 + OFFSET_X + t, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 208 + OFFSET_X + t, 1, 4.63, 4.63 );
setScaleKey( spep_0 + 209 + OFFSET_X + t, 1, 4.63, 4.63 );
setScaleKey( spep_0 + 210 + OFFSET_X + t, 1, 4.59, 4.59 );
setScaleKey( spep_0 + 211 + OFFSET_X + t, 1, 4.59, 4.59 );
setScaleKey( spep_0 + 212 + OFFSET_X + t, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 213 + OFFSET_X + t, 1, 4.55, 4.55 );
setScaleKey( spep_0 + 214 + OFFSET_X + t, 1, 4.51, 4.51 );
setScaleKey( spep_0 + 215 + OFFSET_X + t, 1, 4.51, 4.51 );
setScaleKey( spep_0 + 216 + OFFSET_X + t, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 217 + OFFSET_X + t, 1, 4.48, 4.48 );
setScaleKey( spep_0 + 218 + OFFSET_X + t, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 219 + OFFSET_X + t, 1, 4.45, 4.45 );
setScaleKey( spep_0 + 220 + OFFSET_X + t, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 221 + OFFSET_X + t, 1, 4.43, 4.43 );
setScaleKey( spep_0 + 222 + OFFSET_X + t, 1, 4.41, 4.41 );
setScaleKey( spep_0 + 223 + OFFSET_X + t, 1, 4.41, 4.41 );
setScaleKey( spep_0 + 224 + OFFSET_X + t, 1, 4.4, 4.4 );
setScaleKey( spep_0 + 226 + OFFSET_X + t, 1, 4.4, 4.4 );

setRotateKey( spep_0 + 150 + OFFSET_X + t, 1, 0 );
setRotateKey( spep_0 + 226 + OFFSET_X + t, 1, 0 );

-- ** 音 ** --

--背景
SE001 = playSeVer2( spep_0 + 0, 1264, "",spep_0 + 184, 0, 126, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 56 );
SE002 = playSeVer2( spep_0 + 0, 1314, "",spep_0 + 182, 0, 120, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 58 );
SE003 = playSeVer2( spep_0 + 0, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 63 );

--振りかぶる
SE005 = playSeVer2( spep_0 + 72, 1117, "",spep_0 + 154, 0, 56, -1);
SE006 = playSeVer2( spep_0 + 72, 1116, "",spep_0 + 120, 0, 26, -1);
SE007 = playSeVer2( spep_0 + 84, 1497, "",spep_0 + 138, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 84, SE007, 61 );

--ハンマー構える
SE008 = playSeVer2( spep_0 + 140, 1387, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 140, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 140, SE009, 63 );
SE010 = playSeVer2( spep_0 + 140, 1414, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --222F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutinEx(spep_1, 0);

-- ** 音 ** --

--ハンマー投げる
SE012 = playSeVer2( spep_1 + 92, 1116, "",spep_1 + 136, 0, 22, -1);
SE013 = playSeVer2( spep_1 + 92, 1117, "",spep_1 + 180, 0, 24, -1);
setSeVolumeByWorkId( spep_1 + 92, SE013, 88 );

-------------------------------------------------
-- ハンマー投げる〜ビーム溜め〜爆発
-------------------------------------------------
MAX_FRAME_2 = 692;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ハンマー投げる〜ビーム溜め〜爆発(ef_002)
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

setDisp( spep_2 + 58 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 86 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 58 + OFFSET_X, 1, 4 );
changeAnime( spep_2 + 76 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 58 + OFFSET_X, 1, -9.5, -25.3 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, -9.5, -25.3 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, -9.5, -25.4 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -9.5, -25.4 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -74.2, -11.9 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -74.2, -11.9 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -145.7, 32.6 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -145.7, 32.6 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -237.1, 89.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -237.1, 89.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, -346.7, 95.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, -346.7, 95.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, -358.8, 117.5 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, -358.8, 117.5 , 0 );

setScaleKey( spep_2 + 58 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 1.57, 1.57 );

setRotateKey( spep_2 + 58 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, 15 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 15 );

--敵の動き2

setDisp( spep_2 + 532 + OFFSET_X, 1, 1 );

changeAnime( spep_2 + 532 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 532 + OFFSET_X, 1, 15.4, -138.1 , 0 );
setMoveKey( spep_2 + 533 + OFFSET_X, 1, 15.4, -138.1 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 19.3, -120.9 , 0 );
setMoveKey( spep_2 + 535 + OFFSET_X, 1, 19.3, -120.9 , 0 );
setMoveKey( spep_2 + 536 + OFFSET_X, 1, 21.3, -134.5 , 0 );
setMoveKey( spep_2 + 537 + OFFSET_X, 1, 21.3, -134.5 , 0 );
setMoveKey( spep_2 + 538 + OFFSET_X, 1, 22.6, -120.1 , 0 );
setMoveKey( spep_2 + 539 + OFFSET_X, 1, 22.6, -120.1 , 0 );
setMoveKey( spep_2 + 540 + OFFSET_X, 1, 17.5, -118.9 , 0 );
setMoveKey( spep_2 + 541 + OFFSET_X, 1, 17.5, -118.9 , 0 );
setMoveKey( spep_2 + 542 + OFFSET_X, 1, 32.4, -132.9 , 0 );
setMoveKey( spep_2 + 543 + OFFSET_X, 1, 32.4, -132.9 , 0 );
setMoveKey( spep_2 + 544 + OFFSET_X, 1, 21.6, -122.4 , 0 );
setMoveKey( spep_2 + 545 + OFFSET_X, 1, 21.6, -122.4 , 0 );
setMoveKey( spep_2 + 546 + OFFSET_X, 1, 18.5, -125.9 , 0 );
setMoveKey( spep_2 + 547 + OFFSET_X, 1, 18.5, -125.9 , 0 );
setMoveKey( spep_2 + 548 + OFFSET_X, 1, 33.7, -125.3 , 0 );
setMoveKey( spep_2 + 549 + OFFSET_X, 1, 33.7, -125.3 , 0 );
setMoveKey( spep_2 + 550 + OFFSET_X, 1, 28.9, -125.3 , 0 );
setMoveKey( spep_2 + 551 + OFFSET_X, 1, 28.9, -125.3 , 0 );
setMoveKey( spep_2 + 552 + OFFSET_X, 1, 24.4, -118.8 , 0 );
setMoveKey( spep_2 + 553 + OFFSET_X, 1, 24.4, -118.8 , 0 );
setMoveKey( spep_2 + 554 + OFFSET_X, 1, 16, -122.8 , 0 );
setMoveKey( spep_2 + 555 + OFFSET_X, 1, 16, -122.8 , 0 );
setMoveKey( spep_2 + 556 + OFFSET_X, 1, 25.3, -111.1 , 0 );
setMoveKey( spep_2 + 557 + OFFSET_X, 1, 25.3, -111.1 , 0 );
setMoveKey( spep_2 + 558 + OFFSET_X, 1, 24.4, -109.7 , 0 );
setMoveKey( spep_2 + 559 + OFFSET_X, 1, 24.4, -109.7 , 0 );
setMoveKey( spep_2 + 560 + OFFSET_X, 1, 30.2, -110.4 , 0 );
setMoveKey( spep_2 + 561 + OFFSET_X, 1, 30.2, -110.4 , 0 );
setMoveKey( spep_2 + 562 + OFFSET_X, 1, 21, -121.9 , 0 );
setMoveKey( spep_2 + 563 + OFFSET_X, 1, 21, -121.9 , 0 );
setMoveKey( spep_2 + 564 + OFFSET_X, 1, 15.9, -109.5 , 0 );
setMoveKey( spep_2 + 565 + OFFSET_X, 1, 15.9, -109.5 , 0 );
setMoveKey( spep_2 + 566 + OFFSET_X, 1, 30.1, -112.9 , 0 );
setMoveKey( spep_2 + 567 + OFFSET_X, 1, 30.1, -112.9 , 0 );
setMoveKey( spep_2 + 568 + OFFSET_X, 1, 33.1, -101.7 , 0 );
setMoveKey( spep_2 + 569 + OFFSET_X, 1, 33.1, -101.7 , 0 );
setMoveKey( spep_2 + 570 + OFFSET_X, 1, 26.9, -109.4 , 0 );
setMoveKey( spep_2 + 571 + OFFSET_X, 1, 26.9, -109.4 , 0 );
setMoveKey( spep_2 + 572 + OFFSET_X, 1, 29.8, -112.4 , 0 );
setMoveKey( spep_2 + 573 + OFFSET_X, 1, 29.8, -112.4 , 0 );
setMoveKey( spep_2 + 574 + OFFSET_X, 1, 16.3, -114.7 , 0 );
setMoveKey( spep_2 + 575 + OFFSET_X, 1, 16.3, -114.7 , 0 );
setMoveKey( spep_2 + 576 + OFFSET_X, 1, 19.1, -104.5 , 0 );
setMoveKey( spep_2 + 577 + OFFSET_X, 1, 19.1, -104.5 , 0 );
setMoveKey( spep_2 + 578 + OFFSET_X, 1, 27.2, -100 , 0 );
setMoveKey( spep_2 + 579 + OFFSET_X, 1, 27.2, -100 , 0 );
setMoveKey( spep_2 + 580 + OFFSET_X, 1, 19.1, -106.7 , 0 );
setMoveKey( spep_2 + 581 + OFFSET_X, 1, 19.1, -106.7 , 0 );
setMoveKey( spep_2 + 582 + OFFSET_X, 1, 24.7, -108.5 , 0 );
setMoveKey( spep_2 + 583 + OFFSET_X, 1, 24.7, -108.5 , 0 );
setMoveKey( spep_2 + 584 + OFFSET_X, 1, 28.2, -94.2 , 0 );
setMoveKey( spep_2 + 585 + OFFSET_X, 1, 28.2, -94.2 , 0 );
setMoveKey( spep_2 + 586 + OFFSET_X, 1, 31.2, -90.4 , 0 );
setMoveKey( spep_2 + 587 + OFFSET_X, 1, 31.2, -90.4 , 0 );
setMoveKey( spep_2 + 588 + OFFSET_X, 1, 31.6, -105.7 , 0 );
setMoveKey( spep_2 + 589 + OFFSET_X, 1, 31.6, -105.7 , 0 );
setMoveKey( spep_2 + 590 + OFFSET_X, 1, 21.9, -86.5 , 0 );
setMoveKey( spep_2 + 591 + OFFSET_X, 1, 21.9, -86.5 , 0 );
setMoveKey( spep_2 + 592 + OFFSET_X, 1, 23.3, -103 , 0 );
setMoveKey( spep_2 + 593 + OFFSET_X, 1, 23.3, -103 , 0 );
setMoveKey( spep_2 + 594 + OFFSET_X, 1, 19.1, -86.8 , 0 );
setMoveKey( spep_2 + 595 + OFFSET_X, 1, 19.1, -86.8 , 0 );
setMoveKey( spep_2 + 596 + OFFSET_X, 1, 15, -91.4 , 0 );
setMoveKey( spep_2 + 597 + OFFSET_X, 1, 15, -91.4 , 0 );
setMoveKey( spep_2 + 598 + OFFSET_X, 1, 15.1, -91.5 , 0 );
setMoveKey( spep_2 + 599 + OFFSET_X, 1, 15.1, -91.5 , 0 );
setMoveKey( spep_2 + 600 + OFFSET_X, 1, 25.2, -95.6 , 0 );
setMoveKey( spep_2 + 601 + OFFSET_X, 1, 25.2, -95.6 , 0 );
setMoveKey( spep_2 + 602 + OFFSET_X, 1, 31.8, -79.4 , 0 );
setMoveKey( spep_2 + 603 + OFFSET_X, 1, 31.8, -79.4 , 0 );
setMoveKey( spep_2 + 604 + OFFSET_X, 1, 22.3, -94.4 , 0 );
setMoveKey( spep_2 + 605 + OFFSET_X, 1, 22.3, -94.4 , 0 );
setMoveKey( spep_2 + 606 + OFFSET_X, 1, 18, -88.5 , 0 );
setMoveKey( spep_2 + 607 + OFFSET_X, 1, 18, -88.5 , 0 );
setMoveKey( spep_2 + 608 + OFFSET_X, 1, 30.4, -90 , 0 );
setMoveKey( spep_2 + 609 + OFFSET_X, 1, 30.4, -90 , 0 );
setMoveKey( spep_2 + 610 + OFFSET_X, 1, 23.6, -92.2 , 0 );
setMoveKey( spep_2 + 611 + OFFSET_X, 1, 23.6, -92.2 , 0 );
setMoveKey( spep_2 + 612 + OFFSET_X, 1, 23.2, -74.1 , 0 );
setMoveKey( spep_2 + 613 + OFFSET_X, 1, 23.2, -74.1 , 0 );
setMoveKey( spep_2 + 614 + OFFSET_X, 1, 15, -85.9 , 0 );
setMoveKey( spep_2 + 615 + OFFSET_X, 1, 15, -85.9 , 0 );
setMoveKey( spep_2 + 616 + OFFSET_X, 1, 18.2, -77.8 , 0 );
setMoveKey( spep_2 + 617 + OFFSET_X, 1, 18.2, -77.8 , 0 );
setMoveKey( spep_2 + 618 + OFFSET_X, 1, 19.4, -70.1 , 0 );
setMoveKey( spep_2 + 619 + OFFSET_X, 1, 19.4, -70.1 , 0 );
setMoveKey( spep_2 + 620 + OFFSET_X, 1, 14.4, -81.7 , 0 );
setMoveKey( spep_2 + 621 + OFFSET_X, 1, 14.4, -81.7 , 0 );
setMoveKey( spep_2 + 622 + OFFSET_X, 1, 21.5, -72.8 , 0 );
setMoveKey( spep_2 + 623 + OFFSET_X, 1, 21.5, -72.8 , 0 );
setMoveKey( spep_2 + 624 + OFFSET_X, 1, 14.9, -76.6 , 0 );
setMoveKey( spep_2 + 625 + OFFSET_X, 1, 14.9, -76.6 , 0 );
setMoveKey( spep_2 + 626 + OFFSET_X, 1, 16.8, -77.3 , 0 );
setMoveKey( spep_2 + 627 + OFFSET_X, 1, 16.8, -77.3 , 0 );
setMoveKey( spep_2 + 628 + OFFSET_X, 1, 26, -74.1 , 0 );
setMoveKey( spep_2 + 629 + OFFSET_X, 1, 26, -74.1 , 0 );
setMoveKey( spep_2 + 630 + OFFSET_X, 1, 22.5, -69.8 , 0 );
setMoveKey( spep_2 + 631 + OFFSET_X, 1, 22.5, -69.8 , 0 );
setMoveKey( spep_2 + 632 + OFFSET_X, 1, 31.8, -78.1 , 0 );
setMoveKey( spep_2 + 633 + OFFSET_X, 1, 31.8, -78.1 , 0 );
setMoveKey( spep_2 + 634 + OFFSET_X, 1, 25.5, -67.4 , 0 );
setMoveKey( spep_2 + 635 + OFFSET_X, 1, 25.5, -67.4 , 0 );
setMoveKey( spep_2 + 636 + OFFSET_X, 1, 26.8, -71.2 , 0 );
setMoveKey( spep_2 + 637 + OFFSET_X, 1, 26.8, -71.2 , 0 );
setMoveKey( spep_2 + 638 + OFFSET_X, 1, 28.4, -69.8 , 0 );
setMoveKey( spep_2 + 639 + OFFSET_X, 1, 28.4, -69.8 , 0 );
setMoveKey( spep_2 + 640 + OFFSET_X, 1, 14.4, -56.6 , 0 );
setMoveKey( spep_2 + 641 + OFFSET_X, 1, 14.4, -56.6 , 0 );
setMoveKey( spep_2 + 642 + OFFSET_X, 1, 32.4, -60.4 , 0 );
setMoveKey( spep_2 + 643 + OFFSET_X, 1, 32.4, -60.4 , 0 );
setMoveKey( spep_2 + 644 + OFFSET_X, 1, 32.8, -58.9 , 0 );
setMoveKey( spep_2 + 645 + OFFSET_X, 1, 32.8, -58.9 , 0 );
setMoveKey( spep_2 + 646 + OFFSET_X, 1, 30.6, -58 , 0 );
setMoveKey( spep_2 + 647 + OFFSET_X, 1, 30.6, -58 , 0 );
setMoveKey( spep_2 + 648 + OFFSET_X, 1, 29.9, -69.2 , 0 );
setMoveKey( spep_2 + 649 + OFFSET_X, 1, 29.9, -69.2 , 0 );
setMoveKey( spep_2 + 650 + OFFSET_X, 1, 16.2, -63 , 0 );
setMoveKey( spep_2 + 651 + OFFSET_X, 1, 16.2, -63 , 0 );
setMoveKey( spep_2 + 652 + OFFSET_X, 1, 16, -55.9 , 0 );
setMoveKey( spep_2 + 653 + OFFSET_X, 1, 16, -55.9 , 0 );
setMoveKey( spep_2 + 654 + OFFSET_X, 1, 19.4, -55.1 , 0 );
setMoveKey( spep_2 + 655 + OFFSET_X, 1, 19.4, -55.1 , 0 );
setMoveKey( spep_2 + 656 + OFFSET_X, 1, 19.2, -64 , 0 );
setMoveKey( spep_2 + 657 + OFFSET_X, 1, 19.2, -64 , 0 );
setMoveKey( spep_2 + 658 + OFFSET_X, 1, 28.8, -54.5 , 0 );
setMoveKey( spep_2 + 659 + OFFSET_X, 1, 28.8, -54.5 , 0 );
setMoveKey( spep_2 + 660 + OFFSET_X, 1, 24.4, -57.8 , 0 );
setMoveKey( spep_2 + 661 + OFFSET_X, 1, 24.4, -57.8 , 0 );
setMoveKey( spep_2 + 662 + OFFSET_X, 1, 18.1, -45.8 , 0 );
setMoveKey( spep_2 + 663 + OFFSET_X, 1, 18.1, -45.8 , 0 );
setMoveKey( spep_2 + 664 + OFFSET_X, 1, 32.5, -57.2 , 0 );
setMoveKey( spep_2 + 665 + OFFSET_X, 1, 32.5, -57.2 , 0 );
setMoveKey( spep_2 + 666 + OFFSET_X, 1, 18.3, -45 , 0 );
setMoveKey( spep_2 + 667 + OFFSET_X, 1, 18.3, -45 , 0 );
setMoveKey( spep_2 + 668 + OFFSET_X, 1, 21.7, -48.9 , 0 );
setMoveKey( spep_2 + 669 + OFFSET_X, 1, 21.7, -48.9 , 0 );
setMoveKey( spep_2 + 670 + OFFSET_X, 1, 26.4, -43.3 , 0 );
setMoveKey( spep_2 + 671 + OFFSET_X, 1, 26.4, -43.3 , 0 );
setMoveKey( spep_2 + 672 + OFFSET_X, 1, 23.6, -44.3 , 0 );
setMoveKey( spep_2 + 673 + OFFSET_X, 1, 23.6, -44.3 , 0 );
setMoveKey( spep_2 + 674 + OFFSET_X, 1, 20.9, -41.6 , 0 );
setMoveKey( spep_2 + 675 + OFFSET_X, 1, 20.9, -41.6 , 0 );
setMoveKey( spep_2 + 676 + OFFSET_X, 1, 27.8, -41.3 , 0 );
setMoveKey( spep_2 + 677 + OFFSET_X, 1, 27.8, -41.3 , 0 );
setMoveKey( spep_2 + 678 + OFFSET_X, 1, 16.6, -44.6 , 0 );
setMoveKey( spep_2 + 679 + OFFSET_X, 1, 16.6, -44.6 , 0 );
setMoveKey( spep_2 + 680 + OFFSET_X, 1, 30.7, -38.2 , 0 );
setMoveKey( spep_2 + 681 + OFFSET_X, 1, 30.7, -38.2 , 0 );
setMoveKey( spep_2 + 682 + OFFSET_X, 1, 25.7, -31.8 , 0 );
setMoveKey( spep_2 + 683 + OFFSET_X, 1, 25.7, -31.8 , 0 );
setMoveKey( spep_2 + 684 + OFFSET_X, 1, 18.2, -44.9 , 0 );
setMoveKey( spep_2 + 685 + OFFSET_X, 1, 18.2, -44.9 , 0 );
setMoveKey( spep_2 + 686 + OFFSET_X, 1, 26.6, -37.3 , 0 );
setMoveKey( spep_2 + 687 + OFFSET_X, 1, 26.6, -37.3 , 0 );
setMoveKey( spep_2 + 688 + OFFSET_X, 1, 31.6, -28.1 , 0 );
setMoveKey( spep_2 + 694 + OFFSET_X, 1, 31.6, -28.1 , 0 );

setScaleKey( spep_2 + 532 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 694 + OFFSET_X, 1, 1.13, 1.13 );

setRotateKey( spep_2 + 532 + OFFSET_X, 1, -7 );
setRotateKey( spep_2 + 533 + OFFSET_X, 1, -7 );
setRotateKey( spep_2 + 534 + OFFSET_X, 1, -7.1 );
setRotateKey( spep_2 + 535 + OFFSET_X, 1, -7.1 );
setRotateKey( spep_2 + 536 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_2 + 537 + OFFSET_X, 1, -7.2 );
setRotateKey( spep_2 + 538 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_2 + 539 + OFFSET_X, 1, -7.3 );
setRotateKey( spep_2 + 540 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_2 + 541 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_2 + 542 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_2 + 543 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_2 + 544 + OFFSET_X, 1, -7.6 );
setRotateKey( spep_2 + 545 + OFFSET_X, 1, -7.6 );
setRotateKey( spep_2 + 546 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_2 + 547 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_2 + 548 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_2 + 549 + OFFSET_X, 1, -7.8 );
setRotateKey( spep_2 + 550 + OFFSET_X, 1, -7.9 );
setRotateKey( spep_2 + 551 + OFFSET_X, 1, -7.9 );
setRotateKey( spep_2 + 552 + OFFSET_X, 1, -8 );
setRotateKey( spep_2 + 553 + OFFSET_X, 1, -8 );
setRotateKey( spep_2 + 554 + OFFSET_X, 1, -8.1 );
setRotateKey( spep_2 + 555 + OFFSET_X, 1, -8.1 );
setRotateKey( spep_2 + 556 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_2 + 557 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_2 + 558 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_2 + 559 + OFFSET_X, 1, -8.3 );
setRotateKey( spep_2 + 560 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_2 + 561 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_2 + 562 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_2 + 563 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_2 + 564 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_2 + 565 + OFFSET_X, 1, -8.6 );
setRotateKey( spep_2 + 566 + OFFSET_X, 1, -8.7 );
setRotateKey( spep_2 + 567 + OFFSET_X, 1, -8.7 );
setRotateKey( spep_2 + 568 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_2 + 569 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_2 + 570 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_2 + 571 + OFFSET_X, 1, -8.9 );
setRotateKey( spep_2 + 572 + OFFSET_X, 1, -9 );
setRotateKey( spep_2 + 573 + OFFSET_X, 1, -9 );
setRotateKey( spep_2 + 574 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_2 + 575 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_2 + 576 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_2 + 577 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_2 + 578 + OFFSET_X, 1, -9.3 );
setRotateKey( spep_2 + 579 + OFFSET_X, 1, -9.3 );
setRotateKey( spep_2 + 580 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_2 + 581 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_2 + 582 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_2 + 583 + OFFSET_X, 1, -9.5 );
setRotateKey( spep_2 + 584 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_2 + 585 + OFFSET_X, 1, -9.6 );
setRotateKey( spep_2 + 586 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_2 + 587 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_2 + 588 + OFFSET_X, 1, -9.8 );
setRotateKey( spep_2 + 589 + OFFSET_X, 1, -9.8 );
setRotateKey( spep_2 + 590 + OFFSET_X, 1, -9.9 );
setRotateKey( spep_2 + 591 + OFFSET_X, 1, -9.9 );
setRotateKey( spep_2 + 592 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 593 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 594 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_2 + 595 + OFFSET_X, 1, -10.1 );
setRotateKey( spep_2 + 596 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_2 + 597 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_2 + 598 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_2 + 599 + OFFSET_X, 1, -10.3 );
setRotateKey( spep_2 + 600 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 601 + OFFSET_X, 1, -10.4 );
setRotateKey( spep_2 + 602 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 603 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 604 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_2 + 605 + OFFSET_X, 1, -10.6 );
setRotateKey( spep_2 + 606 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_2 + 607 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_2 + 608 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 609 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_2 + 610 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_2 + 611 + OFFSET_X, 1, -10.9 );
setRotateKey( spep_2 + 612 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_2 + 613 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_2 + 614 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_2 + 615 + OFFSET_X, 1, -11.2 );
setRotateKey( spep_2 + 616 + OFFSET_X, 1, -11.3 );
setRotateKey( spep_2 + 617 + OFFSET_X, 1, -11.3 );
setRotateKey( spep_2 + 618 + OFFSET_X, 1, -11.4 );
setRotateKey( spep_2 + 619 + OFFSET_X, 1, -11.4 );
setRotateKey( spep_2 + 620 + OFFSET_X, 1, -11.5 );
setRotateKey( spep_2 + 621 + OFFSET_X, 1, -11.5 );
setRotateKey( spep_2 + 622 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_2 + 623 + OFFSET_X, 1, -11.6 );
setRotateKey( spep_2 + 624 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_2 + 625 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_2 + 626 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_2 + 627 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_2 + 628 + OFFSET_X, 1, -11.9 );
setRotateKey( spep_2 + 629 + OFFSET_X, 1, -11.9 );
setRotateKey( spep_2 + 630 + OFFSET_X, 1, -12 );
setRotateKey( spep_2 + 631 + OFFSET_X, 1, -12 );
setRotateKey( spep_2 + 632 + OFFSET_X, 1, -12.1 );
setRotateKey( spep_2 + 633 + OFFSET_X, 1, -12.1 );
setRotateKey( spep_2 + 634 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_2 + 635 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_2 + 636 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_2 + 637 + OFFSET_X, 1, -12.3 );
setRotateKey( spep_2 + 638 + OFFSET_X, 1, -12.4 );
setRotateKey( spep_2 + 639 + OFFSET_X, 1, -12.4 );
setRotateKey( spep_2 + 640 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_2 + 641 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_2 + 642 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_2 + 643 + OFFSET_X, 1, -12.6 );
setRotateKey( spep_2 + 644 + OFFSET_X, 1, -12.7 );
setRotateKey( spep_2 + 645 + OFFSET_X, 1, -12.7 );
setRotateKey( spep_2 + 646 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_2 + 647 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_2 + 648 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_2 + 649 + OFFSET_X, 1, -12.9 );
setRotateKey( spep_2 + 650 + OFFSET_X, 1, -13 );
setRotateKey( spep_2 + 651 + OFFSET_X, 1, -13 );
setRotateKey( spep_2 + 652 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_2 + 653 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_2 + 654 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_2 + 655 + OFFSET_X, 1, -13.2 );
setRotateKey( spep_2 + 656 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_2 + 657 + OFFSET_X, 1, -13.3 );
setRotateKey( spep_2 + 658 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_2 + 659 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_2 + 660 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_2 + 661 + OFFSET_X, 1, -13.5 );
setRotateKey( spep_2 + 662 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_2 + 663 + OFFSET_X, 1, -13.6 );
setRotateKey( spep_2 + 664 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 665 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_2 + 666 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_2 + 667 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_2 + 668 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 669 + OFFSET_X, 1, -13.9 );
setRotateKey( spep_2 + 670 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 671 + OFFSET_X, 1, -14 );
setRotateKey( spep_2 + 672 + OFFSET_X, 1, -14.1 );
setRotateKey( spep_2 + 673 + OFFSET_X, 1, -14.1 );
setRotateKey( spep_2 + 674 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 675 + OFFSET_X, 1, -14.2 );
setRotateKey( spep_2 + 676 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_2 + 677 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_2 + 678 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_2 + 679 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_2 + 680 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_2 + 681 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_2 + 682 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 683 + OFFSET_X, 1, -14.6 );
setRotateKey( spep_2 + 684 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 685 + OFFSET_X, 1, -14.7 );
setRotateKey( spep_2 + 686 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_2 + 687 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_2 + 688 + OFFSET_X, 1, -14.9 );
setRotateKey( spep_2 + 694 + OFFSET_X, 1, -14.9 );

-- ** 音 ** --

--ハンマー投げる
SE014 = playSeVer2( spep_2 + 2, 1003, "", 0, 0, 0, -1);

--ハンマー飛んでいく
SE015 = playSeVer2( spep_2 + 32, 1277, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 64; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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

--地面ささる
SE016 = playSeVer2( spep_2 + 66, 1387, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 68, 1187, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE018 = playSeVer2( spep_2 + 78, 1027, "", 0, 0, 0, -1);

--顔アップ
SE019 = playSeVer2( spep_2 + 104, 227, "",spep_2 + 154, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 104, SE019, 158 );
SE020 = playSeVer2( spep_2 + 104, 1002, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 104, SE020, 54 );
SE021 = playSeVer2( spep_2 + 108, 1032, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 108, SE021, 87 );
SE022 = playSeVer2( spep_2 + 108, 1387, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 108, SE022, 83 );

--両手気弾溜め
SE023 = playSeVer2( spep_2 + 188, 1382, "",spep_2 + 356, 8, 28, -1);
setStartTimeMs( SE023, 767 );
SE024 = playSeVer2( spep_2 + 194, 1445, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_2 + 194, SE024, 158 );
setStartTimeMs( SE024, 367 );
SE025 = playSeVer2( spep_2 + 178, 1004, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 180, 1334, "",spep_2 + 358, 0, 32, -1);
SE028 = playSeVer2( spep_2 + 182, 1253, "",spep_2 + 228, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 182, SE028, 82 );
SE029 = playSeVer2( spep_2 + 208, 1311, "", 0, 0, 0, -1);

--ズームアウト
SE026 = playSeVer2( spep_2 + 178, 1072, "", 0, 0, 0, -1);
setTimeStretch( SE026, 1.65, 30, 4 );

--両腕地面に立てる
SE030 = playSeVer2( spep_2 + 302, 1153, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 302, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 302, SE031, 72 );

--地響き
SE032 = playSeVer2( spep_2 + 326, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 326, SE032, 80 );

--爆発
SE033 = playSeVer2( spep_2 + 340, 1159, "",spep_2 + 494, 0, 26, -1);

--爆発予兆
SE034 = playSeVer2( spep_2 + 340, 1158, "",spep_2 + 500, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 340, SE034, 74 );
SE035 = playSeVer2( spep_2 + 396, 1144, "",spep_2 + 496, 20, 28, -1);
setSeVolumeByWorkId( spep_2 + 396, SE035, 85 );
setStartTimeMs( SE035, 600 );
SE036 = playSeVer2( spep_2 + 418, 1157, "",spep_2 + 510, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 418, SE036, 133 );

--爆発２
SE037 = playSeVer2( spep_2 + 458, 1156, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 460, 1067, "", 0, 0, 0, -1);

--爆発３
SE039 = playSeVer2( spep_2 + 518, 1068, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 518, 1168, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 570); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -0); -- 692F


end
