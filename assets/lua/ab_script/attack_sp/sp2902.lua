--4031600:LR_超サイヤ人トランクス(幼年期)&超サイヤ人孫悟天(幼年期)+超サイヤ人孫悟飯(青年期)_必殺技：ビクトリーストライク
--sp_effect_b4_00390
--sp2902

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 163972; --開幕〜二人のフルーショットまで ef_001
SP_02  = 163973; --トランクスがカメラに向かって突進〜フィニッシュまで_前 ef_002
SP_02b = 163974; --トランクスがカメラに向かって突進〜フィニッシュまで_奥 ef_002b

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
        spep_1 = spep_0 + 96;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 210);  -- スキップ先フレーム指定
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --SE名
        --瞬間移動
        SE021 = playSeVer2( spep_2 + 213, 1109, "", 0, 0, 0, -1);
        SE022 = playSeVer2( spep_2 + 213, 1109, "", 0, 0, 0, -1);
    else

    end
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜二人のフルーショットまで
-------------------------------------------------
MAX_FRAME_0 = 96;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕〜二人のフルーショットまで(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

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


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 音 ** --
--二人向き合う
SE001 = playSeVer2( spep_0 + 8, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE001, 122 );
SE003 = playSeVer2( spep_0 + 2, 1307, "",spep_0 + 116, 0, 16, 0.5);
SE004 = playSeVer2( spep_0 + 22, 1434, "",spep_0 + 118, 0, 14, 0.5);
SE005 = playSeVer2( spep_0 + 22, 46, "",spep_0 + 116, 0, 14, 0.5);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 96f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--向かってくる
SE007 = playSeVer2( spep_1 + 82, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 82, 1117, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 88, 1019, "", 0, 0, 0, -1);


-------------------------------------------------
-- トランクスがカメラに向かって突進〜フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 414;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- トランクスがカメラに向かって突進〜フィニッシュまで_前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- トランクスがカメラに向かって突進〜フィニッシュまで_奥(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 130 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 190 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 130 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 162 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 130 + OFFSET_X, 1, 106.8, 62.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 106.8, 62.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 110.9, 58.7 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 110.9, 58.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 114.6, 55 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 114.6, 55 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 118.1, 51.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 118.1, 51.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 121.2, 48.6 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 121.2, 48.6 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 124.1, 45.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 124.1, 45.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 126.6, 43.2 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 126.6, 43.2 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 128.5, 41.4 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 128.5, 41.4 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 130.1, 39.7 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 130.1, 39.7 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 131.6, 38.3 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 131.6, 38.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 132.8, 37 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 132.8, 37 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 133.9, 35.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 133.9, 35.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 134.8, 35 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 134.8, 35 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 135.5, 34.3 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 135.5, 34.3 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 136, 33.8 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 136, 33.8 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 136.3, 33.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 136.3, 33.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 150.5, 22.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 150.5, 22.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 200.8, 28.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 200.8, 28.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 185.6, 33.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 185.6, 33.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 132.5, 26.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 132.5, 26.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 185.6, 27.6 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 185.6, 27.6 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 130.5, 18.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 130.5, 18.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 150.5, 28.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 150.5, 28.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 132.5, 26.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 132.5, 26.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 150.5, 22.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 150.5, 22.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 130.5, 18.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 130.5, 18.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 241.8, 17.1 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 241.8, 17.1 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 343.1, 13.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 343.1, 13.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 444.5, 10.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 444.5, 10.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 545.8, 6.7 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 545.8, 6.7 , 0 );

setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.3, 1.3 );

setRotateKey( spep_2 + 130 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 99.1 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 99.1 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 94.5 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 94.5 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 89.8 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 89.8 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 85.1 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 85.1 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 80.4 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 80.4 );


