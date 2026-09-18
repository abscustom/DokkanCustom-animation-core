-- 1029870: UR_ヘルファイター17号_必殺技：ヘルブレイカー
-- sp_effect_a2_00250
-- sp2780

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 163345;  -- 開始・セリフカットイン→カードカットイン ef_001
SP_002 = 163347;  -- カードカットイン→敵にヒット ef_002
SP_002b = 163348;  -- カードカットイン→敵にヒット ef_002b
SP_003b = 163351;  -- フィニッシュ ef_003b

-- 敵側
SP_001r = 163345;  -- 開始・セリフカットイン→カードカットイン ef_001r
SP_002r = 163347;  -- カードカットイン→敵にヒット ef_002r
SP_002br = 163348;  -- カードカットイン→敵にヒット ef_002br
SP_003br = 163352;  -- フィニッシュ ef_003br

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

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

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開始・セリフカットイン→カードカットイン ef_001
------------------------------------------------------
MAX_FRAME_0 = 136;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );  -- 開始・セリフカットイン→カードカットイン ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 80 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 50;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -70, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -70, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -70, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1161, "",spep_0 + 152, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 68 );
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 79 );
setPitch( spep_0 + 0, SE002, -400 );
setTimeStretch( SE002, 0.73, 30, 4 );
SE003 = playSeVer2( spep_0 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE003, 79 );
setPitch( spep_0 + 20, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );
SE004 = playSeVer2( spep_0 + 44, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE004, 79 );
setPitch( spep_0 + 44, SE004, -400 );
setTimeStretch( SE004, 0.73, 30, 4 );
SE007 = playSeVer2( spep_0 + 68, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE007, 79 );
setPitch( spep_0 + 68, SE007, -400 );
setTimeStretch( SE007, 0.73, 30, 4 );
SE008 = playSeVer2( spep_0 + 92, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE008, 79 );
setPitch( spep_0 + 92, SE008, -400 );
setTimeStretch( SE008, 0.73, 30, 4 );
SE009 = playSeVer2( spep_0 + 116, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE009, 79 );
setPitch( spep_0 + 116, SE009, -400 );
setTimeStretch( SE009, 0.73, 30, 4 );

--気ダメ
SE005 = playSeVer2( spep_0 + 48, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE005, 71 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 136

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 1);

-- ** 音 ** --
--気弾溜め
SE011 = playSeVer2( spep_1 + 88, 1200, "",spep_2 + 58, 0, 22, -1);
SE012 = playSeVer2( spep_1 + 88, 1204, "",spep_2 + 52, 0, 18, -1);
SE013 = playSeVer2( spep_1 + 88, 1224, "", 0, 0, 0, -1);

------------------------------------------------------
-- カードカットイン→敵にヒット ef_002
------------------------------------------------------
MAX_FRAME_2 = 192;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- カードカットイン→敵にヒット ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- カードカットイン→敵にヒット ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 80 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 126 + OFFSET_X, 1, 1 );
--setDisp( spep_2 + 192 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 126 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 126 + OFFSET_X, 1, -0.1, -44.4 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -0.1, -44.4 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 15.9, -60 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 15.9, -60 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 15.8, -43.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 15.8, -43.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -0.2, -59.5 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -0.2, -59.5 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 7.7, -51.1 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 7.7, -51.1 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -0.3, -42.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -0.3, -42.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 15.4, -53.7 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 15.4, -53.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 15.1, -33 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 15.1, -33 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -1.2, -44.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -1.2, -44.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 6.6, -32.7 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 6.6, -32.7 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -1.7, -21.2 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -1.7, -21.2 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 14.1, -34.1 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 14.1, -34.1 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 13.9, -15.3 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 13.9, -15.3 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -2.2, -28.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -2.2, -28.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 5.7, -19 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 5.7, -19 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -2.4, -9.3 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -2.4, -9.3 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 13.5, -24 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 13.5, -24 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 13.4, -7.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 13.4, -7.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -2.7, -22.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -2.7, -22.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 5.3, -14.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 5.3, -14.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -2.8, -6.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -2.8, -6.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 13.2, -22.1 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 13.2, -22.1 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 13.2, -6 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 13.2, -6 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -2.8, -21.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -2.8, -21.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 5.1, -13.8 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 5.1, -13.8 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -2.9, -5.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -2.9, -5.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 13.1, -21.8 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 13.1, -21.8 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 13.1, -5.8 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 13.1, -5.8 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -2.9, -21.8 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -2.9, -21.8 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 5.1, -13.8 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 5.1, -13.8 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -2.9, -5.8 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -2.9, -5.8 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 13.1, -21.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 13.1, -21.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 5.1, -13.8 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 5.1, -13.8 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -2.9, -5.8 , 0 );

