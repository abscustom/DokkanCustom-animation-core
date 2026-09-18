--1027650:UR_人造人間21号(通常)_必殺技：エクセレントフルコース
--sp_effect_a2_00233
--sp2645

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 162461; --ef_001   構え〜オーラ溜め 敵前面
SP_01b = 162462; --ef_001_b  構え〜オーラ溜め 敵背面
SP_02  = 162463; --ef_002   突進〜フィニッシュ 敵前面
SP_02b = 162464; --ef_002_b  突進〜フィニッシュ 敵背面

--エフェクト(敵)
SP_01r  = 162465; --ef_001_r     敵側　構え〜オーラ溜め 敵前面
SP_01br = 162466; --ef_001_b_r   敵側　構え〜オーラ溜め 敵背面
SP_02r  = 162467; --ef_002_r     敵側　突進〜フィニッシュ 敵前面
SP_02br = 162468; --ef_002_b_r   敵側　突進〜フィニッシュ 敵背面


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

ENABLE_AUTO_TIME_STRETCH(0.75);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;
        spep_1 = spep_0 + 416;
        spep_2 = spep_1 + 94;

        timing_skip = 328;

        skipFrame(0, spep_2 + timing_skip );  -- スキップ先フレーム指定

        -- ** 音 ** --
        --気弾溜め
        SE058 = playSeVer2( spep_2 + 328 + 3, 1282, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 328 + 3, SE058, 71 );
        SE059 = playSeVer2( spep_2 + 328 + 3, 1296, "",spep_2 + 476, 0, 44, -1);
        setSeVolumeByWorkId( spep_2 + 328 + 3, SE059, 105 );
        SE060 = playSeVer2( spep_2 + 328 + 3, 1345, "",spep_2 + 476, 0, 50, -1);
        setSeVolumeByWorkId( spep_2 + 328 + 3, SE060, 191 );
        setPitch( spep_2 + 328 + 3, SE060, -500 );
        setTimeStretch( SE060, 0.67, 30, 4 );

    end

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 構え〜オーラ溜め
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_0 = 416;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001   構え〜オーラ溜め 敵前面
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001_b  構え〜オーラ溜め 敵背面
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
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -105, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_0 + 88 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 122 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 88 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 88 + OFFSET_X, 1, 1335.5, 132.5 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 1335.5, 132.5 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 1325.1, 131.2 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 1325.1, 131.2 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 1302.9, 128.4 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 1302.9, 128.4 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 1267.1, 123.8 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 1267.1, 123.8 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 1214.8, 117.2 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 1214.8, 117.2 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 1142.9, 108 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 1142.9, 108 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 1047, 95.8 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 1047, 95.8 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 922.2, 80 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 922.2, 80 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 765.7, 60.1 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 765.7, 60.1 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 586.4, 37.2 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 586.4, 37.2 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 427, 17 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 427, 17 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 354.1, 7.9 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 354.1, 7.9 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 346.1, 7.9 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 346.1, 7.9 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 338.2, 7.9 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 338.2, 7.9 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 330.2, 7.8 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 330.2, 7.8 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 322.2, 7.8 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 322.2, 7.8 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 474.4, 15.8 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 474.4, 15.8 , 0 );

setScaleKey( spep_0 + 88 + OFFSET_X, 1, 10.85, 10.85 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 10.85, 10.85 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 10.76, 10.76 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 10.76, 10.76 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 10.58, 10.58 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 10.58, 10.58 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 10.28, 10.28 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 10.28, 10.28 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 9.85, 9.85 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 9.85, 9.85 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 9.25, 9.25 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 9.25, 9.25 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 8.46, 8.46 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 8.46, 8.46 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 7.42, 7.42 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 7.42, 7.42 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 6.13, 6.13 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 6.13, 6.13 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 113 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 114 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 3.42, 3.42 );

setRotateKey( spep_0 + 88 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, 0 );

