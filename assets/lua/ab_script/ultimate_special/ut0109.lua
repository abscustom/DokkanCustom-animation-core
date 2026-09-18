--1031920:LR_ブロリー(怒り)_アクティブ必殺：純粋な想いと怒りのパワー
--sp_effect_a2_00267
--ut0109

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 164121; --ef_001 チライ＆レモ走る〜震える

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);

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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

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

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 508 - 13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 508 - 13, SP_01, spep_0 + 508 - 13, 1)

        else
           skipFrame(0, spep_0 + 806);  -- スキップ先フレーム指定
           setupMovie(spep_0 + 806, SP_01, spep_0 + 806, 1)

            --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
            --飛んでくる
            SE046 = playSeVer2( spep_0 + 806, 1116, "",spep_0 + 838, 0, 26, -1);
       end
    else 
      setupMovie(0, SP_01, 0, 1)
    end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- チライ＆レモ走る〜震える
-------------------------------------------------

MAX_FRAME_0 = 1172;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- チライ＆レモ走る〜震える(ef_001)
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


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 160 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 240 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 160 + OFFSET_X, 1, 16 );

setMoveKey( spep_0 + 160 + OFFSET_X, 1, 0, 163.9 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 0, 163.9 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -0.8, 163.9 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -0.8, 163.9 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -1.6, 163.8 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -1.6, 163.8 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -2.3, 163.7 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -2.3, 163.7 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -3.1, 163.6 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -3.1, 163.6 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -3.8, 163.5 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -3.8, 163.5 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -4.6, 163.4 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -4.6, 163.4 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -5.4, 163.3 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -5.4, 163.3 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -6.1, 163.2 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -6.1, 163.2 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -6.9, 163.1 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -6.9, 163.1 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -7.6, 163 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -7.6, 163 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -8.4, 162.9 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -8.4, 162.9 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -9.1, 162.8 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -9.1, 162.8 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -9.9, 162.7 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -9.9, 162.7 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -10.7, 162.6 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -10.7, 162.6 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -11.4, 162.5 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -11.4, 162.5 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -12.2, 162.4 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -12.2, 162.4 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -12.9, 162.3 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -12.9, 162.3 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -13.7, 162.2 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -13.7, 162.2 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -14.4, 162.1 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -14.4, 162.1 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -15.2, 162 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -15.2, 162 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -16, 162 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -16, 162 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -3, 170.1 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -3, 170.1 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 17.5, 147.7 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 17.5, 147.7 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 9.1, 126.4 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 9.1, 126.4 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -14.9, 125.9 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -14.9, 125.9 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 6.2, 145.5 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 6.2, 145.5 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 6.3, 124 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 6.3, 124 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 12.5, 127.6 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 12.5, 127.6 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 4.3, 133 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 4.3, 133 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 4.6, 132 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 4.6, 132 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 4.9, 131.1 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 4.9, 131.1 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 5.2, 130.1 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 5.2, 130.1 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 5.5, 129.2 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 5.5, 129.2 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 5.8, 128.2 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 5.8, 128.2 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 6.1, 127.3 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 6.1, 127.3 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 6.4, 126.3 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 6.4, 126.3 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 6.7, 125.3 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 6.7, 125.3 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 6.9, 124.4 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 6.9, 124.4 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 7.3, 123.5 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 7.3, 123.5 , 0 );

setScaleKey( spep_0 + 160 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 185 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 186 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 197 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 198 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 199 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 200 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 205 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 206 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 207 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 208 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 209 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 210 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 211 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 212 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 215 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 216 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 219 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 220 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 0.65, 0.65 );

setRotateKey( spep_0 + 160 + OFFSET_X, 1, 17.5 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, 17.5 );


--敵の動き2
setDisp( spep_0 + 504 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 574 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 520 + OFFSET_X, 1, 4 );

setMoveKey( spep_0 + 504 + OFFSET_X, 1, 4, 72.2 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 4, 72.2 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 4, 67.9 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 4, 67.9 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 4.1, 63.4 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 4.1, 63.4 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 4.1, 59 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 4.1, 59 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 4.1, 54.6 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 4.1, 54.6 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 4.1, 50.2 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 4.1, 50.2 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 4.1, 45.8 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 4.1, 45.8 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 4.1, 41.3 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 4.1, 41.3 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 4, 49.3 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 4, 49.3 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 4, 49.2 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 4, 49.2 , 0 );
setMoveKey( spep_0 + 524 + OFFSET_X, 1, 3.9, 49.1 , 0 );
setMoveKey( spep_0 + 525 + OFFSET_X, 1, 3.9, 49.1 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, -16, 69 , 0 );
setMoveKey( spep_0 + 527 + OFFSET_X, 1, -16, 69 , 0 );
setMoveKey( spep_0 + 528 + OFFSET_X, 1, 10, 92.9 , 0 );
setMoveKey( spep_0 + 529 + OFFSET_X, 1, 10, 92.9 , 0 );
setMoveKey( spep_0 + 530 + OFFSET_X, 1, 28, 26.9 , 0 );
setMoveKey( spep_0 + 531 + OFFSET_X, 1, 28, 26.9 , 0 );
setMoveKey( spep_0 + 532 + OFFSET_X, 1, 4, 30.8 , 0 );
setMoveKey( spep_0 + 533 + OFFSET_X, 1, 4, 30.8 , 0 );
setMoveKey( spep_0 + 534 + OFFSET_X, 1, 24, 68.7 , 0 );
setMoveKey( spep_0 + 535 + OFFSET_X, 1, 24, 68.7 , 0 );
setMoveKey( spep_0 + 536 + OFFSET_X, 1, 40, 80.6 , 0 );
setMoveKey( spep_0 + 537 + OFFSET_X, 1, 40, 80.6 , 0 );
setMoveKey( spep_0 + 538 + OFFSET_X, 1, 46, 52.5 , 0 );
setMoveKey( spep_0 + 539 + OFFSET_X, 1, 46, 52.5 , 0 );
setMoveKey( spep_0 + 540 + OFFSET_X, 1, -3.9, 54.4 , 0 );
setMoveKey( spep_0 + 541 + OFFSET_X, 1, -3.9, 54.4 , 0 );
setMoveKey( spep_0 + 542 + OFFSET_X, 1, 24.1, 48.4 , 0 );
setMoveKey( spep_0 + 543 + OFFSET_X, 1, 24.1, 48.4 , 0 );
setMoveKey( spep_0 + 544 + OFFSET_X, 1, 22.1, 28.3 , 0 );
setMoveKey( spep_0 + 545 + OFFSET_X, 1, 22.1, 28.3 , 0 );
setMoveKey( spep_0 + 546 + OFFSET_X, 1, 4, 34.2 , 0 );
setMoveKey( spep_0 + 547 + OFFSET_X, 1, 4, 34.2 , 0 );
setMoveKey( spep_0 + 548 + OFFSET_X, 1, 4.1, 24.2 , 0 );
setMoveKey( spep_0 + 549 + OFFSET_X, 1, 4.1, 24.2 , 0 );
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 24.1, 26.1 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 24.1, 26.1 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 10.1, 38 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 10.1, 38 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 6.2, 39.9 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 6.2, 39.9 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 4.1, 47.8 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 4.1, 47.8 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 4.1, 47.7 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 4.1, 47.7 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 4.1, 47.6 , 0 );
setMoveKey( spep_0 + 561 + OFFSET_X, 1, 4.1, 47.6 , 0 );
setMoveKey( spep_0 + 562 + OFFSET_X, 1, 4.1, 47.5 , 0 );
setMoveKey( spep_0 + 563 + OFFSET_X, 1, 4.1, 47.5 , 0 );
setMoveKey( spep_0 + 564 + OFFSET_X, 1, 4.1, 47.6 , 0 );
setMoveKey( spep_0 + 565 + OFFSET_X, 1, 4.1, 47.6 , 0 );
setMoveKey( spep_0 + 566 + OFFSET_X, 1, 4.2, 47.4 , 0 );
setMoveKey( spep_0 + 567 + OFFSET_X, 1, 4.2, 47.4 , 0 );
setMoveKey( spep_0 + 568 + OFFSET_X, 1, 4.2, 47.3 , 0 );
setMoveKey( spep_0 + 571 + OFFSET_X, 1, 4.2, 47.3 , 0 );
setMoveKey( spep_0 + 572 + OFFSET_X, 1, 4.1, 47.2 , 0 );
setMoveKey( spep_0 + 574 + OFFSET_X, 1, 4.1, 47.2 , 0 );