setScaleKey( spep_2 + 126 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 1.1, 1.1 );

setRotateKey( spep_2 + 126 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, 16.2 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 16.1 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 16 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 16 );

setBlendColor( spep_2 + 126 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 128 + OFFSET_X, 1, 3, 0, 0, 0, 0.1 );
setBlendColor( spep_2 + 130 + OFFSET_X, 1, 3, 0, 0, 0, 0.15 );
setBlendColor( spep_2 + 132 + OFFSET_X, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_2 + 134 + OFFSET_X, 1, 3, 0, 0, 0, 0.45 );
setBlendColor( spep_2 + 136 + OFFSET_X, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_2 + 148 + OFFSET_X, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_2 + 160 + OFFSET_X, 1, 3, 0, 0, 0, 0.9 );
setBlendColor( spep_2 + 162 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_2 + 192 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--気弾発射
SE014 = playSeVer2( spep_2 + 30, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 30, 1145, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 30, 1177, "", 0, 0, 0, -1);

--気弾飛んでいく
SE017 = playSeVer2( spep_2 + 48, 1128, "",spep_2 + 222, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 48, SE017, 56 );
setPitch( spep_2 + 48, SE017, 1200 );
setTimeStretch( SE017, 1.8, 30, 4 );
SE018 = playSeVer2( spep_2 + 48, 1215, "",spep_2 + 222, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 48, SE018, 53 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 100;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);

pauseAll( SP_dodge, 67);

setBlendColor( SP_dodge + 2 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--爆発
SE019 = playSeVer2( spep_2 + 180, 1023, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2;  -- 192

------------------------------------------------------
-- 「ガッ」 ef_003
------------------------------------------------------
-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 4, finish_1f, 20, -120 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 20, -120 , 0 );
setEffScaleKey( spep_N + 4, finish_1f, 1.3, 1.3 );
setEffScaleKey( spep_N + 112, finish_1f, 1.3, 1.3 );
setEffRotateKey( spep_N + 4, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 4, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );
 
-- 背景差し替えがある場合のみ
finish_1b = entryEffect( spep_N + 0, SP_003b , 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_003)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );
 
-- ** 爆発 ** --
--[[
bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_N + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, bakuhatsu, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_N + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_N + 112, bakuhatsu, 0.9, 0.9 );
 
setEffRotateKey( spep_N + 0, bakuhatsu, 0 );
setEffRotateKey( spep_N + 112, bakuhatsu, 0 );
 
setEffAlphaKey( spep_N + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_N + 112, bakuhatsu, 255 );
]]
 
-- ** 集中線 ** --
--[[
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常
--setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
--setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
 
setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );
]]

--[[
shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );
 
setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );
]]

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );
 
setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );
 
setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );
 
setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );
 
setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );
 
--固定背景の場合のみ
-- ** 黒背景 ** --
--entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
--setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );
 
changeAnime( spep_N + 0, 1, 107 );
 
setMoveKey( spep_N + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, -28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, -32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, -37.2, -57.6 , 0 );
 
setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
 
setRotateKey( spep_N + 0, 1, -354.8 );
setRotateKey( spep_N + 2, 1, -122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, -1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, 120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, 242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, 364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, 486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, 607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, 729.5 );
setRotateKey( spep_N + 112, 1, 729.5 );
 
-- ** 音 ** --
--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);
 
-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開始・セリフカットイン→カードカットイン ef_001r
------------------------------------------------------
MAX_FRAME_0 = 136;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001r, 0x80, -1, 0, 0, 0 );  -- 開始・セリフカットイン→カードカットイン ef_001r
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 80 );