--敵の動き２
setDisp( spep_0 + 172 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 300 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 172 + OFFSET_X, 1, 101 );
changeAnime( spep_0 + 176 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 178 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 204 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 234 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 244 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 268 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 172 + OFFSET_X, 1, 231, -17.9 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 231, -17.9 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 171, -17.9 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 171, -17.9 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 138.3, -22.4 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 138.3, -22.4 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 132.1, -8.3 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 132.1, -8.3 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 87.3, -8.3 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 87.3, -8.3 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 139.6, -8.3 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 139.6, -8.3 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 132.1, -8.3 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 132.1, -8.3 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 87.3, -8.3 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 87.3, -8.3 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 109.7, -8.3 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 109.7, -8.3 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 132.1, -8.3 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 132.1, -8.3 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 115.6, -24.1 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 115.6, -24.1 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 117.1, -17 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 117.1, -17 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 118.7, -10 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 118.7, -10 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 120.2, -3 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 120.2, -3 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 107.1, 3.6 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 107.1, 3.6 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 153.8, -23.2 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 153.8, -23.2 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 135.3, -19.5 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 135.3, -19.5 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 134.4, -9.9 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 134.4, -9.9 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 143.3, -3.6 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 143.3, -3.6 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 142.9, -5.5 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 142.9, -5.5 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 142.5, -7.4 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 142.5, -7.4 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 142.1, -9.3 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 142.1, -9.3 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 141.7, -11.2 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 141.7, -11.2 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 141.3, -13.1 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 141.3, -13.1 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 140.9, -15 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 140.9, -15 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 128.1, -1.6 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 128.1, -1.6 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 129.7, -7.4 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 129.7, -7.4 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 150.8, 7.9 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 150.8, 7.9 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 163.7, 10.4 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 163.7, 10.4 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 159.6, 10.7 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 159.6, 10.7 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 181.6, 71.3 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 181.6, 71.3 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 184.2, 65.9 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 184.2, 65.9 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 189, 69 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 189, 69 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 193.9, 72 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 193.9, 72 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 198.7, 75.1 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 198.7, 75.1 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 148.5, 3.2 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 148.5, 3.2 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 189.3, 31.9 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 189.3, 31.9 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 179.6, 35.5 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 179.6, 35.5 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 182.5, 25.6 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 182.5, 25.6 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 189.8, 32.3 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 189.8, 32.3 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 207.4, 20.1 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 207.4, 20.1 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 206.2, 6.5 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 206.2, 6.5 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 199.4, 22.9 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 199.4, 22.9 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 197, 25.8 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 197, 25.8 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 194.2, 28.8 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 194.2, 28.8 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 202.5, 33.7 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 202.5, 33.7 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 210.4, 38.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 210.4, 38.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 255.3, 35.9 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 255.3, 35.9 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 259, 23.1 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 259, 23.1 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 247.9, 40 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 247.9, 40 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 268.1, 37.5 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 268.1, 37.5 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 252, 24.8 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 252, 24.8 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 262.9, 18.7 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 262.9, 18.7 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 261.3, 23.2 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 261.3, 23.2 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 261.3, 23.7 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 261.3, 23.7 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 261.3, 24.1 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 261.3, 24.1 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 261.3, 24.6 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 261.3, 24.6 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 261.2, 25 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 261.2, 25 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 276.1, 23.8 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 276.1, 23.8 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 264.7, 24.6 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 264.7, 24.6 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 477.1, 22.7 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 477.1, 22.7 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 683.4, 34.1 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 683.4, 34.1 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 895.8, 35.9 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 895.8, 35.9 , 0 );

setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 2.04, 2.04 );

setRotateKey( spep_0 + 172 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -27.1 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, -27.1 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, -88 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -88 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, -36.9 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -36.9 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -34.7 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, -34.7 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, -37.6 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, -37.6 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, -36.9 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, -36.9 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -36.4 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, -36.4 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -12 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 176, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--顔カットイン
--SE002 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);

--構える
SE003 = playSeVer2( spep_0 + 0, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 166 );
SE004 = playSeVer2( spep_0 + 4, 1233, "", 0, 0, 0, -1);

