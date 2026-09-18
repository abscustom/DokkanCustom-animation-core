--4030440:LR_超サイヤ人ベジータ(天使)+超サイヤ人孫悟空_必殺技：ビッグ・バン・アタック
--sp_effect_a1_00467
--sp2808

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163459;  -- 登場～ベジータの顔アップ ef_001
--SP_01b = 163460;  -- 登場～ベジータの顔アップef_001b
SP_02 = 163463;  -- 気弾を撃つ～フィニッシュ ef_002
--SP_02b = 163464;  -- 気弾を撃つ～フィニッシュ ef_002b

--エフェクト(敵)
--SP_01r = 163461;  -- 登場～ベジータの顔アップef_001r
--SP_01br = 163462;  -- 登場～ベジータの顔アップef_001br
--SP_02r = 163465;  -- 気弾を撃つ～フィニッシュ ef_002r
--SP_02br = 163466;  -- 気弾を撃つ～フィニッシュ ef_002br


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[
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
]]

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;
if (_IS_PLAYER_SIDE_ == 1) then

   if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 160;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 172 );  -- スキップ先フレーム指定
        setupMovie(spep_2 + 172 , SP_01, spep_2 + 172 -1 + 2, 1);

        -- ** 音 ** --
        -- 再生させるSEを追加してください。
        --気弾発射
        SE017 = playSeVer2( spep_2 + 175, 1146, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 175, SE017, 79 );
        SE019 = playSeVer2( spep_2 + 175, 1423, "",spep_2 + 322, 0, 28, -1);

    else
        setupMovie(0, SP_01, 0, 1);
    end

-------------------------------------------------
-- 登場～ベジータの顔アップ
-------------------------------------------------
MAX_FRAME_0 = 160;

--setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場～ベジータの顔アップ(ef_001)
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
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

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

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 102 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 195.7, -83.9 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X , 1, 195.7, -83.9 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X , 1, 195.7, -83.9 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X , 1, 195.7, -83.9 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X , 1, 195.7, -83.9 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X , 1, 195.7, -83.9 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X , 1, 195.7, -83.9 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X , 1, 195.7, -83.9 , 0 );