setScaleKey( spep_0 + 504 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 505 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 506 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 507 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 508 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 509 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 510 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 511 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 512 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 513 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_0 + 514 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 515 + OFFSET_X, 1, 1.48, 1.48 );
setScaleKey( spep_0 + 516 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 517 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 518 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 519 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 520 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 521 + OFFSET_X, 1, 2.15, 2.15 );
setScaleKey( spep_0 + 522 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 523 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_0 + 524 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 525 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 527 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 528 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 529 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_0 + 530 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 531 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_0 + 532 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 533 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_0 + 534 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 537 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 538 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 539 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 540 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 541 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 542 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 543 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 544 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 545 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 546 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 547 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 548 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 549 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_0 + 550 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 551 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_0 + 552 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 553 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_0 + 554 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 555 + OFFSET_X, 1, 1.4, 1.4 );
setScaleKey( spep_0 + 556 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 557 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_0 + 558 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 559 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 560 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 561 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 562 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 563 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 564 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 565 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 566 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 567 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 568 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 569 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 570 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 571 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 572 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 574 + OFFSET_X, 1, 1.01, 1.01 );

setRotateKey( spep_0 + 504 + OFFSET_X, 1, 17.5 );
setRotateKey( spep_0 + 574 + OFFSET_X, 1, 17.5 );


--敵の動き3
setDisp( spep_0 + 638 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 684 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 638 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 640 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 682 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 638 + OFFSET_X, 1, 212, 18.3 , 0 );
setMoveKey( spep_0 + 639 + OFFSET_X, 1, 212, 18.3 , 0 );
setMoveKey( spep_0 + 640 + OFFSET_X, 1, 6.1, 62.2 , 0 );
setMoveKey( spep_0 + 643 + OFFSET_X, 1, 6.1, 62.2 , 0 );
setMoveKey( spep_0 + 644 + OFFSET_X, 1, 6.1, 62.1 , 0 );
setMoveKey( spep_0 + 645 + OFFSET_X, 1, 6.1, 62.1 , 0 );
setMoveKey( spep_0 + 646 + OFFSET_X, 1, 8, 2.1 , 0 );
setMoveKey( spep_0 + 647 + OFFSET_X, 1, 8, 2.1 , 0 );
setMoveKey( spep_0 + 648 + OFFSET_X, 1, 8, 38 , 0 );
setMoveKey( spep_0 + 649 + OFFSET_X, 1, 8, 38 , 0 );
setMoveKey( spep_0 + 650 + OFFSET_X, 1, -0.1, 8.1 , 0 );
setMoveKey( spep_0 + 651 + OFFSET_X, 1, -0.1, 8.1 , 0 );
setMoveKey( spep_0 + 652 + OFFSET_X, 1, -0.1, 8 , 0 );
setMoveKey( spep_0 + 653 + OFFSET_X, 1, -0.1, 8 , 0 );
setMoveKey( spep_0 + 654 + OFFSET_X, 1, 43.9, 27.8 , 0 );
setMoveKey( spep_0 + 655 + OFFSET_X, 1, 43.9, 27.8 , 0 );
setMoveKey( spep_0 + 656 + OFFSET_X, 1, 39.9, 19.7 , 0 );
setMoveKey( spep_0 + 659 + OFFSET_X, 1, 39.9, 19.7 , 0 );
setMoveKey( spep_0 + 660 + OFFSET_X, 1, 59.8, 37.6 , 0 );
setMoveKey( spep_0 + 661 + OFFSET_X, 1, 59.8, 37.6 , 0 );
setMoveKey( spep_0 + 662 + OFFSET_X, 1, 59.8, 39.5 , 0 );
setMoveKey( spep_0 + 663 + OFFSET_X, 1, 59.8, 39.5 , 0 );
setMoveKey( spep_0 + 664 + OFFSET_X, 1, 65.8, 35.5 , 0 );
setMoveKey( spep_0 + 665 + OFFSET_X, 1, 65.8, 35.5 , 0 );
setMoveKey( spep_0 + 666 + OFFSET_X, 1, 65.8, 35.4 , 0 );
setMoveKey( spep_0 + 667 + OFFSET_X, 1, 65.8, 35.4 , 0 );
setMoveKey( spep_0 + 668 + OFFSET_X, 1, 125.8, 19.3 , 0 );
setMoveKey( spep_0 + 669 + OFFSET_X, 1, 125.8, 19.3 , 0 );
setMoveKey( spep_0 + 670 + OFFSET_X, 1, 129.8, 21.2 , 0 );
setMoveKey( spep_0 + 671 + OFFSET_X, 1, 129.8, 21.2 , 0 );
setMoveKey( spep_0 + 672 + OFFSET_X, 1, 129.8, 21.1 , 0 );
setMoveKey( spep_0 + 673 + OFFSET_X, 1, 129.8, 21.1 , 0 );
setMoveKey( spep_0 + 674 + OFFSET_X, 1, 131.8, 19 , 0 );
setMoveKey( spep_0 + 675 + OFFSET_X, 1, 131.8, 19 , 0 );
setMoveKey( spep_0 + 676 + OFFSET_X, 1, 135.8, 4.9 , 0 );
setMoveKey( spep_0 + 677 + OFFSET_X, 1, 135.8, 4.9 , 0 );
setMoveKey( spep_0 + 678 + OFFSET_X, 1, 125.8, 4.8 , 0 );
setMoveKey( spep_0 + 679 + OFFSET_X, 1, 125.8, 4.8 , 0 );
setMoveKey( spep_0 + 680 + OFFSET_X, 1, 93.7, -81.1 , 0 );
setMoveKey( spep_0 + 681 + OFFSET_X, 1, 93.7, -81.1 , 0 );
setMoveKey( spep_0 + 682 + OFFSET_X, 1, 541.9, -474.7 , 0 );
setMoveKey( spep_0 + 684 + OFFSET_X, 1, 541.9, -474.7 , 0 );

setScaleKey( spep_0 + 638 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 639 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 640 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 645 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_0 + 646 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 649 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_0 + 650 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 679 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 680 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 681 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 682 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 684 + OFFSET_X, 1, 1.12, 1.12 );

setRotateKey( spep_0 + 638 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 639 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 640 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 649 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 650 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_0 + 653 + OFFSET_X, 1, 18.3 );
setRotateKey( spep_0 + 654 + OFFSET_X, 1, 22 );
setRotateKey( spep_0 + 659 + OFFSET_X, 1, 22 );
setRotateKey( spep_0 + 660 + OFFSET_X, 1, 27.7 );
setRotateKey( spep_0 + 679 + OFFSET_X, 1, 27.7 );
setRotateKey( spep_0 + 680 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_0 + 681 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_0 + 682 + OFFSET_X, 1, 38.1 );
setRotateKey( spep_0 + 684 + OFFSET_X, 1, 38.1 );