--画面遷移
SE005 = playSeVer2( spep_0 + 80, 1072, "", 0, 12, 0, -1);
setStartTimeMs( SE005,  167 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 110; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
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
--向かっていく
SE006 = playSeVer2( spep_0 + 116, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 116, 1117, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 128, 1332, "", 0, 0, 0, -1);

--ラッシュ
SE009 = playSeVer2( spep_0 + 166, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 166, SE009, 145 );
SE010 = playSeVer2( spep_0 + 170, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE010, 82 );
SE011 = playSeVer2( spep_0 + 170, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE011, 88 );
SE012 = playSeVer2( spep_0 + 200, 1010, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 200, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 214, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 214, 1001, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 214, 1000, "",spep_0 + 238, 0, 6, -1);
SE017 = playSeVer2( spep_0 + 234, 1110, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 234, 1032, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 262, 1187, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE020 = playSeVer2( spep_0 + 276, 1027, "", 0, 0, 0, -1);

--腕上げる
SE021 = playSeVer2( spep_0 + 312, 1004, "", 0, 0, 0, -1);

--気ダメ
SE022 = playSeVer2( spep_0 + 344, 20, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 344, SE022, 68 );
SE023 = playSeVer2( spep_0 + 344, 1035, "",spep_0 + 428, 0, 12, 0.6);
SE024 = playSeVer2( spep_0 + 344, 1036, "", 0, 0, 0, 0.6);
SE025 = playSeVer2( spep_0 + 344, 1176, "",spep_0 + 432, 0, 16, 0.6);
setSeVolumeByWorkId( spep_0 + 344, SE025, 89 );
SE026 = playSeVer2( spep_0 + 368, 1036, "", 0, 0, 0, 0.6);
SE027 = playSeVer2( spep_0 + 392, 1036, "", 0, 0, 0, 0.6);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --416

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 突進〜フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_2 = 618;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002   突進〜フィニッシュ 敵前面
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_002_b   突進〜フィニッシュ 敵背面
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

-- ** フェード ** --
entryFade( spep_2 + 312, 0, 4, 10, 193, 171, 150, 160); -- fade

-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_2 + 8 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 232 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 8 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 58 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 60 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 72 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 82 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 92 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 170 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 190 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 8 + OFFSET_X, 1, 543, -13.7 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 543, -13.7 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 466.4, -13.7 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 466.4, -13.7 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 389.6, -13.7 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 389.6, -13.7 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 312.9, -13.7 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 312.9, -13.7 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 264.3, -15.3 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 264.3, -15.3 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 206.7, -17.7 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 206.7, -17.7 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 117.7, -29.7 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 117.7, -29.7 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 126.2, -39.9 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 126.2, -39.9 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 109.8, -23.5 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 109.8, -23.5 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 123.8, -8.8 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 123.8, -8.8 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 143.7, -24.1 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 143.7, -24.1 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 122.5, -33.7 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 122.5, -33.7 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 123.8, -6.9 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 123.8, -6.9 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 116.2, -19.9 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 116.2, -19.9 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 109.5, 0.4 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 109.5, 0.4 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 104.7, -8.6 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 104.7, -8.6 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 122.1, -20.3 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 122.1, -20.3 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 1.8, 43.9 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 1.8, 43.9 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 2.1, 43.8 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 2.1, 43.8 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 2.5, 99.6 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 2.5, 99.6 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 2.8, 99.4 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 2.8, 99.4 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 37.1, 117.3 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 37.1, 117.3 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 50.7, 118.4 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 50.7, 118.4 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 64.4, 119.6 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 64.4, 119.6 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 78, 120.8 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 78, 120.8 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 44.5, 146.4 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 44.5, 146.4 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 57.6, 150.8 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 57.6, 150.8 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 42.9, 141.6 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 42.9, 141.6 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 28.2, 132.4 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 28.2, 132.4 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 13.5, 123.2 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 13.5, 123.2 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -1.2, 114.1 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -1.2, 114.1 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -16.9, 121.9 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -16.9, 121.9 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -16.3, 121.3 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -16.3, 121.3 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -2, 125.1 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -2, 125.1 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 12.3, 128.9 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 12.3, 128.9 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 26.6, 132.7 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 26.6, 132.7 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 40.9, 136.5 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 40.9, 136.5 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 40.8, 136.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 40.8, 136.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 27.6, 159.7 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 27.6, 159.7 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 14.4, 182.5 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 14.4, 182.5 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 1.2, 205.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 1.2, 205.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -12, 228.2 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -12, 228.2 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -11, 227.2 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -11, 227.2 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -8.7, 235.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -8.7, 235.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -6.4, 243.6 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -6.4, 243.6 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -4.1, 251.8 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -4.1, 251.8 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -1.8, 260 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -1.8, 260 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 0.4, 268.2 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 0.4, 268.2 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 0.7, 268 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 0.7, 268 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 1, 267.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 1, 267.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 1.4, 267.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 1.4, 267.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 1.7, 267.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 1.7, 267.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 2, 267.1 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 2, 267.1 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 2.3, 266.6 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 2.3, 266.6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 2.6, 266 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 2.6, 266 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 2.9, 265.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 2.9, 265.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 3.2, 264 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 3.2, 264 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 3.4, 262.4 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 3.4, 262.4 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 3.7, 260.3 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 3.7, 260.3 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 3.9, 257.7 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 3.9, 257.7 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 4.1, 254.4 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 4.1, 254.4 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 4.3, 250.3 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 4.3, 250.3 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 4.4, 245.3 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 4.4, 245.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 4.5, 239.2 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 4.5, 239.2 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 4.6, 231.8 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 4.6, 231.8 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 4.6, 223.1 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 4.6, 223.1 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 4.6, 212.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 4.6, 212.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 4.5, 200.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 4.5, 200.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 4.3, 187 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 4.3, 187 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 4.1, 171 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 4.1, 171 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 3.8, 152.8 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 3.8, 152.8 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 3.4, 132 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 3.4, 132 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 3.7, 106.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 3.7, 106.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 3.9, 84.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 3.9, 84.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 4.3, 64.8 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 4.3, 64.8 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 4.6, 48.4 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 4.6, 48.4 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 4.8, 34.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 4.8, 34.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 5.1, 24.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 5.1, 24.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 5.4, 16.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 5.4, 16.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 5.7, 12.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 5.7, 12.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 6, 10.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 6, 10.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 52.6, -7.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 52.6, -7.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 53, -7.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 53, -7.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 47.3, -1.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 47.3, -1.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 71.7, -5.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 71.7, -5.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 50.3, -4.7 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 50.3, -4.7 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 46.6, 4.9 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 46.6, 4.9 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 33, -21.7 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 33, -21.7 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 61.9, -275.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 61.9, -275.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 98, -553.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 98, -553.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -137.8, -339.4 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -137.8, -339.4 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -129.8, -321 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -129.8, -321 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -108.8, -272.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, -108.8, -272.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -90, -228.5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, -90, -228.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, -75.1, -194.1 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, -75.1, -194.1 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, -63, -165.9 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, -63, -165.9 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, -52.7, -142.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, -52.7, -142.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, -43.9, -121.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, -43.9, -121.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, -36.1, -103.6 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, -36.1, -103.6 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, -29.2, -87.5 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, -29.2, -87.5 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, -22.9, -72.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, -22.9, -72.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, -17.9, -61.4 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, -17.9, -61.4 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, -15, -54.6 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -15, -54.6 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 1.8, -60.2 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 1.8, -60.2 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -13.9, -59.2 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -13.9, -59.2 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 13, -52.4 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 13, -52.4 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 8.5, -61 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 8.5, -61 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 16.5, -74.4 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 16.5, -74.4 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 7.9, -61.3 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 7.9, -61.3 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 5.9, -62.5 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 5.9, -62.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 15.1, -52 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 15.1, -52 , 0 );

setScaleKey( spep_2 + 8 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.52, 0.52 );

setRotateKey( spep_2 + 8 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, 51.1 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 51.1 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -49.7 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -49.7 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 55.9 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 55.9 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -46.4 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -46.4 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -43.5 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -43.5 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -42.1 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, -42.1 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -40.5 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -40.5 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -39.8 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -39.8 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -37.8 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -37.8 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -29.4 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -29.4 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 11.2 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 11.2 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 13 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 13 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 17 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 17 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 69.4 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 69.4 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 69.5 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 69.5 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 0 );

--敵の動き２
setDisp( spep_2 + 312 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 380 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 312 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 312 + OFFSET_X, 1, 122.3, -603 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 122.3, -603 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 121.5, -598.3 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 121.5, -598.3 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 122.2, -600.9 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 122.2, -600.9 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 120.8, -606.2 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 120.8, -606.2 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 121.6, -598.7 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 121.6, -598.7 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 125.1, -601.1 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 125.1, -601.1 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 129.1, -604.4 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 129.1, -604.4 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 127.8, -595.9 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 127.8, -595.9 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 122.3, -600.8 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 122.3, -600.8 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 123.6, -601.1 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 123.6, -601.1 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 123.7, -600.4 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 123.7, -600.4 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 126.8, -600.6 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 126.8, -600.6 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 125.1, -601.5 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 125.1, -601.5 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 125.6, -599.6 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 125.6, -599.6 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 126.8, -599.5 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 126.8, -599.5 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 126.2, -599.1 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 126.2, -599.1 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 124.6, -601.7 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 124.6, -601.7 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 124.3, -600.4 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 124.3, -600.4 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 124.1, -600.5 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 124.1, -600.5 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 122, -602 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 122, -602 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 119.6, -596.6 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 119.6, -596.6 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 123.4, -598.2 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 123.4, -598.2 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 121.6, -598.6 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 121.6, -598.6 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 123.1, -602.3 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 123.1, -602.3 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 121.6, -594.8 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 121.6, -594.8 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 122.9, -601.4 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 122.9, -601.4 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 123.7, -601.4 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 123.7, -601.4 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 120.9, -600.5 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 120.9, -600.5 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 128.3, -599.9 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 128.3, -599.9 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 175.4, -877.8 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 175.4, -877.8 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 173, -879.8 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 173, -879.8 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 266.8, -1449.4 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 266.8, -1449.4 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 264.4, -1445.4 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 264.4, -1445.4 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 368.6, -2008.7 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 368.6, -2008.7 , 0 );

setScaleKey( spep_2 + 312 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 5.48, 5.48 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 5.48, 5.48 );

setRotateKey( spep_2 + 312 + OFFSET_X, 1, 37.6 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, 37.6 );

setBlendColor( spep_2 + 312 + OFFSET_X, 1, 0, 1.0, 0.0, 0.0, 0.6);
setBlendColor( spep_2 + 379 + OFFSET_X, 1, 0, 1.0, 0.0, 0.0, 0.6);
setBlendColor( spep_2 + 380 + OFFSET_X, 1, 0, 1.0, 0.0, 0.0, 0.0);

-- ** 音 ** --
--向かっていく
SE029 = playSeVer2( spep_1 + 76, 1117, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_1 + 76, 1277, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 76, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 76, SE031, 48 );
SE032 = playSeVer2( spep_1 + 76, 1019, "",spep_2 + 32, 0, 18, -1);

--タックル
SE033 = playSeVer2( spep_2 + 8, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE033, 79 );
SE034 = playSeVer2( spep_2 + 8, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE034, 74 );
SE035 = playSeVer2( spep_2 + 8, 1153, "", 0, 0, 0, -1);

--連続タックル
SE036 = playSeVer2( spep_2 + 48, 1109, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 48, 1110, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 52, 1031, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 62, 1109, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 62, 1110, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 66, 1031, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 74, 1109, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 74, 1110, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 80, 1031, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 84, 1109, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 84, 1110, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 84, 1031, "", 0, 0, 0, -1);

--瞬間移動
SE048 = playSeVer2( spep_2 + 114, 1109, "", 0, 0, 0, -1);

--蹴りつける
SE049 = playSeVer2( spep_2 + 146, 1004, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 152, 1123, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 154, 1153, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 154, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE053 = playSeVer2( spep_2 + 166, 1121, "",spep_2 + 226, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 166, SE053, 71 );

--画面遷移
SE054 = playSeVer2( spep_2 + 240, 1168, "",spep_2 + 364, 32, 52, -1);
setSeVolumeByWorkId( spep_2 + 240, SE054, 66 );
setStartTimeMs( SE054,  1167 );
SE056 = playSeVer2( spep_2 + 240, 1072, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 260, 1258, "", 0, 28, 0, -1);
setSeVolumeByWorkId( spep_2 + 260, SE057, 60 );
setStartTimeMs( SE057,  233 );
SE061 = playSeVer2( spep_2 + 356, 8, "", 0, 0, 0, -1);

--地面激突
SE055 = playSeVer2( spep_2 + 208, 1159, "", 0, 0, 0, -1);

--気弾溜め
SE058 = playSeVer2( spep_2 + 296, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 296, SE058, 71 );
SE059 = playSeVer2( spep_2 + 296, 1296, "",spep_2 + 476, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 296, SE059, 105 );
SE060 = playSeVer2( spep_2 + 296, 1345, "",spep_2 + 476, 0, 50, -1);
setSeVolumeByWorkId( spep_2 + 296, SE060, 191 );
setPitch( spep_2 + 300, SE060, -500 );
setTimeStretch( SE060, 0.67, 30, 4 );

--連続爆発
SE062 = playSeVer2( spep_2 + 414, 1069, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_2 + 430, 1159, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_2 + 450, 1068, "", 0, 0, 0, -1);

--気弾発射
SE063 = playSeVer2( spep_2 + 424, 1145, "", 0, 0, 0, -1);

--爆発予兆
SE066 = playSeVer2( spep_2 + 466, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 466, SE066, 257 );
SE067 = playSeVer2( spep_2 + 476, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 476, SE067, 124 );

--連続爆発
SE068 = playSeVer2( spep_2 + 516, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 440); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 終了フレーム  618

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 構え〜オーラ溜め
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_0 = 416;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- ef_001   構え〜オーラ溜め 敵前面
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

start_b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- ef_001_b  構え〜オーラ溜め 敵背面
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
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

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

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_0 + 88 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 122 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 88 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 88 + OFFSET_X, 1, 1335.5, 132.5 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 1335.5, 132.5 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 1325.1, 131.2 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 1325.1, 131.2 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 1302.9, 128.4 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 1302.9, 128.4 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 1267.1, 123.8 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 1267.1, 123.8 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 1214.8, 117.2 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 1214.8, 117.2 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 1142.9, 108 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 1142.9, 108 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 1047, 95.8 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 1047, 95.8 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 922.2, 80 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 922.2, 80 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 765.7, 60.1 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 765.7, 60.1 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 586.4, 37.2 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 586.4, 37.2 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 427, 17 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 427, 17 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 354.1, 7.9 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 354.1, 7.9 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 346.1, 7.9 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 346.1, 7.9 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 338.2, 7.9 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 338.2, 7.9 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 330.2, 7.8 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 330.2, 7.8 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 322.2, 7.8 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 322.2, 7.8 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 474.4, 15.8 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 474.4, 15.8 , 0 );

setScaleKey( spep_0 + 88 + OFFSET_X, 1, 10.85, 10.85 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 10.85, 10.85 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 10.76, 10.76 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 10.76, 10.76 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 10.58, 10.58 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 10.58, 10.58 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 10.28, 10.28 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 10.28, 10.28 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 9.85, 9.85 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 9.85, 9.85 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 9.25, 9.25 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 9.25, 9.25 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 8.46, 8.46 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 8.46, 8.46 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 7.42, 7.42 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 7.42, 7.42 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 6.13, 6.13 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 6.13, 6.13 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 113 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_0 + 114 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 3.42, 3.42 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 3.42, 3.42 );

setRotateKey( spep_0 + 88 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, 0 );

--敵の動き２
setDisp( spep_0 + 172 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 300 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 172 + OFFSET_X, 1, 101 );
changeAnime( spep_0 + 176 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 178 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 204 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 234 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 244 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 268 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 172 + OFFSET_X, 1, 231, -17.9 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 231, -17.9 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 171, -17.9 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 171, -17.9 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 138.3, -22.4 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 138.3, -22.4 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 132.1, -8.3 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 132.1, -8.3 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 87.3, -8.3 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 87.3, -8.3 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 139.6, -8.3 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 139.6, -8.3 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 132.1, -8.3 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 132.1, -8.3 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 87.3, -8.3 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 87.3, -8.3 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 109.7, -8.3 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 109.7, -8.3 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 132.1, -8.3 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 132.1, -8.3 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 115.6, -24.1 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 115.6, -24.1 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 117.1, -17 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 117.1, -17 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 118.7, -10 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 118.7, -10 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 120.2, -3 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 120.2, -3 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 107.1, 3.6 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 107.1, 3.6 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 153.8, -23.2 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 153.8, -23.2 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 135.3, -19.5 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 135.3, -19.5 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 134.4, -9.9 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 134.4, -9.9 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 143.3, -3.6 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 143.3, -3.6 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 142.9, -5.5 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 142.9, -5.5 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 142.5, -7.4 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 142.5, -7.4 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 142.1, -9.3 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, 142.1, -9.3 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, 141.7, -11.2 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, 141.7, -11.2 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, 141.3, -13.1 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, 141.3, -13.1 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, 140.9, -15 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 140.9, -15 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 128.1, -1.6 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 128.1, -1.6 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 129.7, -7.4 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 129.7, -7.4 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 150.8, 7.9 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 150.8, 7.9 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 163.7, 10.4 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 163.7, 10.4 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 159.6, 10.7 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 159.6, 10.7 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 181.6, 71.3 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 181.6, 71.3 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 184.2, 65.9 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 184.2, 65.9 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 189, 69 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 189, 69 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 193.9, 72 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 193.9, 72 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 198.7, 75.1 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 198.7, 75.1 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 148.5, 3.2 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 148.5, 3.2 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 189.3, 31.9 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 189.3, 31.9 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 179.6, 35.5 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 179.6, 35.5 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 182.5, 25.6 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 182.5, 25.6 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 189.8, 32.3 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 189.8, 32.3 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 207.4, 20.1 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, 207.4, 20.1 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, 206.2, 6.5 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, 206.2, 6.5 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, 199.4, 22.9 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, 199.4, 22.9 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, 197, 25.8 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, 197, 25.8 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, 194.2, 28.8 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 194.2, 28.8 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 202.5, 33.7 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 202.5, 33.7 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 210.4, 38.8 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 210.4, 38.8 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 255.3, 35.9 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 255.3, 35.9 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 259, 23.1 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 259, 23.1 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 247.9, 40 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 247.9, 40 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 268.1, 37.5 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 268.1, 37.5 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 252, 24.8 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 252, 24.8 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 262.9, 18.7 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 262.9, 18.7 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 261.3, 23.2 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 261.3, 23.2 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 261.3, 23.7 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 261.3, 23.7 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 261.3, 24.1 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 261.3, 24.1 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 261.3, 24.6 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 261.3, 24.6 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 261.2, 25 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 261.2, 25 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 276.1, 23.8 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 276.1, 23.8 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 264.7, 24.6 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 264.7, 24.6 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 477.1, 22.7 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 477.1, 22.7 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 683.4, 34.1 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 683.4, 34.1 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 895.8, 35.9 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 895.8, 35.9 , 0 );

setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 201 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 243 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 244 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 1.71, 1.71 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 2.04, 2.04 );