--敵の動き2
setDisp( spep_2 + 210 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 290 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 210 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 274 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 210 + OFFSET_X, 1, 19.9, 24.5 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 19.9, 24.5 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 20, 24.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 20, 24.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 20, 24.6 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 20, 24.6 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 20.1, 24.6 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 20.1, 24.6 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 20.2, 24.7 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 20.2, 24.7 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 20.3, 24.8 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 20.3, 24.8 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 20.4, 24.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 20.4, 24.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 20.5, 25.1 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 20.5, 25.1 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 20.6, 25.2 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 20.6, 25.2 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 20.8, 25.4 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 20.8, 25.4 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 21, 25.6 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 21, 25.6 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 21.2, 25.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 21.2, 25.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 21.3, 25.9 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 21.3, 25.9 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 21.8, 26.3 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 21.8, 26.3 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 22.4, 26.9 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 22.4, 26.9 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 23, 27.5 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 23, 27.5 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 23.7, 28.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 23.7, 28.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 24.5, 29 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 24.5, 29 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 25.2, 30.3 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 25.2, 30.3 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 27.8, 33.1 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 27.8, 33.1 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 30.9, 36.5 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 30.9, 36.5 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 34.6, 40.4 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 34.6, 40.4 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 39.1, 45.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 39.1, 45.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 27.4, -56.3 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 27.4, -56.3 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 32.7, -47.5 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 32.7, -47.5 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 37.2, -40.1 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 37.2, -40.1 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 40.8, -34 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 40.8, -34 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 43.7, -29.3 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 43.7, -29.3 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 45.7, -25.9 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 45.7, -25.9 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 47, -23.9 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 47, -23.9 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 47.4, -23.3 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 47.4, -23.3 , 0 );

setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.16, 0.16 );

setRotateKey( spep_2 + 210 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, 27.7 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, 27.7 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, 23.5 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, 23.5 );


-- ** 音 ** --
--トランクスそれる
SE010 = playSeVer2( spep_2 + 36, 1003, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 36, 1277, "", 0, 0, 0, -1);

--向かってくる
SE012 = playSeVer2( spep_2 + 50, 1019, "", 0, 0, 0, -1);