--敵の動き4
setDisp( spep_0 + 708 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 940 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 708 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 714 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 720 + OFFSET_X, 1, 5 );
changeAnime( spep_0 + 760 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 762 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 824 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 826 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 856 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 864 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 884 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 894 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 708 + OFFSET_X, 1, -177.9, 399.1 , 0 );
setMoveKey( spep_0 + 709 + OFFSET_X, 1, -177.9, 399.1 , 0 );
setMoveKey( spep_0 + 710 + OFFSET_X, 1, -117.9, 344.6 , 0 );
setMoveKey( spep_0 + 711 + OFFSET_X, 1, -117.9, 344.6 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, 62, 181.2 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, 62, 181.2 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, 361.8, -91 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, 361.8, -91 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, 361.8, -91.1 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, 361.8, -91.1 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, 361.8, -91.2 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, 361.8, -91.2 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, 186, -63.1 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, 186, -63.1 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, 161.9, -23.1 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, 161.9, -23.1 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, 162, -15.2 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, 162, -15.2 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, 122, -11.3 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, 122, -11.3 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, 128, -13.4 , 0 );
setMoveKey( spep_0 + 731 + OFFSET_X, 1, 128, -13.4 , 0 );
setMoveKey( spep_0 + 732 + OFFSET_X, 1, 122, -3.5 , 0 );
setMoveKey( spep_0 + 733 + OFFSET_X, 1, 122, -3.5 , 0 );
setMoveKey( spep_0 + 734 + OFFSET_X, 1, 96, 6.3 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, 96, 6.3 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, 80, 28.1 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, 80, 28.1 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, 80, 36.1 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, 80, 36.1 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, 80, 39.8 , 0 );
setMoveKey( spep_0 + 741 + OFFSET_X, 1, 80, 39.8 , 0 );
setMoveKey( spep_0 + 742 + OFFSET_X, 1, 80, 39.7 , 0 );
setMoveKey( spep_0 + 743 + OFFSET_X, 1, 80, 39.7 , 0 );
setMoveKey( spep_0 + 744 + OFFSET_X, 1, 54, 31.9 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, 54, 31.9 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, 54, 17.7 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, 54, 17.7 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, 54, 11.9 , 0 );
setMoveKey( spep_0 + 749 + OFFSET_X, 1, 54, 11.9 , 0 );
setMoveKey( spep_0 + 750 + OFFSET_X, 1, 54, 11.8 , 0 );
setMoveKey( spep_0 + 751 + OFFSET_X, 1, 54, 11.8 , 0 );
setMoveKey( spep_0 + 752 + OFFSET_X, 1, 54, 11.7 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, 54, 11.7 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, 175.5, 24.6 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, 175.5, 24.6 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, 211.7, 33.5 , 0 );
setMoveKey( spep_0 + 759 + OFFSET_X, 1, 211.7, 33.5 , 0 );
setMoveKey( spep_0 + 760 + OFFSET_X, 1, 278.8, -84 , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, 278.8, -84 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, 288.3, -54.4 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, 288.3, -54.4 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, 55.7, 40.5 , 0 );
setMoveKey( spep_0 + 767 + OFFSET_X, 1, 55.7, 40.5 , 0 );
setMoveKey( spep_0 + 768 + OFFSET_X, 1, -24.3, 40.4 , 0 );
setMoveKey( spep_0 + 769 + OFFSET_X, 1, -24.3, 40.4 , 0 );
setMoveKey( spep_0 + 770 + OFFSET_X, 1, 2.5, 10.2 , 0 );
setMoveKey( spep_0 + 771 + OFFSET_X, 1, 2.5, 10.2 , 0 );
setMoveKey( spep_0 + 772 + OFFSET_X, 1, 29.3, -46.1 , 0 );
setMoveKey( spep_0 + 773 + OFFSET_X, 1, 29.3, -46.1 , 0 );
setMoveKey( spep_0 + 774 + OFFSET_X, 1, 55.8, -95.1 , 0 );
setMoveKey( spep_0 + 775 + OFFSET_X, 1, 55.8, -95.1 , 0 );
setMoveKey( spep_0 + 776 + OFFSET_X, 1, 55.8, -135.2 , 0 );
setMoveKey( spep_0 + 777 + OFFSET_X, 1, 55.8, -135.2 , 0 );
setMoveKey( spep_0 + 778 + OFFSET_X, 1, 55.8, -175.3 , 0 );
setMoveKey( spep_0 + 779 + OFFSET_X, 1, 55.8, -175.3 , 0 );
setMoveKey( spep_0 + 780 + OFFSET_X, 1, 55.8, -215.4 , 0 );
setMoveKey( spep_0 + 781 + OFFSET_X, 1, 55.8, -215.4 , 0 );
setMoveKey( spep_0 + 782 + OFFSET_X, 1, 55.8, -255.5 , 0 );
setMoveKey( spep_0 + 783 + OFFSET_X, 1, 55.8, -255.5 , 0 );
setMoveKey( spep_0 + 784 + OFFSET_X, 1, 55.8, -295.6 , 0 );
setMoveKey( spep_0 + 785 + OFFSET_X, 1, 55.8, -295.6 , 0 );
setMoveKey( spep_0 + 786 + OFFSET_X, 1, 55.8, -335.6 , 0 );
setMoveKey( spep_0 + 787 + OFFSET_X, 1, 55.8, -335.6 , 0 );
setMoveKey( spep_0 + 788 + OFFSET_X, 1, 55.8, -375.6 , 0 );
setMoveKey( spep_0 + 789 + OFFSET_X, 1, 55.8, -375.6 , 0 );
setMoveKey( spep_0 + 790 + OFFSET_X, 1, 55.8, -415.7 , 0 );
setMoveKey( spep_0 + 791 + OFFSET_X, 1, 55.8, -415.7 , 0 );
setMoveKey( spep_0 + 792 + OFFSET_X, 1, 55.8, -445.7 , 0 );
setMoveKey( spep_0 + 793 + OFFSET_X, 1, 55.8, -445.7 , 0 );
setMoveKey( spep_0 + 794 + OFFSET_X, 1, 55.7, -475.8 , 0 );
setMoveKey( spep_0 + 795 + OFFSET_X, 1, 55.7, -475.8 , 0 );
setMoveKey( spep_0 + 796 + OFFSET_X, 1, 55.8, -522.6 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, 55.8, -522.6 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, 55.8, -569.4 , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, 55.8, -569.4 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, 55.8, -616.3 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, 55.8, -616.3 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, 45.8, -631.3 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, 45.8, -631.3 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, 35.8, -646.3 , 0 );
setMoveKey( spep_0 + 805 + OFFSET_X, 1, 35.8, -646.3 , 0 );
setMoveKey( spep_0 + 806 + OFFSET_X, 1, 15.8, -676.5 , 0 );
setMoveKey( spep_0 + 807 + OFFSET_X, 1, 15.8, -676.5 , 0 );
setMoveKey( spep_0 + 808 + OFFSET_X, 1, 1.7, -676.5 , 0 );
setMoveKey( spep_0 + 809 + OFFSET_X, 1, 1.7, -676.5 , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, -8.3, -672.6 , 0 );
setMoveKey( spep_0 + 811 + OFFSET_X, 1, -8.3, -672.6 , 0 );
setMoveKey( spep_0 + 812 + OFFSET_X, 1, -8.3, -672.7 , 0 );
setMoveKey( spep_0 + 813 + OFFSET_X, 1, -8.3, -672.7 , 0 );
setMoveKey( spep_0 + 814 + OFFSET_X, 1, -22.3, -660.7 , 0 );
setMoveKey( spep_0 + 815 + OFFSET_X, 1, -22.3, -660.7 , 0 );
setMoveKey( spep_0 + 816 + OFFSET_X, 1, -22.3, -620.7 , 0 );
setMoveKey( spep_0 + 817 + OFFSET_X, 1, -22.3, -620.7 , 0 );
setMoveKey( spep_0 + 818 + OFFSET_X, 1, -22.3, -620.8 , 0 );
setMoveKey( spep_0 + 819 + OFFSET_X, 1, -22.3, -620.8 , 0 );
setMoveKey( spep_0 + 820 + OFFSET_X, 1, 137.7, -500.9 , 0 );
setMoveKey( spep_0 + 821 + OFFSET_X, 1, 137.7, -500.9 , 0 );
setMoveKey( spep_0 + 822 + OFFSET_X, 1, 137.7, -501.0 , 0 );
setMoveKey( spep_0 + 823 + OFFSET_X, 1, 137.7, -501.0 , 0 );
setMoveKey( spep_0 + 824 + OFFSET_X, 1, 159, -860.7 , 0 );
setMoveKey( spep_0 + 825 + OFFSET_X, 1, 159, -860.7 , 0 );
setMoveKey( spep_0 + 826 + OFFSET_X, 1, 293.8, -815.3 , 0 );
setMoveKey( spep_0 + 827 + OFFSET_X, 1, 293.8, -815.3 , 0 );
setMoveKey( spep_0 + 828 + OFFSET_X, 1, 261, -843.4 , 0 );
setMoveKey( spep_0 + 829 + OFFSET_X, 1, 261, -843.4 , 0 );
setMoveKey( spep_0 + 830 + OFFSET_X, 1, 261, -843.5 , 0 );
setMoveKey( spep_0 + 831 + OFFSET_X, 1, 261, -843.5 , 0 );
setMoveKey( spep_0 + 832 + OFFSET_X, 1, 261, -843.6 , 0 );
setMoveKey( spep_0 + 833 + OFFSET_X, 1, 261, -843.6 , 0 );
setMoveKey( spep_0 + 834 + OFFSET_X, 1, 261, -803.7 , 0 );
setMoveKey( spep_0 + 835 + OFFSET_X, 1, 261, -803.7 , 0 );
setMoveKey( spep_0 + 836 + OFFSET_X, 1, 165, -803.8 , 0 );
setMoveKey( spep_0 + 837 + OFFSET_X, 1, 165, -803.8 , 0 );
setMoveKey( spep_0 + 838 + OFFSET_X, 1, 45.2, -803.8 , 0 );
setMoveKey( spep_0 + 839 + OFFSET_X, 1, 45.2, -803.8 , 0 );
setMoveKey( spep_0 + 840 + OFFSET_X, 1, 57.2, -791.9 , 0 );
setMoveKey( spep_0 + 841 + OFFSET_X, 1, 57.2, -791.9 , 0 );
setMoveKey( spep_0 + 842 + OFFSET_X, 1, 57.2, -792.0 , 0 );
setMoveKey( spep_0 + 843 + OFFSET_X, 1, 57.2, -792.0 , 0 );
setMoveKey( spep_0 + 844 + OFFSET_X, 1, 57.2, -828.1 , 0 );
setMoveKey( spep_0 + 847 + OFFSET_X, 1, 57.2, -828.1 , 0 );
setMoveKey( spep_0 + 848 + OFFSET_X, 1, 9.6, -740.2 , 0 );
setMoveKey( spep_0 + 849 + OFFSET_X, 1, 9.6, -740.2 , 0 );
setMoveKey( spep_0 + 850 + OFFSET_X, 1, 29.5, -780.3 , 0 );
setMoveKey( spep_0 + 851 + OFFSET_X, 1, 29.5, -780.3 , 0 );
setMoveKey( spep_0 + 852 + OFFSET_X, 1, 29.5, -780.4 , 0 );
setMoveKey( spep_0 + 853 + OFFSET_X, 1, 29.5, -780.4 , 0 );
setMoveKey( spep_0 + 854 + OFFSET_X, 1, 29.5, -768.4 , 0 );
setMoveKey( spep_0 + 855 + OFFSET_X, 1, 29.5, -768.4 , 0 );
setMoveKey( spep_0 + 856 + OFFSET_X, 1, 35.1, -782.0 , 0 );
setMoveKey( spep_0 + 857 + OFFSET_X, 1, 35.1, -782.0 , 0 );
setMoveKey( spep_0 + 858 + OFFSET_X, 1, 35.1, -742.1 , 0 );
setMoveKey( spep_0 + 859 + OFFSET_X, 1, 35.1, -742.1 , 0 );
setMoveKey( spep_0 + 860 + OFFSET_X, 1, -64.9, -822.2 , 0 );
setMoveKey( spep_0 + 861 + OFFSET_X, 1, -64.9, -822.2 , 0 );
setMoveKey( spep_0 + 862 + OFFSET_X, 1, -64.9, -822.3 , 0 );
setMoveKey( spep_0 + 863 + OFFSET_X, 1, -64.9, -822.3 , 0 );
setMoveKey( spep_0 + 864 + OFFSET_X, 1, 5.9, -708.7 , 0 );
setMoveKey( spep_0 + 865 + OFFSET_X, 1, 5.9, -708.7 , 0 );
setMoveKey( spep_0 + 866 + OFFSET_X, 1, -6.1, -720.8 , 0 );
setMoveKey( spep_0 + 867 + OFFSET_X, 1, -6.1, -720.8 , 0 );
setMoveKey( spep_0 + 868 + OFFSET_X, 1, -73.8, -708.9 , 0 );
setMoveKey( spep_0 + 869 + OFFSET_X, 1, -73.8, -708.9 , 0 );
setMoveKey( spep_0 + 870 + OFFSET_X, 1, -85.8, -709.0 , 0 );
setMoveKey( spep_0 + 871 + OFFSET_X, 1, -85.8, -709.0 , 0 );
setMoveKey( spep_0 + 872 + OFFSET_X, 1, -85.8, -709.1 , 0 );
setMoveKey( spep_0 + 875 + OFFSET_X, 1, -85.8, -709.1 , 0 );
setMoveKey( spep_0 + 876 + OFFSET_X, 1, -93.8, -697.2 , 0 );
setMoveKey( spep_0 + 877 + OFFSET_X, 1, -93.8, -697.2 , 0 );
setMoveKey( spep_0 + 878 + OFFSET_X, 1, -93.8, -697.3 , 0 );
setMoveKey( spep_0 + 879 + OFFSET_X, 1, -93.8, -697.3 , 0 );
setMoveKey( spep_0 + 880 + OFFSET_X, 1, -93.8, -697.4 , 0 );
setMoveKey( spep_0 + 881 + OFFSET_X, 1, -93.8, -697.4 , 0 );
setMoveKey( spep_0 + 882 + OFFSET_X, 1, -93.8, -697.5 , 0 );
setMoveKey( spep_0 + 883 + OFFSET_X, 1, -93.8, -697.5 , 0 );
setMoveKey( spep_0 + 884 + OFFSET_X, 1, -104.9, -778.9 , 0 );
setMoveKey( spep_0 + 885 + OFFSET_X, 1, -104.9, -778.9 , 0 );
setMoveKey( spep_0 + 886 + OFFSET_X, 1, -24.9, -779.0 , 0 );
setMoveKey( spep_0 + 887 + OFFSET_X, 1, -24.9, -779.0 , 0 );
setMoveKey( spep_0 + 888 + OFFSET_X, 1, -24.9, -779.1 , 0 );
setMoveKey( spep_0 + 889 + OFFSET_X, 1, -24.9, -779.1 , 0 );
setMoveKey( spep_0 + 890 + OFFSET_X, 1, -16.9, -715.2 , 0 );
setMoveKey( spep_0 + 891 + OFFSET_X, 1, -16.9, -715.2 , 0 );
setMoveKey( spep_0 + 892 + OFFSET_X, 1, -24.9, -743.3 , 0 );
setMoveKey( spep_0 + 893 + OFFSET_X, 1, -24.9, -743.3 , 0 );
setMoveKey( spep_0 + 894 + OFFSET_X, 1, -14.4, -733.6 , 0 );
setMoveKey( spep_0 + 895 + OFFSET_X, 1, -14.4, -733.6 , 0 );
setMoveKey( spep_0 + 896 + OFFSET_X, 1, 65.6, -733.7 , 0 );
setMoveKey( spep_0 + 897 + OFFSET_X, 1, 65.6, -733.7 , 0 );
setMoveKey( spep_0 + 898 + OFFSET_X, 1, 49.6, -709.8 , 0 );
setMoveKey( spep_0 + 899 + OFFSET_X, 1, 49.6, -709.8 , 0 );
setMoveKey( spep_0 + 900 + OFFSET_X, 1, 53.6, -705.9 , 0 );
setMoveKey( spep_0 + 901 + OFFSET_X, 1, 53.6, -705.9 , 0 );
setMoveKey( spep_0 + 902 + OFFSET_X, 1, 45.6, -722.0 , 0 );
setMoveKey( spep_0 + 903 + OFFSET_X, 1, 45.6, -722.0 , 0 );
setMoveKey( spep_0 + 904 + OFFSET_X, 1, -53.7, -710.2 , 0 );
setMoveKey( spep_0 + 905 + OFFSET_X, 1, -53.7, -710.2 , 0 );
setMoveKey( spep_0 + 906 + OFFSET_X, 1, -57.7, -726.3 , 0 );
setMoveKey( spep_0 + 907 + OFFSET_X, 1, -57.7, -726.3 , 0 );
setMoveKey( spep_0 + 908 + OFFSET_X, 1, -33.3, -654.4 , 0 );
setMoveKey( spep_0 + 909 + OFFSET_X, 1, -33.3, -654.4 , 0 );
setMoveKey( spep_0 + 910 + OFFSET_X, 1, -33.3, -654.5 , 0 );
setMoveKey( spep_0 + 911 + OFFSET_X, 1, -33.3, -654.5 , 0 );
setMoveKey( spep_0 + 912 + OFFSET_X, 1, -33.3, -706.6 , 0 );
setMoveKey( spep_0 + 913 + OFFSET_X, 1, -33.3, -706.6 , 0 );
setMoveKey( spep_0 + 914 + OFFSET_X, 1, -33.3, -742.7 , 0 );
setMoveKey( spep_0 + 915 + OFFSET_X, 1, -33.3, -742.7 , 0 );
setMoveKey( spep_0 + 916 + OFFSET_X, 1, -33.3, -762.8 , 0 );
setMoveKey( spep_0 + 917 + OFFSET_X, 1, -33.3, -762.8 , 0 );
setMoveKey( spep_0 + 918 + OFFSET_X, 1, -25.3, -782.8 , 0 );
setMoveKey( spep_0 + 919 + OFFSET_X, 1, -25.3, -782.8 , 0 );
setMoveKey( spep_0 + 920 + OFFSET_X, 1, -25.3, -806.9 , 0 );
setMoveKey( spep_0 + 921 + OFFSET_X, 1, -25.3, -806.9 , 0 );
setMoveKey( spep_0 + 922 + OFFSET_X, 1, -25.3, -815.0 , 0 );
setMoveKey( spep_0 + 923 + OFFSET_X, 1, -25.3, -815.0 , 0 );
setMoveKey( spep_0 + 924 + OFFSET_X, 1, -33.3, -815.0 , 0 );
setMoveKey( spep_0 + 925 + OFFSET_X, 1, -33.3, -815.0 , 0 );
setMoveKey( spep_0 + 926 + OFFSET_X, 1, -25.3, -815.1 , 0 );
setMoveKey( spep_0 + 927 + OFFSET_X, 1, -25.3, -815.1 , 0 );
setMoveKey( spep_0 + 928 + OFFSET_X, 1, -25.3, -815.2 , 0 );
setMoveKey( spep_0 + 929 + OFFSET_X, 1, -25.3, -815.2 , 0 );
setMoveKey( spep_0 + 930 + OFFSET_X, 1, -17.3, -819.3 , 0 );
setMoveKey( spep_0 + 931 + OFFSET_X, 1, -17.3, -819.3 , 0 );
setMoveKey( spep_0 + 932 + OFFSET_X, 1, -9.3, -814.3 , 0 );
setMoveKey( spep_0 + 933 + OFFSET_X, 1, -9.3, -814.3 , 0 );
setMoveKey( spep_0 + 934 + OFFSET_X, 1, -13.0, -723.5 , 0 );
setMoveKey( spep_0 + 935 + OFFSET_X, 1, -13.0, -723.5 , 0 );
setMoveKey( spep_0 + 936 + OFFSET_X, 1, -13.0, -643.6 , 0 );
setMoveKey( spep_0 + 937 + OFFSET_X, 1, -13.0, -643.6 , 0 );
setMoveKey( spep_0 + 938 + OFFSET_X, 1, -49.1, -671.5 , 0 );
setMoveKey( spep_0 + 940 + OFFSET_X, 1, -49.1, -671.5 , 0 );