setRotateKey( spep_0 + 172 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 177 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 178 + OFFSET_X, 1, -27.1 );
setRotateKey( spep_0 + 203 + OFFSET_X, 1, -27.1 );
setRotateKey( spep_0 + 204 + OFFSET_X, 1, -88 );
setRotateKey( spep_0 + 223 + OFFSET_X, 1, -88 );
setRotateKey( spep_0 + 224 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, -36.9 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -36.9 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_0 + 229 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_0 + 230 + OFFSET_X, 1, -34.7 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, -34.7 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_0 + 243 + OFFSET_X, 1, -24.8 );
setRotateKey( spep_0 + 244 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_0 + 245 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_0 + 246 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_0 + 247 + OFFSET_X, 1, -38.6 );
setRotateKey( spep_0 + 248 + OFFSET_X, 1, -37.6 );
setRotateKey( spep_0 + 249 + OFFSET_X, 1, -37.6 );
setRotateKey( spep_0 + 250 + OFFSET_X, 1, -36.9 );
setRotateKey( spep_0 + 251 + OFFSET_X, 1, -36.9 );
setRotateKey( spep_0 + 252 + OFFSET_X, 1, -36.4 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, -36.4 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -12 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 176, 0, 52, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--顔カットイン
--SE002 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);

--構える
SE003 = playSeVer2( spep_0 + 0, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 166 );
SE004 = playSeVer2( spep_0 + 4, 1233, "", 0, 0, 0, -1);

