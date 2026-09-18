--1032490:UR_超サイヤ人トランクス(GT)(寄生)_必殺技：フィニッシュバスター
--sp_effect_a2_00271
--sp2960

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 164183; --気をためるトランクス ef_001
SP_02  = 164185; --気を飛ばす ef_002
SP_02b = 164186; --気を飛ばす ef_002b

--エフェクト(敵)
SP_01r  = 164184; --気をためるトランクス ef_001r
SP_02r  = 164187; --気を飛ばす ef_002r
SP_02br = 164188; --気を飛ばす ef_002br

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
-- 気をためるトランクス
-------------------------------------------------
MAX_FRAME_0 = 160;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 気をためるトランクス(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 74;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -40, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -40, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -40, 515.5 , 0 );
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

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
-- ** 音 ** --

--気ダメ
SE001 = playSeVer2( spep_0 + 32, 1035, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 32, 1503, "", 0, 0, 0, -1);
--オーラ
SE003 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE003, 63 );
SE004 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE004, 63 );
--顔カットイン
--SE005 = playSeVer2( spep_0 + 80, 1018, "", 0, 0, 0, -1);
--気弾溜め
SE006 = playSeVer2( spep_0 + 94, 1227, "",spep_0 + 190, 0, 20, -1);
--オーラ
SE007 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE007, 63 );
--気弾溜め
SE008 = playSeVer2( spep_0 + 96, 1296, "",spep_0 + 188, 0, 22, -1);
SE009 = playSeVer2( spep_0 + 98, 1295, "",spep_0 + 190, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 98, SE009, 153 );
--オーラ
SE010 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE010, 63 );
SE011 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE011, 63 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 160

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 1);

-------------------------------------------------
-- 気を飛ばす
-------------------------------------------------
MAX_FRAME_2 = 216;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気を飛ばす(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 気を飛ばす(ef_002b)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --

setDisp( spep_2 + 120 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 206 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 120 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 180 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 120 + OFFSET_X, 1, 244.1, -29.3 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 244.1, -29.3 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 252.7, -20 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 252.7, -20 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 243.3, -26.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 243.3, -26.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 249.9, -21.4 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 249.9, -21.4 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 240.5, -28.1 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 240.5, -28.1 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 247.1, -22.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 247.1, -22.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 237.7, -29.6 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 237.7, -29.6 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 244.3, -24.3 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 244.3, -24.3 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 234.9, -31 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 234.9, -31 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 241.5, -25.7 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 241.5, -25.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 232.1, -32.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 232.1, -32.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 238.7, -27.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 238.7, -27.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 229.3, -33.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 229.3, -33.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 235.9, -28.5 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 235.9, -28.5 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 226.5, -35.2 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 226.5, -35.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 233.1, -29.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 233.1, -29.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 223.7, -36.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 223.7, -36.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 230.3, -31.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 230.3, -31.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 220.8, -38 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 220.8, -38 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 227.4, -32.7 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 227.4, -32.7 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 218, -39.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 218, -39.4 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 224.6, -34.1 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 224.6, -34.1 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 215.2, -40.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 215.2, -40.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 221.8, -35.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 221.8, -35.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 212.4, -42.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 212.4, -42.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 219, -36.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 219, -36.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 209.6, -43.6 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 209.6, -43.6 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 216.2, -38.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 216.2, -38.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 206.8, -45 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 206.8, -45 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 213.4, -39.7 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 213.4, -39.7 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 205.4, -45.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 205.4, -45.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 213.3, -39.7 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 213.3, -39.7 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 205.4, -45.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 205.4, -45.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 214.7, -39.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 214.7, -39.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 211.1, -44.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 211.1, -44.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 227.1, -37.6 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 227.1, -37.6 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 231.3, -41.7 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 231.3, -41.7 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 256.4, -33 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 256.4, -33 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 271.1, -35.5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 271.1, -35.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 308.1, -25 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 308.1, -25 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 336.3, -25.4 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 336.3, -25.4 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 388.7, -12.5 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 388.7, -12.5 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 434.2, -10.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 434.2, -10.1 , 0 );

setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 0.56, 0.56 );