setScaleKey( spep_0 + 708 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 709 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 710 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 711 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 712 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 713 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 714 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 719 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 720 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 721 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 722 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 723 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 725 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 726 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 727 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_0 + 728 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 733 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 734 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 735 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 736 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 739 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 740 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 743 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 744 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 745 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 746 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 747 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 748 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 753 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 754 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 755 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 756 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 759 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_0 + 760 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_0 + 761 + OFFSET_X, 1, 3.24, 3.24 );
setScaleKey( spep_0 + 762 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 763 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_0 + 764 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 769 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 770 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 771 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_0 + 772 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 773 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 774 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 787 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 788 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 789 + OFFSET_X, 1, 1.79, 1.79 );
setScaleKey( spep_0 + 790 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 823 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 824 + OFFSET_X, 1, 7.36, 7.36 );
setScaleKey( spep_0 + 827 + OFFSET_X, 1, 7.36, 7.36 );
setScaleKey( spep_0 + 828 + OFFSET_X, 1, 8.05, 8.05 );
setScaleKey( spep_0 + 837 + OFFSET_X, 1, 8.05, 8.05 );
setScaleKey( spep_0 + 838 + OFFSET_X, 1, 7.55, 7.55 );
setScaleKey( spep_0 + 847 + OFFSET_X, 1, 7.55, 7.55 );
setScaleKey( spep_0 + 848 + OFFSET_X, 1, 6.61, 6.61 );
setScaleKey( spep_0 + 849 + OFFSET_X, 1, 6.61, 6.61 );
setScaleKey( spep_0 + 850 + OFFSET_X, 1, 6.99, 6.99 );
setScaleKey( spep_0 + 853 + OFFSET_X, 1, 6.99, 6.99 );
setScaleKey( spep_0 + 854 + OFFSET_X, 1, 6.72, 6.72 );
setScaleKey( spep_0 + 863 + OFFSET_X, 1, 6.72, 6.72 );
setScaleKey( spep_0 + 864 + OFFSET_X, 1, 5.88, 5.88 );
setScaleKey( spep_0 + 867 + OFFSET_X, 1, 5.88, 5.88 );
setScaleKey( spep_0 + 868 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_0 + 883 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_0 + 884 + OFFSET_X, 1, 6.73, 6.73 );
setScaleKey( spep_0 + 903 + OFFSET_X, 1, 6.73, 6.73 );
setScaleKey( spep_0 + 904 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_0 + 907 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_0 + 908 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_0 + 923 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_0 + 924 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 933 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 934 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 937 + OFFSET_X, 1, 3.76, 3.76 );
setScaleKey( spep_0 + 938 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_0 + 940 + OFFSET_X, 1, 4.29, 4.29 );