--画面遷移
SE005 = playSeVer2( spep_0 + 80, 1072, "", 0, 12, 0, -1);
setStartTimeMs( SE005,  167 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 110; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
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
--向かっていく
SE006 = playSeVer2( spep_0 + 116, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 116, 1117, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 128, 1332, "", 0, 0, 0, -1);

--ラッシュ
SE009 = playSeVer2( spep_0 + 166, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 166, SE009, 145 );
SE010 = playSeVer2( spep_0 + 170, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE010, 82 );
SE011 = playSeVer2( spep_0 + 170, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE011, 88 );
SE012 = playSeVer2( spep_0 + 200, 1010, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 200, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 214, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 214, 1001, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 214, 1000, "",spep_0 + 238, 0, 6, -1);
SE017 = playSeVer2( spep_0 + 234, 1110, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 234, 1032, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 262, 1187, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE020 = playSeVer2( spep_0 + 276, 1027, "", 0, 0, 0, -1);

--腕上げる
SE021 = playSeVer2( spep_0 + 312, 1004, "", 0, 0, 0, -1);

--気ダメ
SE022 = playSeVer2( spep_0 + 344, 20, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 344, SE022, 68 );
SE023 = playSeVer2( spep_0 + 344, 1035, "",spep_0 + 428, 0, 12, 0.6);
SE024 = playSeVer2( spep_0 + 344, 1036, "", 0, 0, 0, 0.6);
SE025 = playSeVer2( spep_0 + 344, 1176, "",spep_0 + 432, 0, 16, 0.6);
setSeVolumeByWorkId( spep_0 + 344, SE025, 89 );
SE026 = playSeVer2( spep_0 + 368, 1036, "", 0, 0, 0, 0.6);
SE027 = playSeVer2( spep_0 + 392, 1036, "", 0, 0, 0, 0.6);

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  --416

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);

-------------------------------------------------
-- 突進〜フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
MAX_FRAME_2 = 618;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_002   突進〜フィニッシュ 敵前面
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ef_002_b   突進〜フィニッシュ 敵背面
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

-- ** フェード ** --
entryFade( spep_2 + 312, 0, 4, 10, 193, 171, 150, 160); -- fade

-- ** 敵キャラクター ** --
--敵の動き１
setDisp( spep_2 + 8 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 232 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 8 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 58 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 60 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 72 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 82 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 92 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 170 + OFFSET_X, 1, 107 );
changeAnime( spep_2 + 190 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 8 + OFFSET_X, 1, 543, -13.7 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 543, -13.7 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 466.4, -13.7 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 466.4, -13.7 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 389.6, -13.7 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 389.6, -13.7 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 312.9, -13.7 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 312.9, -13.7 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 264.3, -15.3 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 264.3, -15.3 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 206.7, -17.7 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 206.7, -17.7 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 117.7, -29.7 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 117.7, -29.7 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 126.2, -39.9 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 126.2, -39.9 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 109.8, -23.5 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 109.8, -23.5 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 123.8, -8.8 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 123.8, -8.8 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 143.7, -24.1 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 143.7, -24.1 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 122.5, -33.7 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 122.5, -33.7 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 123.8, -6.9 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 123.8, -6.9 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 116.2, -19.9 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 116.2, -19.9 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 109.5, 0.4 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 109.5, 0.4 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 104.7, -8.6 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 104.7, -8.6 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 122.1, -20.3 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 122.1, -20.3 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 1.8, 43.9 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 1.8, 43.9 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 2.1, 43.8 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 2.1, 43.8 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 2.5, 99.6 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 2.5, 99.6 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 2.8, 99.4 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 2.8, 99.4 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 37.1, 117.3 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 37.1, 117.3 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 50.7, 118.4 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 50.7, 118.4 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 64.4, 119.6 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 64.4, 119.6 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 78, 120.8 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 78, 120.8 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 44.5, 146.4 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 44.5, 146.4 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 57.6, 150.8 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 57.6, 150.8 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 42.9, 141.6 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 42.9, 141.6 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 28.2, 132.4 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 28.2, 132.4 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 13.5, 123.2 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 13.5, 123.2 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, -1.2, 114.1 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, -1.2, 114.1 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, -16.9, 121.9 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, -16.9, 121.9 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -16.3, 121.3 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -16.3, 121.3 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -2, 125.1 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -2, 125.1 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 12.3, 128.9 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 12.3, 128.9 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 26.6, 132.7 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 26.6, 132.7 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 40.9, 136.5 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 40.9, 136.5 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 40.8, 136.9 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 40.8, 136.9 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 27.6, 159.7 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 27.6, 159.7 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 14.4, 182.5 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 14.4, 182.5 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 1.2, 205.3 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 1.2, 205.3 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, -12, 228.2 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, -12, 228.2 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, -11, 227.2 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, -11, 227.2 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, -8.7, 235.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, -8.7, 235.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, -6.4, 243.6 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, -6.4, 243.6 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, -4.1, 251.8 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, -4.1, 251.8 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, -1.8, 260 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, -1.8, 260 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 0.4, 268.2 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 0.4, 268.2 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 0.7, 268 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 0.7, 268 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 1, 267.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 1, 267.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 1.4, 267.6 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 1.4, 267.6 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 1.7, 267.4 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 1.7, 267.4 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 2, 267.1 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 2, 267.1 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 2.3, 266.6 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 2.3, 266.6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 2.6, 266 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 2.6, 266 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 2.9, 265.1 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 2.9, 265.1 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 3.2, 264 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 3.2, 264 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 3.4, 262.4 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 3.4, 262.4 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 3.7, 260.3 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 3.7, 260.3 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 3.9, 257.7 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 3.9, 257.7 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 4.1, 254.4 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 4.1, 254.4 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 4.3, 250.3 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 4.3, 250.3 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 4.4, 245.3 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 4.4, 245.3 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 4.5, 239.2 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 4.5, 239.2 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 4.6, 231.8 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 4.6, 231.8 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 4.6, 223.1 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 4.6, 223.1 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 4.6, 212.8 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 4.6, 212.8 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 4.5, 200.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 4.5, 200.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 4.3, 187 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 4.3, 187 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 4.1, 171 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 4.1, 171 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 3.8, 152.8 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 3.8, 152.8 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 3.4, 132 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 3.4, 132 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 3.7, 106.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 3.7, 106.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 3.9, 84.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 3.9, 84.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 4.3, 64.8 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 4.3, 64.8 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 4.6, 48.4 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 4.6, 48.4 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 4.8, 34.8 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 4.8, 34.8 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 5.1, 24.4 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 5.1, 24.4 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 5.4, 16.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 5.4, 16.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 5.7, 12.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 5.7, 12.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 6, 10.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 6, 10.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 52.6, -7.3 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 52.6, -7.3 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 53, -7.5 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 53, -7.5 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 47.3, -1.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 47.3, -1.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 71.7, -5.7 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 71.7, -5.7 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 50.3, -4.7 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 50.3, -4.7 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 46.6, 4.9 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 46.6, 4.9 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 33, -21.7 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 33, -21.7 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 61.9, -275.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 61.9, -275.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 98, -553.6 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 98, -553.6 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 137.8, -339.4 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 137.8, -339.4 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 129.8, -321 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 129.8, -321 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 108.8, -272.3 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 108.8, -272.3 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 90, -228.5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 90, -228.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 75.1, -194.1 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 75.1, -194.1 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 63, -165.9 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 63, -165.9 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 52.7, -142.2 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 52.7, -142.2 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 43.9, -121.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 43.9, -121.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 36.1, -103.6 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 36.1, -103.6 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 29.2, -87.5 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 29.2, -87.5 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 22.9, -72.9 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 22.9, -72.9 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 17.9, -61.4 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 17.9, -61.4 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 15, -54.6 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 15, -54.6 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -1.8, -60.2 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -1.8, -60.2 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 13.9, -59.2 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 13.9, -59.2 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -13, -52.4 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -13, -52.4 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -8.5, -61 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -8.5, -61 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -16.5, -74.4 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -16.5, -74.4 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -7.9, -61.3 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -7.9, -61.3 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -5.9, -62.5 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -5.9, -62.5 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -15.1, -52 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -15.1, -52 , 0 );

setScaleKey( spep_2 + 8 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 15 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_2 + 16 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 17 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 18 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 3.41, 3.41 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 2.84, 2.84 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 0.67, 0.67 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.52, 0.52 );

setRotateKey( spep_2 + 8 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, 51.1 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 51.1 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -49.7 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -49.7 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, 55.9 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 55.9 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -46.4 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -46.4 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -43.5 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -43.5 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -42.1 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, -42.1 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_2 + 113 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_2 + 114 + OFFSET_X, 1, -40.5 );
setRotateKey( spep_2 + 115 + OFFSET_X, 1, -40.5 );
setRotateKey( spep_2 + 116 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -40.1 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -39.8 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -39.8 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -37.8 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -37.8 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -33.8 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -29.4 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -29.4 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -23.1 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -19.1 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, -14.4 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 4.1 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 11.2 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 11.2 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 13 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 13 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 14.4 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 15.6 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 16.4 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 17 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 17 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 69.4 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 69.4 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 69.5 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 69.5 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 0 );

--敵の動き２
setDisp( spep_2 + 312 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 380 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 312 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 312 + OFFSET_X, 1, 122.3, -603 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 122.3, -603 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 121.5, -598.3 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 121.5, -598.3 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 122.2, -600.9 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 122.2, -600.9 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 120.8, -606.2 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 120.8, -606.2 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 121.6, -598.7 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 121.6, -598.7 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 125.1, -601.1 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 125.1, -601.1 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 129.1, -604.4 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 129.1, -604.4 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 127.8, -595.9 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 127.8, -595.9 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 122.3, -600.8 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 122.3, -600.8 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 123.6, -601.1 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 123.6, -601.1 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 123.7, -600.4 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 123.7, -600.4 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 126.8, -600.6 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 126.8, -600.6 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 125.1, -601.5 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 125.1, -601.5 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 125.6, -599.6 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 125.6, -599.6 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 126.8, -599.5 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 126.8, -599.5 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 126.2, -599.1 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 126.2, -599.1 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 124.6, -601.7 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 124.6, -601.7 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 124.3, -600.4 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 124.3, -600.4 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 124.1, -600.5 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, 124.1, -600.5 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 122, -602 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, 122, -602 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, 119.6, -596.6 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, 119.6, -596.6 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, 123.4, -598.2 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, 123.4, -598.2 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, 121.6, -598.6 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, 121.6, -598.6 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, 123.1, -602.3 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, 123.1, -602.3 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, 121.6, -594.8 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, 121.6, -594.8 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 122.9, -601.4 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 122.9, -601.4 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 123.7, -601.4 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 123.7, -601.4 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 120.9, -600.5 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 120.9, -600.5 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 128.3, -599.9 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 128.3, -599.9 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 175.4, -877.8 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 175.4, -877.8 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 173, -879.8 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 173, -879.8 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 266.8, -1449.4 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 266.8, -1449.4 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 264.4, -1445.4 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 264.4, -1445.4 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 368.6, -2008.7 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 368.6, -2008.7 , 0 );

setScaleKey( spep_2 + 312 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 4.2, 4.2 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 5.48, 5.48 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 5.48, 5.48 );

setRotateKey( spep_2 + 312 + OFFSET_X, 1, 37.6 );
setRotateKey( spep_2 + 380 + OFFSET_X, 1, 37.6 );

setBlendColor( spep_2 + 312 + OFFSET_X, 1, 0, 1.0, 0.0, 0.0, 0.6);
setBlendColor( spep_2 + 379 + OFFSET_X, 1, 0, 1.0, 0.0, 0.0, 0.6);
setBlendColor( spep_2 + 380 + OFFSET_X, 1, 0, 1.0, 0.0, 0.0, 0.0);

-- ** 音 ** --
--向かっていく
SE029 = playSeVer2( spep_1 + 76, 1117, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_1 + 76, 1277, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_1 + 76, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 76, SE031, 48 );
SE032 = playSeVer2( spep_1 + 76, 1019, "",spep_2 + 32, 0, 18, -1);

--タックル
SE033 = playSeVer2( spep_2 + 8, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE033, 79 );
SE034 = playSeVer2( spep_2 + 8, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8, SE034, 74 );
SE035 = playSeVer2( spep_2 + 8, 1153, "", 0, 0, 0, -1);

--連続タックル
SE036 = playSeVer2( spep_2 + 48, 1109, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 48, 1110, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 52, 1031, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 62, 1109, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 62, 1110, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 66, 1031, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 74, 1109, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 74, 1110, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 80, 1031, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 84, 1109, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 84, 1110, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 84, 1031, "", 0, 0, 0, -1);

--瞬間移動
SE048 = playSeVer2( spep_2 + 114, 1109, "", 0, 0, 0, -1);

--蹴りつける
SE049 = playSeVer2( spep_2 + 146, 1004, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_2 + 152, 1123, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 154, 1153, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 154, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE053 = playSeVer2( spep_2 + 166, 1121, "",spep_2 + 226, 0, 18, -1);
setSeVolumeByWorkId( spep_2 + 166, SE053, 71 );

--画面遷移
SE054 = playSeVer2( spep_2 + 240, 1168, "",spep_2 + 364, 32, 52, -1);
setSeVolumeByWorkId( spep_2 + 240, SE054, 66 );
setStartTimeMs( SE054,  1167 );
SE056 = playSeVer2( spep_2 + 240, 1072, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 260, 1258, "", 0, 28, 0, -1);
setSeVolumeByWorkId( spep_2 + 260, SE057, 60 );
setStartTimeMs( SE057,  233 );
SE061 = playSeVer2( spep_2 + 356, 8, "", 0, 0, 0, -1);

--地面激突
SE055 = playSeVer2( spep_2 + 208, 1159, "", 0, 0, 0, -1);

--気弾溜め
SE058 = playSeVer2( spep_2 + 296, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 296, SE058, 71 );
SE059 = playSeVer2( spep_2 + 296, 1296, "",spep_2 + 476, 0, 44, -1);
setSeVolumeByWorkId( spep_2 + 296, SE059, 105 );
SE060 = playSeVer2( spep_2 + 296, 1345, "",spep_2 + 476, 0, 50, -1);
setSeVolumeByWorkId( spep_2 + 296, SE060, 191 );
setPitch( spep_2 + 300, SE060, -500 );
setTimeStretch( SE060, 0.67, 30, 4 );

--連続爆発
SE062 = playSeVer2( spep_2 + 414, 1069, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_2 + 430, 1159, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_2 + 450, 1068, "", 0, 0, 0, -1);

--気弾発射
SE063 = playSeVer2( spep_2 + 424, 1145, "", 0, 0, 0, -1);

--爆発予兆
SE066 = playSeVer2( spep_2 + 466, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 466, SE066, 257 );
SE067 = playSeVer2( spep_2 + 476, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 476, SE067, 124 );

--連続爆発
SE068 = playSeVer2( spep_2 + 516, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 440); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 ); -- 終了フレーム  618



end