setRotateKey( spep_2 + 120 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 9 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 9 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 5.8 );

-- ** 音 ** --

--気弾発射
SE013 = playSeVer2( spep_2 + 4, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE013, 82 );
SE014 = playSeVer2( spep_2 + 4, 1022, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 4, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE015, 78 );
--気弾飛んでいく
SE016 = playSeVer2( spep_2 + 58, 1353, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 120, 1021, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 138, 1353, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 138, SE018, 71 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 168; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);

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

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2;--216


---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------

-- ** 画面手前衝突(ガッ)演出のテンプレ ** --

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
--finish_1b = entryEffectLife( spep_N + 0, SP_02b , spep_N + 108, 0x80, -1, 0, 0, 0 );  --ガッの背景(ef_002b)
--setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
--setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
--setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
--setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
--setEffRotateKey( spep_N + 0, finish_1b, 0 );
--setEffRotateKey( spep_N + 112, finish_1b, 0 );
--setEffAlphaKey( spep_N + 0, finish_1b, 255 );
--setEffAlphaKey( spep_N + 112, finish_1b, 255 );

-- ** 爆発 ** --
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

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常

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

shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );

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
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 192);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );

changeAnime( spep_N + 0, 1, 107 );

--真ん中から飛んでくる場合
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

--ここまで

-- ** 音 ** --
--爆発
SE0N1 = playSeVer2( spep_2 + 206, 1023, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 108

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- 気をためるトランクス
-------------------------------------------------
MAX_FRAME_0 = 160;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01r, 0x80, -1, 0, 0, 0); -- 気をためるトランクス(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 74;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -40, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -40, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -40, 515.5 , 0 );
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

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
-- ** 音 ** --

--気ダメ
SE001 = playSeVer2( spep_0 + 32, 1035, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 32, 1503, "", 0, 0, 0, -1);
--オーラ
SE003 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE003, 63 );
SE004 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE004, 63 );
--顔カットイン
--SE005 = playSeVer2( spep_0 + 80, 1018, "", 0, 0, 0, -1);
--気弾溜め
SE006 = playSeVer2( spep_0 + 94, 1227, "",spep_0 + 190, 0, 20, -1);
--オーラ
SE007 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE007, 63 );
--気弾溜め
SE008 = playSeVer2( spep_0 + 96, 1296, "",spep_0 + 188, 0, 22, -1);
SE009 = playSeVer2( spep_0 + 98, 1295, "",spep_0 + 190, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 98, SE009, 153 );
--オーラ
SE010 = playSeVer2( spep_0 + 120, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE010, 63 );
SE011 = playSeVer2( spep_0 + 144, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 144, SE011, 63 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 160

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 1);

-------------------------------------------------
-- 気を飛ばす
-------------------------------------------------
MAX_FRAME_2 = 216;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 気を飛ばす(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

finish_b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- 気を飛ばす(ef_002br)
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_b, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_b, 0);
setEffAlphaKey( spep_2 + 0, finish_b, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_b, 255);

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --

setDisp( spep_2 + 120 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 206 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 120 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 180 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 120 + OFFSET_X, 1, 244.1, -29.3 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 244.1, -29.3 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 252.7, -20 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 252.7, -20 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 243.3, -26.7 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 243.3, -26.7 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 249.9, -21.4 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 249.9, -21.4 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 240.5, -28.1 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 240.5, -28.1 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 247.1, -22.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 247.1, -22.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 237.7, -29.6 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 237.7, -29.6 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 244.3, -24.3 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 244.3, -24.3 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 234.9, -31 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 234.9, -31 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 241.5, -25.7 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 241.5, -25.7 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 232.1, -32.4 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 232.1, -32.4 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 238.7, -27.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 238.7, -27.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 229.3, -33.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 229.3, -33.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 235.9, -28.5 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 235.9, -28.5 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 226.5, -35.2 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 226.5, -35.2 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 233.1, -29.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 233.1, -29.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 223.7, -36.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 223.7, -36.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 230.3, -31.3 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 230.3, -31.3 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 220.8, -38 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 220.8, -38 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 227.4, -32.7 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 227.4, -32.7 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 218, -39.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 218, -39.4 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 224.6, -34.1 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 224.6, -34.1 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 215.2, -40.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 215.2, -40.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 221.8, -35.5 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 221.8, -35.5 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 212.4, -42.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 212.4, -42.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 219, -36.9 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 219, -36.9 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 209.6, -43.6 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 209.6, -43.6 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 216.2, -38.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 216.2, -38.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 206.8, -45 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 206.8, -45 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 213.4, -39.7 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 213.4, -39.7 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 205.4, -45.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 205.4, -45.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 213.3, -39.7 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 213.3, -39.7 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 205.4, -45.7 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 205.4, -45.7 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 214.7, -39.5 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 214.7, -39.5 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 211.1, -44.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 211.1, -44.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 227.1, -37.6 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 227.1, -37.6 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 231.3, -41.7 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 231.3, -41.7 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 256.4, -33 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 256.4, -33 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 271.1, -35.5 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 271.1, -35.5 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 308.1, -25 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 308.1, -25 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 336.3, -25.4 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 336.3, -25.4 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 388.7, -12.5 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 388.7, -12.5 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 434.2, -10.1 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 434.2, -10.1 , 0 );

setScaleKey( spep_2 + 120 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 1.72, 1.72 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.08, 2.08 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.33, 2.33 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 0.56, 0.56 );

setRotateKey( spep_2 + 120 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 9 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 9 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 6 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 5.8 );

-- ** 音 ** --

--気弾発射
SE013 = playSeVer2( spep_2 + 4, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE013, 82 );
SE014 = playSeVer2( spep_2 + 4, 1022, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 4, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE015, 78 );
--気弾飛んでいく
SE016 = playSeVer2( spep_2 + 58, 1353, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 120, 1021, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 138, 1353, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 138, SE018, 71 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 168; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
stopSe( SP_dodge - 12, SE017, 0);
stopSe( SP_dodge - 12, SE018, 0);

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

-- ** 次の準備 ** --
spep_N = spep_2 + MAX_FRAME_2;--216


---------------------------------------------------------------------------------------------------
-- ガラスに激突
---------------------------------------------------------------------------------------------------

-- ** 画面手前衝突(ガッ)演出のテンプレ ** --

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
--finish_1b = entryEffectLife( spep_N + 0, SP_02b , spep_N + 108, 0x80, -1, 0, 0, 0 );  --ガッの背景(ef_002b)
--setEffMoveKey( spep_N + 0, finish_1b, 0, 0 , 0 );
--setEffMoveKey( spep_N + 112, finish_1b, 0, 0 , 0 );
--setEffScaleKey( spep_N + 0, finish_1b, 1.0, 1.0 );
--setEffScaleKey( spep_N + 112, finish_1b, 1.0, 1.0 );
--setEffRotateKey( spep_N + 0, finish_1b, 0 );
--setEffRotateKey( spep_N + 112, finish_1b, 0 );
--setEffAlphaKey( spep_N + 0, finish_1b, 255 );
--setEffAlphaKey( spep_N + 112, finish_1b, 255 );

-- ** 爆発 ** --
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

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_N + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_N + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_N + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_N + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_wh, 1, 1 ); -- 通常
setEffScaleKey( spep_N + 46, shuchusen_wh, 1, 1 ); -- 通常

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

shuchusen_bl = entryEffectLife( spep_N + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_N + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_N + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_N + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_N + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_N + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_N + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_N + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_N + 112, shuchusen_bl, 255 );

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
entryFadeBg( spep_N + 0, 0, 112 +2, 0, 0, 0, 0, 192);  --黒 背景

-- ** 敵キャラクター ** --
setDisp( spep_N + 0, 1, 1 );
setDisp( spep_N + 112, 1, 0 );

changeAnime( spep_N + 0, 1, 107 );

--真ん中から飛んでくる場合
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

--ここまで

-- ** 音 ** --
--爆発
SE0N1 = playSeVer2( spep_2 + 206, 1023, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_N + 4, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_N + 4, 1054, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_N + 6 ); -- ダメージ表示フレーム
endPhase( spep_N + 108 ); -- 108


end