setRotateKey( spep_0 + 708 + OFFSET_X, 1, 48.5 );
setRotateKey( spep_0 + 709 + OFFSET_X, 1, 48.5 );
setRotateKey( spep_0 + 710 + OFFSET_X, 1, 46.8 );
setRotateKey( spep_0 + 711 + OFFSET_X, 1, 46.8 );
setRotateKey( spep_0 + 712 + OFFSET_X, 1, 41.9 );
setRotateKey( spep_0 + 713 + OFFSET_X, 1, 41.9 );
setRotateKey( spep_0 + 714 + OFFSET_X, 1, 33.7 );
setRotateKey( spep_0 + 719 + OFFSET_X, 1, 33.7 );
setRotateKey( spep_0 + 720 + OFFSET_X, 1, 50.4 );
setRotateKey( spep_0 + 721 + OFFSET_X, 1, 50.4 );
setRotateKey( spep_0 + 722 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_0 + 733 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_0 + 734 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_0 + 735 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_0 + 736 + OFFSET_X, 1, -11.5 );
setRotateKey( spep_0 + 739 + OFFSET_X, 1, -11.5 );
setRotateKey( spep_0 + 740 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_0 + 743 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_0 + 744 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_0 + 747 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_0 + 748 + OFFSET_X, 1, 30.6 );
setRotateKey( spep_0 + 753 + OFFSET_X, 1, 30.6 );
setRotateKey( spep_0 + 754 + OFFSET_X, 1, 57.8 );
setRotateKey( spep_0 + 755 + OFFSET_X, 1, 57.8 );
setRotateKey( spep_0 + 756 + OFFSET_X, 1, 85.5 );
setRotateKey( spep_0 + 759 + OFFSET_X, 1, 85.5 );
setRotateKey( spep_0 + 760 + OFFSET_X, 1, 28.7 );
setRotateKey( spep_0 + 761 + OFFSET_X, 1, 28.7 );
setRotateKey( spep_0 + 762 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_0 + 763 + OFFSET_X, 1, 28.6 );
setRotateKey( spep_0 + 764 + OFFSET_X, 1, 45 );
setRotateKey( spep_0 + 769 + OFFSET_X, 1, 45 );
setRotateKey( spep_0 + 770 + OFFSET_X, 1, 40.5 );
setRotateKey( spep_0 + 771 + OFFSET_X, 1, 40.5 );
setRotateKey( spep_0 + 772 + OFFSET_X, 1, 36 );
setRotateKey( spep_0 + 773 + OFFSET_X, 1, 36 );
setRotateKey( spep_0 + 774 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_0 + 785 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_0 + 786 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_0 + 787 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_0 + 788 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_0 + 789 + OFFSET_X, 1, 32.3 );
setRotateKey( spep_0 + 790 + OFFSET_X, 1, 32.2 );
setRotateKey( spep_0 + 791 + OFFSET_X, 1, 32.2 );
setRotateKey( spep_0 + 792 + OFFSET_X, 1, 32 );
setRotateKey( spep_0 + 793 + OFFSET_X, 1, 32 );
setRotateKey( spep_0 + 794 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_0 + 795 + OFFSET_X, 1, 31.9 );
setRotateKey( spep_0 + 796 + OFFSET_X, 1, 31.7 );
setRotateKey( spep_0 + 797 + OFFSET_X, 1, 31.7 );
setRotateKey( spep_0 + 798 + OFFSET_X, 1, 31.6 );
setRotateKey( spep_0 + 799 + OFFSET_X, 1, 31.6 );
setRotateKey( spep_0 + 800 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_0 + 801 + OFFSET_X, 1, 31.5 );
setRotateKey( spep_0 + 802 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_0 + 803 + OFFSET_X, 1, 32.9 );
setRotateKey( spep_0 + 804 + OFFSET_X, 1, 34.4 );
setRotateKey( spep_0 + 805 + OFFSET_X, 1, 34.4 );
setRotateKey( spep_0 + 806 + OFFSET_X, 1, 37.4 );
setRotateKey( spep_0 + 807 + OFFSET_X, 1, 37.4 );
setRotateKey( spep_0 + 808 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_0 + 813 + OFFSET_X, 1, 38.6 );
setRotateKey( spep_0 + 814 + OFFSET_X, 1, 40.8 );
setRotateKey( spep_0 + 823 + OFFSET_X, 1, 40.8 );
setRotateKey( spep_0 + 824 + OFFSET_X, 1, 75.2 );
setRotateKey( spep_0 + 825 + OFFSET_X, 1, 75.2 );
setRotateKey( spep_0 + 826 + OFFSET_X, 1, 23 );
setRotateKey( spep_0 + 827 + OFFSET_X, 1, 23 );
setRotateKey( spep_0 + 828 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_0 + 855 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_0 + 856 + OFFSET_X, 1, 85.5 );
setRotateKey( spep_0 + 863 + OFFSET_X, 1, 85.5 );
setRotateKey( spep_0 + 864 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_0 + 883 + OFFSET_X, 1, 22.8 );
setRotateKey( spep_0 + 884 + OFFSET_X, 1, 78.8 );
setRotateKey( spep_0 + 893 + OFFSET_X, 1, 78.8 );
setRotateKey( spep_0 + 894 + OFFSET_X, 1, 33.6 );
setRotateKey( spep_0 + 940 + OFFSET_X, 1, 33.6 );