setScaleKey( spep_0 + 0, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 2 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_0 + 3 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_0 + 4 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_0 + 5 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_0 + 6 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_0 + 7 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_0 + 102 + OFFSET_X , 1, 0.75, 0.75 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 102 + OFFSET_X , 1, 0 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 180, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--踏み出す
SE003 = playSeVer2( spep_0 + 28, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 28, SE003, 91 );
SE004 = playSeVer2( spep_0 + 34, 1347, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE004, 75 );

--画面遷移
SE005 = playSeVer2( spep_0 + 92, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE005, 82 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --160F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--腕前に出す
SE007 = playSeVer2( spep_1 + 88, 1189, "", 0, 0, 0, -1);

-------------------------------------------------
-- 気弾を撃つ～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 412;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾を撃つ～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

--finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気弾を撃つ～フィニッシュ(ef_002b)
--setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
--setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
--setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
--setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
--setEffRotateKey( spep_2 + 0, finish_b, 0);
--setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
--setEffAlphaKey( spep_2 + 0, finish_b, 255);
--setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 156 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 288 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 156 + OFFSET_X , 1, 117 );
changeAnime( spep_2 + 216 + OFFSET_X , 1, 108 );

setMoveKey( spep_2 + 156 + OFFSET_X , 1, 312.8, -1.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X , 1, 312.8, -1.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X , 1, 312.4, -1.4 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X , 1, 312.4, -1.4 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X , 1, 311.2, -1.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X , 1, 311.2, -1.4 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X , 1, 308.8, -1.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X , 1, 308.8, -1.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X , 1, 304.8, -1.4 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X , 1, 304.8, -1.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X , 1, 298.9, -1.4 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X , 1, 298.9, -1.4 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X , 1, 290.8, -1.4 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X , 1, 290.8, -1.4 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X , 1, 279.7, 0 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X , 1, 279.7, 0 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X , 1, 274, -2.6 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X , 1, 274, -2.6 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X , 1, 249.8, -0.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X , 1, 249.8, -0.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X , 1, 234.4, -0.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X , 1, 234.4, -0.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X , 1, 209.2, 0.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X , 1, 209.2, 0.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X , 1, 194.4, -1 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X , 1, 194.4, -1 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X , 1, 176.4, -3.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X , 1, 176.4, -3.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X , 1, 168.6, -0.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X , 1, 168.6, -0.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X , 1, 154.9, -2.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X , 1, 154.9, -2.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X , 1, 152.1, 0.4 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X , 1, 152.1, 0.4 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X , 1, 142.4, -4.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X , 1, 142.4, -4.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X , 1, 136.4, 0.3 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X , 1, 136.4, 0.3 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X , 1, 135.3, -2.2 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X , 1, 135.3, -2.2 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X , 1, 129.1, 1.9 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X , 1, 129.1, 1.9 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X , 1, 130.5, -2.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X , 1, 130.5, -2.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X , 1, 124.2, 0.7 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X , 1, 124.2, 0.7 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X , 1, 126.2, -3.7 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X , 1, 126.2, -3.7 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X , 1, 122.2, 0.7 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X , 1, 122.2, 0.7 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X , 1, 125.3, -3.9 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X , 1, 125.3, -3.9 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X , 1, 123.1, 0.4 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X , 1, 123.1, 0.4 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X , 1, 125.3, -3.8 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X , 1, 125.3, -3.8 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X , 1, 125.4, -2.6 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X , 1, 125.4, -2.6 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X , 1, 125.5, -1.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X , 1, 125.5, -1.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X , 1, 61.7, -1.9 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X , 1, 61.7, -1.9 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X , 1, 66.1, -18.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X , 1, 66.1, -18.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X , 1, 66.5, 0 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X , 1, 66.5, 0 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X , 1, 68.7, -14.1 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X , 1, 68.7, -14.1 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X , 1, 61, -6 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X , 1, 61, -6 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X , 1, 71.3, -12 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X , 1, 71.3, -12 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X , 1, 77.4, -10 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X , 1, 77.4, -10 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X , 1, 81.4, -4 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X , 1, 81.4, -4 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X , 1, 77.2, -14.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X , 1, 77.2, -14.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X , 1, 69.2, -6.1 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X , 1, 69.2, -6.1 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X , 1, 77.2, -14.1 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X , 1, 77.2, -14.1 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X , 1, 79.1, -8.1 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X , 1, 79.1, -8.1 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X , 1, 84.9, -6.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X , 1, 84.9, -6.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X , 1, 88.5, -12.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X , 1, 88.5, -12.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X , 1, 86, -2.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X , 1, 86, -2.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X , 1, 81.5, -14.4 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X , 1, 81.5, -14.4 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X , 1, 61.2, -2.4 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X , 1, 61.2, -2.4 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X , 1, 80.1, -15 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X , 1, 80.1, -15 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X , 1, 85.7, -5.1 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X , 1, 85.7, -5.1 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X , 1, 77.2, -5.3 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X , 1, 77.2, -5.3 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X , 1, 86.4, -3.7 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X , 1, 86.4, -3.7 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X , 1, 87.6, 4 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X , 1, 87.6, 4 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X , 1, 88.6, -0.8 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X , 1, 88.6, -0.8 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X , 1, 87.6, -7.3 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X , 1, 87.6, -7.3 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X , 1, 84.6, -6.5 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X , 1, 84.6, -6.5 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X , 1, 87.5, -1.7 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X , 1, 87.5, -1.7 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X , 1, 88.8, 3 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X , 1, 88.8, 3 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X , 1, 86.4, -2.7 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X , 1, 86.4, -2.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X , 1, 84.4, 6 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X , 1, 84.4, 6 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X , 1, 76.2, -9.8 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X , 1, 76.2, -9.8 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X , 1, 67.3, -9.7 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X , 1, 67.3, -9.7 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X , 1, 88.2, -1.7 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X , 1, 88.2, -1.7 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X , 1, 49.5, 3 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X , 1, 49.5, 3 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X , 1, 86.9, -18.6 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X , 1, 86.9, -18.6 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X , 1, 84.9, -8 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X , 1, 84.9, -8 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X , 1, 76.5, -9.8 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X , 1, 76.5, -9.8 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X , 1, 67.6, -9.7 , 0 );

setScaleKey( spep_2 + 156 + OFFSET_X , 1, 0.45, 0.45 );
setScaleKey( spep_2 + 215 + OFFSET_X , 1, 0.45, 0.45 );
setScaleKey( spep_2 + 216 + OFFSET_X , 1, 2, 2 );
setScaleKey( spep_2 + 288 + OFFSET_X , 1, 2, 2 );

setRotateKey( spep_2 + 156 + OFFSET_X , 1, -15 );
setRotateKey( spep_2 + 288 + OFFSET_X , 1, -15 );

setBlendColor( spep_2 + 216 + OFFSET_X , 1, 3, 0.278, 0.121, 0, 0.95 );
setBlendColor( spep_2 + 288 + OFFSET_X , 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--気ダメ
SE008 = playSeVer2( spep_2 + 10, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE008, 127 );

--腕前に出す
SE009 = playSeVer2( spep_2 + 12, 1003, "", 0, 0, 0, -1);

--気ダメ
SE010 = playSeVer2( spep_2 + 12, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE010, 71 );
SE011 = playSeVer2( spep_2 + 26, 1282, "",spep_2 + 110, 0, 56, -1);
setSeVolumeByWorkId( spep_2 + 26, SE011, 68 );

--オーラ
SE012 = playSeVer2( spep_2 + 26, 1036, "", 0, 0, 0, -1);

--気弾発射
SE013 = playSeVer2( spep_2 + 116, 1326, "",spep_2 + 324, 20, 30, -1);
setSeVolumeByWorkId( spep_2 + 116, SE013, 164 );
setStartTimeMs( SE013,  1400 );

--オーラ
SE014 = playSeVer2( spep_2 + 50, 1036, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 74, 1036, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 98, 1036, "", 0, 0, 0, -1);

--気弾発射
SE017 = playSeVer2( spep_2 + 116, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 116, SE017, 79 );
SE018 = playSeVer2( spep_2 + 116, 1133, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 116, 1423, "",spep_2 + 322, 0, 28, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 180; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
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

--気弾敵ヒット
SE020 = playSeVer2( spep_2 + 194, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 194, SE020, 67 );

--気弾飛んでいく
SE021 = playSeVer2( spep_2 + 258, 1202, "",spep_2 + 318, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 258, SE021, 251 );

--爆発
SE022 = playSeVer2( spep_2 + 294, 1159, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 302, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 292); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 - 2); -- 412F

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------
spep_0 = 0;

-------------------------------------------------
-- 登場～ベジータの顔アップ
-------------------------------------------------
MAX_FRAME_0 = 160;

setupMovie(0, SP_01, 0, 1);

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 登場～ベジータの顔アップ(ef_001)
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
spep_x = spep_0 + 4;

-- -- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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

-- --顔カットイン
-- SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 102 + OFFSET_X , 1, 0 );

changeAnime( spep_0 + 0, 1, 17 );

setMoveKey( spep_0 + 0, 1, -195.7, -83.9 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X , 1, -195.7, -83.9 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X , 1, -195.7, -83.9 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X , 1, -195.7, -83.9 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X , 1, -195.7, -83.9 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X , 1, -195.7, -83.9 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X , 1, -195.7, -83.9 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X , 1, -195.7, -83.9 , 0 );

setScaleKey( spep_0 + 0, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 2 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_0 + 3 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_0 + 4 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_0 + 5 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_0 + 6 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_0 + 7 + OFFSET_X , 1, 0.75, 0.75 );
setScaleKey( spep_0 + 102 + OFFSET_X , 1, 0.75, 0.75 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X , 1, 0 );
setRotateKey( spep_0 + 102 + OFFSET_X , 1, 0 );

-- ** 音 ** --

--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 180, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--踏み出す
SE003 = playSeVer2( spep_0 + 28, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 28, SE003, 91 );
SE004 = playSeVer2( spep_0 + 34, 1347, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE004, 75 );

--画面遷移
SE005 = playSeVer2( spep_0 + 92, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE005, 82 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; --160F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --

--腕前に出す
SE007 = playSeVer2( spep_1 + 88, 1189, "", 0, 0, 0, -1);

-------------------------------------------------
-- 気弾を撃つ～フィニッシュ
-------------------------------------------------
MAX_FRAME_2 = 412;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾を撃つ～フィニッシュ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

--finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気弾を撃つ～フィニッシュ(ef_002b)
--setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
--setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
--setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
--setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
--setEffRotateKey( spep_2 + 0, finish_b, 0);
--setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
--setEffAlphaKey( spep_2 + 0, finish_b, 255);
--setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --

setDisp( spep_2 + 156 + OFFSET_X , 1, 1 );
setDisp( spep_2 + 288 + OFFSET_X , 1, 0 );

changeAnime( spep_2 + 156 + OFFSET_X , 1, 17 );
changeAnime( spep_2 + 216 + OFFSET_X , 1, 8 );

setMoveKey( spep_2 + 156 + OFFSET_X , 1, -312.8, -1.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X , 1, -312.8, -1.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X , 1, -312.4, -1.4 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X , 1, -312.4, -1.4 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X , 1, -311.2, -1.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X , 1, -311.2, -1.4 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X , 1, -308.8, -1.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X , 1, -308.8, -1.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X , 1, -304.8, -1.4 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X , 1, -304.8, -1.4 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X , 1, -298.9, -1.4 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X , 1, -298.9, -1.4 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X , 1, -290.8, -1.4 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X , 1, -290.8, -1.4 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X , 1, -279.7, 0 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X , 1, -279.7, 0 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X , 1, -274, -2.6 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X , 1, -274, -2.6 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X , 1, -249.8, -0.2 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X , 1, -249.8, -0.2 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X , 1, -234.4, -0.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X , 1, -234.4, -0.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X , 1, -209.2, 0.4 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X , 1, -209.2, 0.4 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X , 1, -194.4, -1 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X , 1, -194.4, -1 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X , 1, -176.4, -3.2 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X , 1, -176.4, -3.2 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X , 1, -168.6, -0.2 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X , 1, -168.6, -0.2 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X , 1, -154.9, -2.6 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X , 1, -154.9, -2.6 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X , 1, -152.1, 0.4 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X , 1, -152.1, 0.4 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X , 1, -142.4, -4.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X , 1, -142.4, -4.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X , 1, -136.4, 0.3 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X , 1, -136.4, 0.3 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X , 1, -135.3, -2.2 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X , 1, -135.3, -2.2 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X , 1, -129.1, 1.9 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X , 1, -129.1, 1.9 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X , 1, -130.5, -2.9 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X , 1, -130.5, -2.9 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X , 1, -124.2, 0.7 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X , 1, -124.2, 0.7 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X , 1, -126.2, -3.7 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X , 1, -126.2, -3.7 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X , 1, -122.2, 0.7 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X , 1, -122.2, 0.7 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X , 1, -125.3, -3.9 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X , 1, -125.3, -3.9 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X , 1, -123.1, 0.4 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X , 1, -123.1, 0.4 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X , 1, -125.3, -3.8 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X , 1, -125.3, -3.8 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X , 1, -125.4, -2.6 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X , 1, -125.4, -2.6 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X , 1, -125.5, -1.4 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X , 1, -125.5, -1.4 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X , 1, -61.7, -1.9 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X , 1, -61.7, -1.9 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X , 1, -66.1, -18.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X , 1, -66.1, -18.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X , 1, -66.5, 0 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X , 1, -66.5, 0 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X , 1, -68.7, -14.1 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X , 1, -68.7, -14.1 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X , 1, -61, -6 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X , 1, -61, -6 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X , 1, -71.3, -12 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X , 1, -71.3, -12 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X , 1, -77.4, -10 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X , 1, -77.4, -10 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X , 1, -81.4, -4 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X , 1, -81.4, -4 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X , 1, -77.2, -14.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X , 1, -77.2, -14.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X , 1, -69.2, -6.1 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X , 1, -69.2, -6.1 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X , 1, -77.2, -14.1 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X , 1, -77.2, -14.1 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X , 1, -79.1, -8.1 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X , 1, -79.1, -8.1 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X , 1, -84.9, -6.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X , 1, -84.9, -6.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X , 1, -88.5, -12.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X , 1, -88.5, -12.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X , 1, -86, -2.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X , 1, -86, -2.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X , 1, -81.5, -14.4 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X , 1, -81.5, -14.4 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X , 1, -61.2, -2.4 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X , 1, -61.2, -2.4 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X , 1, -80.1, -15 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X , 1, -80.1, -15 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X , 1, -85.7, -5.1 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X , 1, -85.7, -5.1 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X , 1, -77.2, -5.3 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X , 1, -77.2, -5.3 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X , 1, -86.4, -3.7 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X , 1, -86.4, -3.7 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X , 1, -87.6, 4 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X , 1, -87.6, 4 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X , 1, -88.6, -0.8 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X , 1, -88.6, -0.8 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X , 1, -87.6, -7.3 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X , 1, -87.6, -7.3 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X , 1, -84.6, -6.5 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X , 1, -84.6, -6.5 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X , 1, -87.5, -1.7 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X , 1, -87.5, -1.7 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X , 1, -88.8, 3 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X , 1, -88.8, 3 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X , 1, -86.4, -2.7 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X , 1, -86.4, -2.7 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X , 1, -84.4, 6 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X , 1, -84.4, 6 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X , 1, -76.2, -9.8 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X , 1, -76.2, -9.8 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X , 1, -67.3, -9.7 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X , 1, -67.3, -9.7 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X , 1, -88.2, -1.7 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X , 1, -88.2, -1.7 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X , 1, -49.5, 3 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X , 1, -49.5, 3 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X , 1, -86.9, -18.6 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X , 1, -86.9, -18.6 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X , 1, -84.9, -8 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X , 1, -84.9, -8 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X , 1, -76.5, -9.8 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X , 1, -76.5, -9.8 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X , 1, -67.6, -9.7 , 0 );

setScaleKey( spep_2 + 156 + OFFSET_X , 1, 0.45, 0.45 );
setScaleKey( spep_2 + 215 + OFFSET_X , 1, 0.45, 0.45 );
setScaleKey( spep_2 + 216 + OFFSET_X , 1, 2, 2 );
setScaleKey( spep_2 + 288 + OFFSET_X , 1, 2, 2 );

setRotateKey( spep_2 + 156 + OFFSET_X , 1, 15 );
setRotateKey( spep_2 + 288 + OFFSET_X , 1, 15 );

setBlendColor( spep_2 + 216 + OFFSET_X , 1, 3, 0.278, 0.121, 0, 0.95 );
setBlendColor( spep_2 + 288 + OFFSET_X , 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --

--気ダメ
SE008 = playSeVer2( spep_2 + 10, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10, SE008, 127 );

--腕前に出す
SE009 = playSeVer2( spep_2 + 12, 1003, "", 0, 0, 0, -1);

--気ダメ
SE010 = playSeVer2( spep_2 + 12, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE010, 71 );
SE011 = playSeVer2( spep_2 + 26, 1282, "",spep_2 + 110, 0, 56, -1);
setSeVolumeByWorkId( spep_2 + 26, SE011, 68 );

--オーラ
SE012 = playSeVer2( spep_2 + 26, 1036, "", 0, 0, 0, -1);

--気弾発射
SE013 = playSeVer2( spep_2 + 116, 1326, "",spep_2 + 324, 20, 30, -1);
setSeVolumeByWorkId( spep_2 + 116, SE013, 164 );
setStartTimeMs( SE013,  1400 );

--オーラ
SE014 = playSeVer2( spep_2 + 50, 1036, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 74, 1036, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 98, 1036, "", 0, 0, 0, -1);

--気弾発射
SE017 = playSeVer2( spep_2 + 116, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 116, SE017, 79 );
SE018 = playSeVer2( spep_2 + 116, 1133, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 116, 1423, "",spep_2 + 322, 0, 28, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 180; --エンドフェイズのフレーム数を置き換える
    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
    stopSe( SP_dodge - 12, SE015, 0);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE019, 0);
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

--気弾敵ヒット
SE020 = playSeVer2( spep_2 + 194, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 194, SE020, 67 );

--気弾飛んでいく
SE021 = playSeVer2( spep_2 + 258, 1202, "",spep_2 + 318, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 258, SE021, 251 );

--爆発
SE022 = playSeVer2( spep_2 + 294, 1159, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 302, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 292); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 - 2); -- 412F
end