-----------------------------
-- 顔カットイン
-----------------------------
--spep_x = spep_0 + 50;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -70, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -70, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -70, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1161, "",spep_0 + 152, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 68 );
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 79 );
setPitch( spep_0 + 0, SE002, -400 );
setTimeStretch( SE002, 0.73, 30, 4 );
SE003 = playSeVer2( spep_0 + 20, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE003, 79 );
setPitch( spep_0 + 20, SE003, -400 );
setTimeStretch( SE003, 0.73, 30, 4 );
SE004 = playSeVer2( spep_0 + 44, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44, SE004, 79 );
setPitch( spep_0 + 44, SE004, -400 );
setTimeStretch( SE004, 0.73, 30, 4 );
SE007 = playSeVer2( spep_0 + 68, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68, SE007, 79 );
setPitch( spep_0 + 68, SE007, -400 );
setTimeStretch( SE007, 0.73, 30, 4 );
SE008 = playSeVer2( spep_0 + 92, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE008, 79 );
setPitch( spep_0 + 92, SE008, -400 );
setTimeStretch( SE008, 0.73, 30, 4 );
SE009 = playSeVer2( spep_0 + 116, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE009, 79 );
setPitch( spep_0 + 116, SE009, -400 );
setTimeStretch( SE009, 0.73, 30, 4 );

--気ダメ
SE005 = playSeVer2( spep_0 + 48, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE005, 71 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 136

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 1);

-- ** 音 ** --
--気弾溜め
SE011 = playSeVer2( spep_1 + 92, 1200, "",spep_2 + 58, 0, 22, -1);
SE012 = playSeVer2( spep_1 + 92, 1204, "",spep_2 + 52, 0, 18, -1);
SE013 = playSeVer2( spep_1 + 92, 1224, "", 0, 0, 0, -1);

------------------------------------------------------
-- カードカットイン→敵にヒット ef_002r
------------------------------------------------------
MAX_FRAME_2 = 192;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );  -- カードカットイン→敵にヒット ef_002r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );

SP_02b = entryEffect( spep_2 + 0, SP_002br, 0x80, -1, 0, 0, 0 );  -- カードカットイン→敵にヒット ef_002br
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 80 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 126 + OFFSET_X, 1, 1 );
--setDisp( spep_2 + 192 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 126 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 126 + OFFSET_X, 1, 0.1, -44.4 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 0.1, -44.4 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -15.9, -60 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -15.9, -60 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -15.8, -43.7 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -15.8, -43.7 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 0.2, -59.5 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 0.2, -59.5 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -7.7, -51.1 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -7.7, -51.1 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 0.3, -42.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 0.3, -42.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -15.4, -53.7 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -15.4, -53.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -15.1, -33 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -15.1, -33 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 1.2, -44.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 1.2, -44.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -6.6, -32.7 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -6.6, -32.7 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 1.7, -21.2 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 1.7, -21.2 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -14.1, -34.1 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -14.1, -34.1 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -13.9, -15.3 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -13.9, -15.3 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 2.2, -28.9 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 2.2, -28.9 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -5.7, -19 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -5.7, -19 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 2.4, -9.3 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 2.4, -9.3 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -13.5, -24 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -13.5, -24 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -13.4, -7.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -13.4, -7.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 2.7, -22.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 2.7, -22.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -5.3, -14.2 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -5.3, -14.2 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 2.8, -6.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 2.8, -6.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -13.2, -22.1 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -13.2, -22.1 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -13.2, -6 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -13.2, -6 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 2.8, -21.9 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 2.8, -21.9 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -5.1, -13.8 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -5.1, -13.8 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 2.9, -5.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 2.9, -5.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -13.1, -21.8 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -13.1, -21.8 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -13.1, -5.8 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -13.1, -5.8 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 2.9, -21.8 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 2.9, -21.8 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -5.1, -13.8 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -5.1, -13.8 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 2.9, -5.8 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 2.9, -5.8 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -13.1, -21.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -13.1, -21.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -5.1, -13.8 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -5.1, -13.8 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 2.9, -5.8 , 0 );

setScaleKey( spep_2 + 126 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 3.63, 3.63 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 3.58, 3.58 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 3.47, 3.47 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 3.29, 3.29 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 3.06, 3.06 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.97, 1.97 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 1.45, 1.45 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.36, 1.36 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 1.1, 1.1 );

setRotateKey( spep_2 + 126 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -16.2 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, -16.1 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, -16 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -16 );