--敵の動き5
setDisp( spep_0 + 992 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1174 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 992 + OFFSET_X, 1, 30, -10 , 0 );
setMoveKey( spep_0 + 993 + OFFSET_X, 1, 30, -10 , 0 );
setMoveKey( spep_0 + 994 + OFFSET_X, 1, 29.8, -10.1 , 0 );
setMoveKey( spep_0 + 995 + OFFSET_X, 1, 29.8, -10.1 , 0 );
setMoveKey( spep_0 + 996 + OFFSET_X, 1, 28.2, -7.6 , 0 );
setMoveKey( spep_0 + 997 + OFFSET_X, 1, 28.2, -7.6 , 0 );
setMoveKey( spep_0 + 998 + OFFSET_X, 1, 25.2, -8.4 , 0 );
setMoveKey( spep_0 + 999 + OFFSET_X, 1, 25.2, -8.4 , 0 );
setMoveKey( spep_0 + 1000 + OFFSET_X, 1, 29.5, -8.4 , 0 );
setMoveKey( spep_0 + 1001 + OFFSET_X, 1, 29.5, -8.4 , 0 );
setMoveKey( spep_0 + 1002 + OFFSET_X, 1, 28.1, -12.7 , 0 );
setMoveKey( spep_0 + 1003 + OFFSET_X, 1, 28.1, -12.7 , 0 );
setMoveKey( spep_0 + 1004 + OFFSET_X, 1, 27.4, -10.3 , 0 );
setMoveKey( spep_0 + 1005 + OFFSET_X, 1, 27.4, -10.3 , 0 );
setMoveKey( spep_0 + 1006 + OFFSET_X, 1, 29.3, -10.6 , 0 );
setMoveKey( spep_0 + 1007 + OFFSET_X, 1, 29.3, -10.6 , 0 );
setMoveKey( spep_0 + 1008 + OFFSET_X, 1, 32.4, -12.3 , 0 );
setMoveKey( spep_0 + 1009 + OFFSET_X, 1, 32.4, -12.3 , 0 );
setMoveKey( spep_0 + 1010 + OFFSET_X, 1, 31.4, -14 , 0 );
setMoveKey( spep_0 + 1011 + OFFSET_X, 1, 31.4, -14 , 0 );
setMoveKey( spep_0 + 1012 + OFFSET_X, 1, 33.4, -8.6 , 0 );
setMoveKey( spep_0 + 1013 + OFFSET_X, 1, 33.4, -8.6 , 0 );
setMoveKey( spep_0 + 1014 + OFFSET_X, 1, 32.6, -6.6 , 0 );
setMoveKey( spep_0 + 1015 + OFFSET_X, 1, 32.6, -6.6 , 0 );
setMoveKey( spep_0 + 1016 + OFFSET_X, 1, 30.3, -10.2 , 0 );
setMoveKey( spep_0 + 1017 + OFFSET_X, 1, 30.3, -10.2 , 0 );
setMoveKey( spep_0 + 1018 + OFFSET_X, 1, 28.6, -7.1 , 0 );
setMoveKey( spep_0 + 1019 + OFFSET_X, 1, 28.6, -7.1 , 0 );
setMoveKey( spep_0 + 1020 + OFFSET_X, 1, 28.7, -7.1 , 0 );
setMoveKey( spep_0 + 1021 + OFFSET_X, 1, 28.7, -7.1 , 0 );
setMoveKey( spep_0 + 1022 + OFFSET_X, 1, 28.7, -7 , 0 );
setMoveKey( spep_0 + 1023 + OFFSET_X, 1, 28.7, -7 , 0 );
setMoveKey( spep_0 + 1024 + OFFSET_X, 1, 29.1, -6.6 , 0 );
setMoveKey( spep_0 + 1025 + OFFSET_X, 1, 29.1, -6.6 , 0 );
setMoveKey( spep_0 + 1026 + OFFSET_X, 1, 30.2, -6.1 , 0 );
setMoveKey( spep_0 + 1027 + OFFSET_X, 1, 30.2, -6.1 , 0 );
setMoveKey( spep_0 + 1028 + OFFSET_X, 1, 27.8, -7.9 , 0 );
setMoveKey( spep_0 + 1029 + OFFSET_X, 1, 27.8, -7.9 , 0 );
setMoveKey( spep_0 + 1030 + OFFSET_X, 1, 26.7, -7.2 , 0 );
setMoveKey( spep_0 + 1031 + OFFSET_X, 1, 26.7, -7.2 , 0 );
setMoveKey( spep_0 + 1032 + OFFSET_X, 1, 26.2, -5.6 , 0 );
setMoveKey( spep_0 + 1033 + OFFSET_X, 1, 26.2, -5.6 , 0 );
setMoveKey( spep_0 + 1034 + OFFSET_X, 1, 27.9, -6.7 , 0 );
setMoveKey( spep_0 + 1035 + OFFSET_X, 1, 27.9, -6.7 , 0 );
setMoveKey( spep_0 + 1036 + OFFSET_X, 1, 28.9, -9 , 0 );
setMoveKey( spep_0 + 1037 + OFFSET_X, 1, 28.9, -9 , 0 );
setMoveKey( spep_0 + 1038 + OFFSET_X, 1, 27.5, -6.7 , 0 );
setMoveKey( spep_0 + 1039 + OFFSET_X, 1, 27.5, -6.7 , 0 );
setMoveKey( spep_0 + 1040 + OFFSET_X, 1, 29.3, -7.1 , 0 );
setMoveKey( spep_0 + 1041 + OFFSET_X, 1, 29.3, -7.1 , 0 );
setMoveKey( spep_0 + 1042 + OFFSET_X, 1, 27.6, -8.7 , 0 );
setMoveKey( spep_0 + 1043 + OFFSET_X, 1, 27.6, -8.7 , 0 );
setMoveKey( spep_0 + 1044 + OFFSET_X, 1, 28.8, -9.3 , 0 );
setMoveKey( spep_0 + 1045 + OFFSET_X, 1, 28.8, -9.3 , 0 );
setMoveKey( spep_0 + 1046 + OFFSET_X, 1, 30.2, -7.4 , 0 );
setMoveKey( spep_0 + 1047 + OFFSET_X, 1, 30.2, -7.4 , 0 );
setMoveKey( spep_0 + 1048 + OFFSET_X, 1, 25.8, -7.5 , 0 );
setMoveKey( spep_0 + 1049 + OFFSET_X, 1, 25.8, -7.5 , 0 );
setMoveKey( spep_0 + 1050 + OFFSET_X, 1, 28, -7.2 , 0 );
setMoveKey( spep_0 + 1051 + OFFSET_X, 1, 28, -7.2 , 0 );
setMoveKey( spep_0 + 1052 + OFFSET_X, 1, 29.1, -8.5 , 0 );
setMoveKey( spep_0 + 1053 + OFFSET_X, 1, 29.1, -8.5 , 0 );
setMoveKey( spep_0 + 1054 + OFFSET_X, 1, 28.3, -7.3 , 0 );
setMoveKey( spep_0 + 1055 + OFFSET_X, 1, 28.3, -7.3 , 0 );
setMoveKey( spep_0 + 1056 + OFFSET_X, 1, 29.3, -7.6 , 0 );
setMoveKey( spep_0 + 1057 + OFFSET_X, 1, 29.3, -7.6 , 0 );
setMoveKey( spep_0 + 1058 + OFFSET_X, 1, 28.5, -6 , 0 );
setMoveKey( spep_0 + 1059 + OFFSET_X, 1, 28.5, -6 , 0 );
setMoveKey( spep_0 + 1060 + OFFSET_X, 1, 29.7, -6.9 , 0 );
setMoveKey( spep_0 + 1069 + OFFSET_X, 1, 29.7, -6.9 , 0 );
setMoveKey( spep_0 + 1070 + OFFSET_X, 1, 29.6, -6.9 , 0 );
setMoveKey( spep_0 + 1083 + OFFSET_X, 1, 29.6, -6.9 , 0 );
setMoveKey( spep_0 + 1084 + OFFSET_X, 1, 29.5, -6.9 , 0 );
setMoveKey( spep_0 + 1097 + OFFSET_X, 1, 29.5, -6.9 , 0 );
setMoveKey( spep_0 + 1098 + OFFSET_X, 1, 29.4, -6.9 , 0 );
setMoveKey( spep_0 + 1109 + OFFSET_X, 1, 29.4, -6.9 , 0 );
setMoveKey( spep_0 + 1110 + OFFSET_X, 1, 29.3, -6.9 , 0 );
setMoveKey( spep_0 + 1123 + OFFSET_X, 1, 29.3, -6.9 , 0 );
setMoveKey( spep_0 + 1124 + OFFSET_X, 1, 29.2, -6.9 , 0 );
setMoveKey( spep_0 + 1135 + OFFSET_X, 1, 29.2, -6.9 , 0 );
setMoveKey( spep_0 + 1136 + OFFSET_X, 1, 29.1, -6.9 , 0 );
setMoveKey( spep_0 + 1149 + OFFSET_X, 1, 29.1, -6.9 , 0 );
setMoveKey( spep_0 + 1150 + OFFSET_X, 1, 29, -6.9 , 0 );
setMoveKey( spep_0 + 1159 + OFFSET_X, 1, 29, -6.9 , 0 );
setMoveKey( spep_0 + 1160 + OFFSET_X, 1, 29, -6.8 , 0 );
setMoveKey( spep_0 + 1161 + OFFSET_X, 1, 29, -6.8 , 0 );
setMoveKey( spep_0 + 1162 + OFFSET_X, 1, 28.9, -6.8 , 0 );
setMoveKey( spep_0 + 1174 + OFFSET_X, 1, 28.9, -6.8 , 0 );