--悟天向かってくる
SE013 = playSeVer2( spep_2 + 54, 1004, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 54, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE014, 46 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 74; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
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
--悟天パンチ
SE015 = playSeVer2( spep_2 + 104, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 104, 1000, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 110, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE018 = playSeVer2( spep_2 + 118, 1109, "", 0, 0, 0, -1);

--トランクスキック
SE019 = playSeVer2( spep_2 + 142, 1003, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 150, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 150, SE020, 75 );

--瞬間移動
SE021 = playSeVer2( spep_2 + 184, 1109, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 202, 1109, "", 0, 0, 0, -1);

--二人で蹴り飛ばす
SE023 = playSeVer2( spep_2 + 236, 1004, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 246, 1120, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 246, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 246, SE025, 77 );

--爆発
SE026 = playSeVer2( spep_2 + 278, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 290); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 414f -4f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜二人のフルーショットまで
-------------------------------------------------
MAX_FRAME_0 = 96;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕〜二人のフルーショットまで(ef_001)
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

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


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 音 ** --
--二人向き合う
SE001 = playSeVer2( spep_0 + 8, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE001, 122 );
SE003 = playSeVer2( spep_0 + 2, 1307, "",spep_0 + 116, 0, 16, 0.5);
SE004 = playSeVer2( spep_0 + 22, 1434, "",spep_0 + 118, 0, 14, 0.5);
SE005 = playSeVer2( spep_0 + 22, 46, "",spep_0 + 116, 0, 14, 0.5);


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 96f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--向かってくる
SE007 = playSeVer2( spep_1 + 82, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_1 + 82, 1117, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 88, 1019, "", 0, 0, 0, -1);


-------------------------------------------------
-- トランクスがカメラに向かって突進〜フィニッシュまで
-------------------------------------------------
MAX_FRAME_2 = 414;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- トランクスがカメラに向かって突進〜フィニッシュまで_前(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- トランクスがカメラに向かって突進〜フィニッシュまで_奥(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 130 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 190 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 130 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 162 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 130 + OFFSET_X, 1, -106.8, 62.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -106.8, 62.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -110.9, 58.7 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -110.9, 58.7 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -114.6, 55 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -114.6, 55 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -118.1, 51.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -118.1, 51.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -121.2, 48.6 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -121.2, 48.6 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -124.1, 45.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -124.1, 45.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -126.6, 43.2 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -126.6, 43.2 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -128.5, 41.4 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -128.5, 41.4 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -130.1, 39.7 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -130.1, 39.7 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -131.6, 38.3 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -131.6, 38.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -132.8, 37 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -132.8, 37 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -133.9, 35.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -133.9, 35.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -134.8, 35 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -134.8, 35 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -135.5, 34.3 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -135.5, 34.3 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -136, 33.8 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -136, 33.8 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -136.3, 33.5 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -136.3, 33.5 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -150.5, 22.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -150.5, 22.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -200.8, 28.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -200.8, 28.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -185.6, 33.6 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -185.6, 33.6 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -132.5, 26.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -132.5, 26.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -185.6, 27.6 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -185.6, 27.6 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -130.5, 18.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -130.5, 18.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -150.5, 28.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -150.5, 28.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -132.5, 26.5 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -132.5, 26.5 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -150.5, 22.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -150.5, 22.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -130.5, 18.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -130.5, 18.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -241.8, 17.1 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -241.8, 17.1 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -343.1, 13.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -343.1, 13.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -444.5, 10.2 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -444.5, 10.2 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -545.8, 6.7 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -545.8, 6.7 , 0 );

setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 1.61, 1.61 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 1.3, 1.3 );

setRotateKey( spep_2 + 130 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -99.1 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -99.1 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -94.5 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -94.5 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -89.8 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -89.8 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -85.1 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -85.1 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -80.4 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -80.4 );


--敵の動き2
setDisp( spep_2 + 210 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 290 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 210 + OFFSET_X, 1, 7 );
changeAnime( spep_2 + 274 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 210 + OFFSET_X, 1, -19.9, 24.5 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -19.9, 24.5 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -20, 24.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -20, 24.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -20, 24.6 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -20, 24.6 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -20.1, 24.6 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -20.1, 24.6 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -20.2, 24.7 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -20.2, 24.7 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -20.3, 24.8 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -20.3, 24.8 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -20.4, 24.9 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -20.4, 24.9 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -20.5, 25.1 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -20.5, 25.1 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -20.6, 25.2 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -20.6, 25.2 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -20.8, 25.4 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -20.8, 25.4 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -21, 25.6 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -21, 25.6 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -21.2, 25.8 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -21.2, 25.8 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -21.3, 25.9 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -21.3, 25.9 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -21.8, 26.3 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -21.8, 26.3 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -22.4, 26.9 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -22.4, 26.9 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -23, 27.5 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -23, 27.5 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -23.7, 28.2 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -23.7, 28.2 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -24.5, 29 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -24.5, 29 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -25.2, 30.3 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -25.2, 30.3 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -27.8, 33.1 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -27.8, 33.1 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -30.9, 36.5 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -30.9, 36.5 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -34.6, 40.4 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -34.6, 40.4 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -39.1, 45.1 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -39.1, 45.1 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -27.4, -56.3 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -27.4, -56.3 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -32.7, -47.5 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -32.7, -47.5 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -37.2, -40.1 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -37.2, -40.1 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -40.8, -34 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -40.8, -34 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -43.7, -29.3 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -43.7, -29.3 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -45.7, -25.9 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -45.7, -25.9 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -47, -23.9 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -47, -23.9 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -47.4, -23.3 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -47.4, -23.3 , 0 );

setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 0.99, 0.99 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.16, 0.16 );

setRotateKey( spep_2 + 210 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -27.7 );
setRotateKey( spep_2 + 251 + OFFSET_X, 1, -27.7 );
setRotateKey( spep_2 + 252 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_2 + 273 + OFFSET_X, 1, -27.6 );
setRotateKey( spep_2 + 274 + OFFSET_X, 1, -23.5 );
setRotateKey( spep_2 + 290 + OFFSET_X, 1, -23.5 );


-- ** 音 ** --
--トランクスそれる
SE010 = playSeVer2( spep_2 + 36, 1003, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 36, 1277, "", 0, 0, 0, -1);

--向かってくる
SE012 = playSeVer2( spep_2 + 50, 1019, "", 0, 0, 0, -1);

--悟天向かってくる
SE013 = playSeVer2( spep_2 + 54, 1004, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 54, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 54, SE014, 46 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 74; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
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
--悟天パンチ
SE015 = playSeVer2( spep_2 + 104, 1009, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 104, 1000, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 110, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE018 = playSeVer2( spep_2 + 118, 1109, "", 0, 0, 0, -1);

--トランクスキック
SE019 = playSeVer2( spep_2 + 142, 1003, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 150, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 150, SE020, 75 );

--瞬間移動
SE021 = playSeVer2( spep_2 + 184, 1109, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 202, 1109, "", 0, 0, 0, -1);

--二人で蹴り飛ばす
SE023 = playSeVer2( spep_2 + 236, 1004, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 246, 1120, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 246, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 246, SE025, 77 );

--爆発
SE026 = playSeVer2( spep_2 + 278, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 290); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 414f -4f

end