setBlendColor( spep_2 + 126 + OFFSET_X, 1, 3, 0, 0, 0, 0 );
setBlendColor( spep_2 + 128 + OFFSET_X, 1, 3, 0, 0, 0, 0.1 );
setBlendColor( spep_2 + 130 + OFFSET_X, 1, 3, 0, 0, 0, 0.15 );
setBlendColor( spep_2 + 132 + OFFSET_X, 1, 3, 0, 0, 0, 0.2 );
setBlendColor( spep_2 + 134 + OFFSET_X, 1, 3, 0, 0, 0, 0.45 );
setBlendColor( spep_2 + 136 + OFFSET_X, 1, 3, 0, 0, 0, 0.7 );
setBlendColor( spep_2 + 148 + OFFSET_X, 1, 3, 0, 0, 0, 0.8 );
setBlendColor( spep_2 + 160 + OFFSET_X, 1, 3, 0, 0, 0, 0.9 );
setBlendColor( spep_2 + 162 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_2 + 192 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--気弾発射
SE014 = playSeVer2( spep_2 + 30, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 30, 1145, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 30, 1177, "", 0, 0, 0, -1);

--気弾飛んでいく
SE017 = playSeVer2( spep_2 + 48, 1128, "",spep_2 + 222, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 48, SE017, 56 );
setPitch( spep_2 + 48, SE017, 1200 );
setTimeStretch( SE017, 1.8, 30, 4 );
SE018 = playSeVer2( spep_2 + 48, 1215, "",spep_2 + 222, 0, 34, -1);
setSeVolumeByWorkId( spep_2 + 48, SE018, 53 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 100;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);

pauseAll( SP_dodge, 67);

setBlendColor( SP_dodge + 2 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--爆発
SE019 = playSeVer2( spep_2 + 180, 1023, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2;  -- 192

------------------------------------------------------
-- 「ガッ」 ef_003
------------------------------------------------------
-- ** ひび割れ ** --
finish_1f = entryEffect( spep_N + 4, 1600, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_N + 4, finish_1f, 20, -120 , 0 );
setEffMoveKey( spep_N + 112, finish_1f, 20, -120 , 0 );
setEffScaleKey( spep_N + 4, finish_1f, 1.3, 1.3 );
setEffScaleKey( spep_N + 112, finish_1f, 1.3, 1.3 );
setEffRotateKey( spep_N + 4, finish_1f, 0 );
setEffRotateKey( spep_N + 112, finish_1f, 0 );
setEffAlphaKey( spep_N + 4, finish_1f, 255 );
setEffAlphaKey( spep_N + 112, finish_1f, 255 );
 
-- 背景差し替えがある場合のみ
finish_1b = entryEffect( spep_N + 0, SP_003br , 0x80, -1, 0, 0, 0 );  --ガッ 差し替え背景(ef_003br)
setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
setEffRotateKey( spep_N + 0, finish_1b, 0 );
setEffRotateKey( spep_N + 112, finish_1b, 0 );
setEffAlphaKey( spep_N + 0, finish_1b, 255 );
setEffAlphaKey( spep_N + 112, finish_1b, 255 );
 
-- ** 爆発 ** --
--[[
bakuhatsu = entryEffect( spep_N + 0, 1509, 0x80, -1, 0, 0, 0 );  --爆発
setEffMoveKey( spep_N + 0, bakuhatsu, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, bakuhatsu, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 0, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 1, bakuhatsu, 0.7, 0.7 );
setEffScaleKey( spep_N + 2, bakuhatsu, 0.85, 0.85 );
setEffScaleKey( spep_N + 3, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 4, bakuhatsu, 0.8, 0.8 );
setEffScaleKey( spep_N + 6, bakuhatsu, 0.9, 0.9 );
setEffScaleKey( spep_N + 112, bakuhatsu, 0.9, 0.9 );
 
setEffRotateKey( spep_N + 0, bakuhatsu, 0 );
setEffRotateKey( spep_N + 112, bakuhatsu, 0 );
 
setEffAlphaKey( spep_N + 0, bakuhatsu, 255 );
setEffAlphaKey( spep_N + 112, bakuhatsu, 255 );
]]
 
-- ** 集中線 ** --
--[[
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );
 
setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常
--setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
--setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1.5 ); -- 縦長演出（21:9）
 
setEffRotateKey( spep_N + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_N + 46, shuchusen_wh, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_N + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_N + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_N + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_N + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_N + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_N + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_N + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_N + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_N + 46, shuchusen_wh, 0 );
]]

--[[
shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );
 
setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );
 
setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );
 
setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );
]]

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_N + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_N + 14, ctga, 14, 20 );
 
setEffMoveKey( spep_N + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_N + 112, ctga, 3.9, 316.1 , 0 );
 
setEffScaleKey( spep_N + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_N + 112, ctga, 3.2, 3.2 );
 