setScaleKey( spep_0 + 992 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 1021 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_0 + 1022 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 1059 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 1060 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 1099 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 1100 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 1137 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 1138 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 1174 + OFFSET_X, 1, 0.5, 0.5 );

setRotateKey( spep_0 + 992 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_0 + 1174 + OFFSET_X, 1, 4.8 );


-- ** 音 ** --
--二人走ってくる
SE001 = playSeVer2( spep_0 + 2, 1250, "",spep_0 + 44, 4, 12, -1);
setStartTimeMs( SE001,  900 );
SE002 = playSeVer2( spep_0 + 44, 1250, "",spep_0 + 82, 4, 16, -1);
setStartTimeMs( SE002,  1483 );
SE003 = playSeVer2( spep_0 + 22, 1250, "",spep_0 + 64, 4, 10, -1);
setStartTimeMs( SE003,  917 );

--環境音
SE004 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 650, 0, 110, -1);

--セリフカットイン
SE005 = playSeVer2( spep_0 + 4, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE005, 63 );

--二人走ってくる
SE006 = playSeVer2( spep_0 + 6, 1111, "",spep_0 + 34, 0, 10, -1);
SE007 = playSeVer2( spep_0 + 62, 1250, "",spep_0 + 104, 6, 12, -1);
setStartTimeMs( SE007,  900 );
SE008 = playSeVer2( spep_0 + 40, 1111, "",spep_0 + 72, 4, 4, -1);
setStartTimeMs( SE008,  467 );
SE009 = playSeVer2( spep_0 + 26, 1111, "",spep_0 + 54, 0, 12, -1);
SE010 = playSeVer2( spep_0 + 82, 1250, "",spep_0 + 124, 6, 12, -1);
setStartTimeMs( SE010,  900 );
SE011 = playSeVer2( spep_0 + 98, 1250, "",spep_0 + 140, 6, 12, -1);
setStartTimeMs( SE011,  900 );
SE012 = playSeVer2( spep_0 + 114, 1250, "",spep_0 + 154, 4, 10, -1);
setStartTimeMs( SE012,  900 );
SE013 = playSeVer2( spep_0 + 66, 1111, "",spep_0 + 94, 0, 12, -1);
SE014 = playSeVer2( spep_0 + 130, 1250, "",spep_0 + 172, 6, 12, -1);
setStartTimeMs( SE014,  900 );
SE015 = playSeVer2( spep_0 + 84, 1111, "",spep_0 + 112, 0, 10, -1);
SE016 = playSeVer2( spep_0 + 118, 1111, "",spep_0 + 150, 4, 4, -1);
setStartTimeMs( SE016,  467 );
SE017 = playSeVer2( spep_0 + 104, 1111, "",spep_0 + 132, 0, 12, -1);
SE018 = playSeVer2( spep_0 + 144, 1111, "",spep_0 + 172, 0, 12, -1);