setEffRotateKey( spep_N + 14, ctga, -10.9 );
setEffRotateKey( spep_N + 15, ctga, -10.9 );
setEffRotateKey( spep_N + 16, ctga, -14.9 );
setEffRotateKey( spep_N + 17, ctga, -14.9 );
setEffRotateKey( spep_N + 18, ctga, -10.9 );
setEffRotateKey( spep_N + 19, ctga, -10.9 );
setEffRotateKey( spep_N + 20, ctga, -14.9 );
setEffRotateKey( spep_N + 21, ctga, -14.9 );
setEffRotateKey( spep_N + 22, ctga, -10.9 );
setEffRotateKey( spep_N + 23, ctga, -10.9 );
setEffRotateKey( spep_N + 24, ctga, -14.9 );
setEffRotateKey( spep_N + 25, ctga, -14.9 );
setEffRotateKey( spep_N + 26, ctga, -10.9 );
setEffRotateKey( spep_N + 27, ctga, -10.9 );
setEffRotateKey( spep_N + 28, ctga, -14.9 );
setEffRotateKey( spep_N + 112, ctga, -14.9 );
 
setEffAlphaKey( spep_N + 14, ctga, 255 );
setEffAlphaKey( spep_N + 112, ctga, 255 );
 
--固定背景の場合のみ
-- ** 黒背景 ** --
--entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 255);  --黒　背景
 
-- ** 敵キャラクター ** --
--setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );
 
changeAnime( spep_N + 0, 1, 7 );
 
setMoveKey( spep_N + 0, 1, 21.8, 10.7, 0 );
setMoveKey( spep_N + 2, 1, 8.2, -19.3 , 0 );
setMoveKey( spep_N + 4 + OFFSET_X, 1, 12.5, -24.9 , 0 );
setMoveKey( spep_N + 6 + OFFSET_X, 1, 16.6, -29.9 , 0 );
setMoveKey( spep_N + 8 + OFFSET_X, 1, 20.2, -35.6 , 0 );
setMoveKey( spep_N + 10 + OFFSET_X, 1, 24.9, -41.3 , 0 );
setMoveKey( spep_N + 12 + OFFSET_X, 1, 28.8, -46 , 0 );
setMoveKey( spep_N + 14 + OFFSET_X, 1, 32.3, -52 , 0 );
setMoveKey( spep_N + 16 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 18 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 20 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 22 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 24 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 26 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 28 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 30 + OFFSET_X, 1, 37.3, -57.6 , 0 );
setMoveKey( spep_N + 32 + OFFSET_X, 1, 37.2, -57.6 , 0 );
setMoveKey( spep_N + 112, 1, 37.2, -57.6 , 0 );
 
setScaleKey( spep_N + 0, 1, 0.16, 0.16 );
setScaleKey( spep_N + 2, 1, 0.2, 0.2 );
setScaleKey( spep_N + 4 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_N + 6 + OFFSET_X, 1, 0.635, 0.635 );
setScaleKey( spep_N + 8 + OFFSET_X, 1, 0.855, 0.855 );
setScaleKey( spep_N + 10 + OFFSET_X, 1, 1.075, 1.07 );
setScaleKey( spep_N + 12 + OFFSET_X, 1, 1.295, 1.29 );
setScaleKey( spep_N + 14 + OFFSET_X, 1, 1.51, 1.505 );
setScaleKey( spep_N + 16 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 18 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 20 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 22 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 24 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 26 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 28 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 30 + OFFSET_X, 1, 1.905, 1.9 );
setScaleKey( spep_N + 32 + OFFSET_X, 1, 1.73, 1.725 );
setScaleKey( spep_N + 112, 1, 1.73, 1.725 );
 
setRotateKey( spep_N + 0, 1, 354.8 );
setRotateKey( spep_N + 2, 1, 122.8 );
setRotateKey( spep_N + 4 + OFFSET_X, 1, 1 );
setRotateKey( spep_N + 6 + OFFSET_X, 1, -120.7 );
setRotateKey( spep_N + 8 + OFFSET_X, 1, -242.5 );
setRotateKey( spep_N + 10 + OFFSET_X, 1, -364.3 );
setRotateKey( spep_N + 12 + OFFSET_X, 1, -486 );
setRotateKey( spep_N + 14 + OFFSET_X, 1, -607.8 );
setRotateKey( spep_N + 16 + OFFSET_X, 1, -729.5 );
setRotateKey( spep_N + 112, 1, -729.5 );
 
-- ** 音 ** --
--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);
 
-- -- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 終了フレーム

end