--敵迫ってくる
SE019 = playSeVer2( spep_0 + 154, 1175, "",spep_0 + 474, 0, 256, -1);
setSeVolumeByWorkId( spep_0 + 154, SE019, 53 );
SE020 = playSeVer2( spep_0 + 156, 63, "",spep_0 + 236, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 156, SE020, 68 );
SE021 = playSeVer2( spep_0 + 166, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 166, SE021, 65 );
SE022 = playSeVer2( spep_0 + 182, 1331, "", 0, 0, 0, -1);

--画面遷移
SE023 = playSeVer2( spep_0 + 234, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 234, SE023, 76 );

--銃構える
SE024 = playSeVer2( spep_0 + 380, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 380, SE024, 77 );
SE025 = playSeVer2( spep_0 + 404, 1003, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 434, 1189, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 440, 1389, "", 0, 0, 0, -1);

--二人銃撃つ
SE028 = playSeVer2( spep_0 + 468, 1191, "", 500, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 468, SE028, 177 );
SE029 = playSeVer2( spep_0 + 472, 1149, "",spep_0 + 538, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 472, SE029, 131 );
setPitch( spep_0 + 472, SE029, 1200 );
setTimeStretch( SE029, 1.8, 30, 4 );
SE030 = playSeVer2( spep_0 + 472, 1403, "",spep_0 + 538, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 472, SE030, 180 );
SE031 = playSeVer2( spep_0 + 496, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 496, SE031, 180 );
SE032 = playSeVer2( spep_0 + 500, 1016, "", 0, 0, 0, -1);


-- ** ボイス ** --
--「このままじゃブロリーはやられるぞ！」
playVoice( spep_0 + 2, 1074 );
setVoiceVolume( spep_0 + 2, 1074, 118 );

--「ブロリーを死なすわけにはいかないよ！」
playVoice( spep_0 + 234, 1075 );
setVoiceVolume( spep_0 + 234, 1075, 118 );

--「うおおおおっ！！！！」
playVoice( spep_0 + 572, 1076 );
setVoiceVolume( spep_0 + 572, 1076, 126 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 508; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE028, 0);
stopSe( SP_dodge - 12, SE029, 0);
stopSe( SP_dodge - 12, SE030, 0);
stopSe( SP_dodge - 12, SE031, 0);
stopSe( SP_dodge - 8, SE032, 0);
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
--敵ヒット
SE033 = playSeVer2( spep_0 + 514, 1023, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 522, 1024, "", 0, 0, 0, -1);

--ブロリー向かってくる
SE035 = playSeVer2( spep_0 + 574, 1183, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 574, 1182, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 584, 1277, "", 0, 0, 0, -1);

--敵つかむ
SE038 = playSeVer2( spep_0 + 636, 1012, "", 0, 0, 0, -1);

--投げ飛ばす
SE039 = playSeVer2( spep_0 + 674, 1027, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 674, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE041 = playSeVer2( spep_0 + 684, 1304, "",spep_0 + 820, 0, 72, -1);

--地面激突して引きづられる
SE042 = playSeVer2( spep_0 + 708, 1014, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 708, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 708, SE043, 72 );
SE044 = playSeVer2( spep_0 + 718, 1250, "",spep_0 + 906, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 718, SE044, 178 );
SE045 = playSeVer2( spep_0 + 718, 1044, "",spep_0 + 912, 0, 32, -1);

--飛んでくる
SE046 = playSeVer2( spep_0 + 778, 1116, "",spep_0 + 838, 0, 26, -1);

--叩きつける
SE047 = playSeVer2( spep_0 + 814, 1120, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_0 + 816, 1153, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_0 + 816, 1159, "", 0, 0, 0, -1);

--追い討ち１
SE050 = playSeVer2( spep_0 + 848, 1187, "",spep_0 + 902, 0, 26, -1);
SE051 = playSeVer2( spep_0 + 848, 1414, "", 0, 0, 0, -1);

--追い討ち２
SE052 = playSeVer2( spep_0 + 872, 1187, "",spep_0 + 978, 0, 78, -1);
SE053 = playSeVer2( spep_0 + 872, 1414, "", 0, 0, 0, -1);

--最後叩きつけ
SE054 = playSeVer2( spep_0 + 930, 1123, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_0 + 930, 1258, "",spep_0 + 1038, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 930, SE055, 66 );
SE056 = playSeVer2( spep_0 + 936, 1067, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_0 + 944, 1068, "", 0, 0, 0, -1);

--環境音
SE058 = playSeVer2( spep_0 + 980, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 980, SE058, 25 );

--ラスト雄叫びあげる
SE059 = playSeVer2( spep_0 + 1076, 1233, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_0 + 1080, 1179, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_0 + 1086, 1052, "", 0, 0, 0, -1);


--終わり
-- hideKoScreen();
dealDamage( spep_0 + 940);
endPhase( spep_0 + MAX_FRAME_0); --1172f

else end