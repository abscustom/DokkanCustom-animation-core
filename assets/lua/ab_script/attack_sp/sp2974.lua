--4032780:LR_超サイヤ人孫悟空_必殺技：超メテオスマッシュ
--sp_effect_b1_00362
--sp2974

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(共通)
SP_01  = 164398; --カード後のみ ef_002

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

ENABLE_AUTO_TIME_STRETCH(0.74);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0 = 0;
        spep_1 = spep_0 + 340;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 488);  -- スキップ先フレーム指定
        setupMovie(spep_2 + 488, SP_01, spep_2 + 488 - 1 + 2, 1);

        -- ** 音 ** --
        --飛行音
        SE055 = playSeVer2( spep_2 + 488 + 3, 1019, "",spep_2 + 550, 0, 28, -1);

        --オーラ
        SE054 = playSeVer2( spep_2 + 488 + 3, 1036, "", 0, 0, 0, -1);
        setSeVolumeByWorkId( spep_2 + 488 + 3, SE054, 32 );

    else 

        setupMovie(0 , SP_01, 0, 1);

    end
------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭 ~ カードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 340;

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 132;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
-- ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
-- setEffShake( spep_x + 16, ctgogo, 68, 10 );
-- setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
-- setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
-- setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
-- setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
-- setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
-- setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
-- setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
-- setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
-- setEffRotateKey( spep_x + 16, ctgogo, 0 );
-- setEffRotateKey( spep_x + 84, ctgogo, 0 );
-- setEffAlphaKey( spep_x + 16, ctgogo, 255 );
-- setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 364, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--腕あげる
SE002 = playSeVer2( spep_0 + 4, 1116, "",spep_0 + 62, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 4, SE002, 56 );

--オーラ
SE003 = playSeVer2( spep_0 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE003, 25 );
SE004 = playSeVer2( spep_0 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE004, 40 );
SE005 = playSeVer2( spep_0 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE005, 63 );
SE007 = playSeVer2( spep_0 + 108, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE007, 63 );
SE008 = playSeVer2( spep_0 + 132, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE008, 63 );
SE010 = playSeVer2( spep_0 + 156, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE010, 63 );
SE011 = playSeVer2( spep_0 + 180, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE011, 63 );
SE015 = playSeVer2( spep_0 + 204, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 204, SE015, 63 );
SE017 = playSeVer2( spep_0 + 228, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 228, SE017, 63 );
SE018 = playSeVer2( spep_0 + 252, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE018, 63 );
SE019 = playSeVer2( spep_0 + 276, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 276, SE019, 63 );
SE020 = playSeVer2( spep_0 + 300, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 300, SE020, 63 );
SE021 = playSeVer2( spep_0 + 324, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 324, SE021, 63 );

--ズーム
SE006 = playSeVer2( spep_0 + 90, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE006, 76 );

--気ダメ
SE012 = playSeVer2( spep_0 + 198, 1258, "",spep_0 + 364, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 198, SE012, 71 );
SE013 = playSeVer2( spep_0 + 198, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE013, 83 );
SE014 = playSeVer2( spep_0 + 198, 1503, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 218, 1504, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 218, SE016, 84 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 340f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--オーラ
SE024 = playSeVer2( spep_1 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE024, 40 );


-------------------------------------------------
-- カード後のみ
-------------------------------------------------
MAX_FRAME_2 = 662;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カード後のみ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 140 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 196 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 140 + OFFSET_X, 1, 102 );
changeAnime( spep_2 + 172 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 140 + OFFSET_X, 1, 114.6, -288.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 114.6, -288.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 115.6, -291 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 115.6, -291 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 116.4, -293.4 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 116.4, -293.4 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 117.2, -295.5 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 117.2, -295.5 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 117.8, -297.3 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 117.8, -297.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 118.4, -298.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 118.4, -298.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 118.8, -300.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 118.8, -300.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 119.2, -301.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 119.2, -301.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 119.4, -301.8 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 119.4, -301.8 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 119.6, -302.3 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 119.6, -302.3 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 119.6, -302.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 119.6, -302.4 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 126.8, -333.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 126.8, -333.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 132.4, -357.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 132.4, -357.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 136.4, -374.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 136.4, -374.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 138.8, -385.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 138.8, -385.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 139.7, -388.7 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 139.7, -388.7 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 52, -387.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 52, -387.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 149.4, -427 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 149.4, -427 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 261.1, -512 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 261.1, -512 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 367, -572.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 367, -572.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 429.9, -617.8 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 429.9, -617.8 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 496.9, -653.8 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 496.9, -653.8 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 534.7, -677.8 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 534.7, -677.8 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 581.5, -705.7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 581.5, -705.7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 601.3, -721.3 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 601.3, -721.3 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 636, -737.6 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 636, -737.6 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 647.7, -752.3 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 647.7, -752.3 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 671.9, -760.7 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 671.9, -760.7 , 0 );

setScaleKey( spep_2 + 140 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 3.83, 3.83 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 3.83, 3.83 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 3.6, 3.6 );

setRotateKey( spep_2 + 140 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -56 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -56 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -47.4 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -47.4 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -34.1 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -34.1 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -16.5 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -16.5 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -1.8 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 1.4 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 4 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 6.1 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 8 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 8 );


--敵の動き2
setDisp( spep_2 + 214 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 300 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 214 + OFFSET_X, 1, 5 );

setMoveKey( spep_2 + 214 + OFFSET_X, 1, -667.1, 490.8 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, -667.1, 490.8 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, -199.4, 242.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, -199.4, 242.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, -51.7, 164.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, -51.7, 164.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 42, 114.3 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 42, 114.3 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 107.3, 79.6 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 107.3, 79.6 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 154.3, 54.7 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 154.3, 54.7 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 185.1, 38.3 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 185.1, 38.3 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 203.3, 28.7 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 203.3, 28.7 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 214.2, 22.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 214.2, 22.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 221.1, 19.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 221.1, 19.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 226.3, 16.4 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 226.3, 16.4 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 231.3, 13.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 231.3, 13.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 237.4, 10.5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 237.4, 10.5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 245.5, 6.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 245.5, 6.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 248.8, 4.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 248.8, 4.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 251.9, 2.3 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 251.9, 2.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 254.9, 0.6 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 254.9, 0.6 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 257.7, -1.1 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 257.7, -1.1 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 260.3, -2.7 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 260.3, -2.7 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 262.8, -4.1 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 262.8, -4.1 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 265.1, -5.5 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 265.1, -5.5 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 267.3, -6.9 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 267.3, -6.9 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 269.4, -8.1 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 269.4, -8.1 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 271.4, -9.3 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 271.4, -9.3 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 273.2, -10.4 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 273.2, -10.4 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 275, -11.4 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 275, -11.4 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 276.6, -12.4 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 276.6, -12.4 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 278.1, -13.3 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 278.1, -13.3 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 279.6, -14.2 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 279.6, -14.2 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 280.9, -15 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 280.9, -15 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 282.2, -15.8 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 282.2, -15.8 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 283.4, -16.5 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 283.4, -16.5 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 284.5, -17.2 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 284.5, -17.2 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 285.6, -17.8 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 285.6, -17.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 286.6, -18.4 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 286.6, -18.4 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 287.5, -19 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 287.5, -19 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 288.4, -19.5 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 288.4, -19.5 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 289.2, -20 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 289.2, -20 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 289.9, -20.4 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 289.9, -20.4 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 290.6, -20.8 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 290.6, -20.8 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 291.3, -21.2 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 291.3, -21.2 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 291.9, -21.6 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 291.9, -21.6 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 288.4, -21.9 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 288.4, -21.9 , 0 );

setScaleKey( spep_2 + 214 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 0.06, 0.06 );

setRotateKey( spep_2 + 214 + OFFSET_X, 1, 57 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, 57 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, 72.6 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, 72.6 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, 77.6 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, 77.6 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, 80.7 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, 80.7 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, 82.9 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, 82.9 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, 84.5 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, 84.5 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, 85.5 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, 85.5 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, 86.1 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, 86.1 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 86.5 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, 86.5 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 86.7 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, 86.7 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, 86.9 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, 86.9 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, 87 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, 87.2 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, 87.2 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, 87.5 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, 87.5 );


--敵の動き3
setDisp( spep_2 + 364 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 454 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 364 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 436 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 364 + OFFSET_X, 1, -1190.8, -1194.1 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, -1190.8, -1194.1 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -977.5, -986.1 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -977.5, -986.1 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, -792.7, -805.9 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, -792.7, -805.9 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, -636.2, -653.4 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, -636.2, -653.4 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, -600.2, -613.2 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, -600.2, -613.2 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -564.2, -573 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -564.2, -573 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, -528.2, -532.7 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, -528.2, -532.7 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -492.2, -492.5 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -492.2, -492.5 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, -456.2, -452.3 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, -456.2, -452.3 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, -420.2, -412.1 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, -420.2, -412.1 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, -384.2, -371.8 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, -384.2, -371.8 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -348.2, -331.6 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -348.2, -331.6 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, -312.2, -291.4 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, -312.2, -291.4 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, -276.2, -251.2 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, -276.2, -251.2 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, -240.2, -210.9 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, -240.2, -210.9 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, -204.2, -170.7 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, -204.2, -170.7 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, -168.1, -130.5 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, -168.1, -130.5 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, -70.4, -55.7 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, -70.4, -55.7 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 27.4, 19.1 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 27.4, 19.1 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 125.1, 93.8 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 125.1, 93.8 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 222.9, 168.6 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 222.9, 168.6 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 234.7, 74.8 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 234.7, 74.8 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 173.8, 26.4 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 173.8, 26.4 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, 168.4, 30 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, 168.4, 30 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 172, 22.8 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 172, 22.8 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, 156.4, 22.4 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, 156.4, 22.4 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 151, 26 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 151, 26 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, -11.5, 362.2 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, -11.5, 362.2 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 170.4, 528.5 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 170.4, 528.5 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 189.9, 592.9 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 189.9, 592.9 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 234.3, 311.5 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 234.3, 311.5 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 183.6, 210.2 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 183.6, 210.2 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 147.4, 138.7 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 147.4, 138.7 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 53.3, -19.1 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 53.3, -19.1 , 0 );

setScaleKey( spep_2 + 364 + OFFSET_X, 1, 6.62, 6.62 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 6.62, 6.62 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 3.79, 3.79 );

setRotateKey( spep_2 + 364 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 407 + OFFSET_X, 1, -10 );
setRotateKey( spep_2 + 408 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 419 + OFFSET_X, 1, -5 );
setRotateKey( spep_2 + 420 + OFFSET_X, 1, 26 );
setRotateKey( spep_2 + 425 + OFFSET_X, 1, 26 );
setRotateKey( spep_2 + 426 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 435 + OFFSET_X, 1, 45 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, 117.8 );
setRotateKey( spep_2 + 443 + OFFSET_X, 1, 117.8 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, 117.9 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, 117.9 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, 117.8 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, 117.8 );


--敵の動き4
setDisp( spep_2 + 460 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 534 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 460 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 508 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 534 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 460 + OFFSET_X, 1, 18.2, -97.3 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 18.2, -97.3 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 23.6, -113.5 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 23.6, -113.5 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 5.6, -101.5 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 5.6, -101.5 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 23.6, -95.5 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 23.6, -95.5 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 23.6, -113.5 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 23.6, -113.5 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 5.6, -101.5 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 5.6, -101.5 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 23.6, -95.5 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 23.6, -95.5 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 23.6, -113.5 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 23.6, -113.5 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 5.6, -101.5 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 5.6, -101.5 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 23.6, -95.5 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 23.6, -95.5 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 23.6, -113.5 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 23.6, -113.5 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 5.6, -101.5 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 5.6, -101.5 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 23.6, -95.5 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 23.6, -95.5 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 23.6, -113.5 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 23.6, -113.5 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 21.3, -89.6 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 21.3, -89.6 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 33.1, -67.6 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 33.1, -67.6 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 44.9, -45.6 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 44.9, -45.6 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 47.8, -41.1 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 47.8, -41.1 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 50.6, -36.5 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 50.6, -36.5 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 53.4, -31.9 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 53.4, -31.9 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 56.2, -27.4 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 56.2, -27.4 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 59.1, -22.8 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 59.1, -22.8 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 61.9, -18.3 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 61.9, -18.3 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 64.7, -13.7 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 64.7, -13.7 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 35.7, 17.9 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 35.7, 17.9 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, -5.8, -56.4 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, -5.8, -56.4 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 8.1, -32.8 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 8.1, -32.8 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 14.4, -67.4 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 14.4, -67.4 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, -20.4, -82.5 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, -20.4, -82.5 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, -29.8, -82.2 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, -29.8, -82.2 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, -330.3, -563 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, -330.3, -563 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, -405.8, -700.6 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, -405.8, -700.6 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, -499.2, -808.3 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, -499.2, -808.3 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, -556.7, -922 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, -556.7, -922 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, -632.1, -1059.7 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, -632.1, -1059.7 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, -725.6, -1167.4 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, -725.6, -1167.4 , 0 );

setScaleKey( spep_2 + 460 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 507 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 508 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 511 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 512 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 523 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 534 + OFFSET_X, 1, 3.9, 3.9 );

setRotateKey( spep_2 + 460 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 507 + OFFSET_X, 1, 76 );
setRotateKey( spep_2 + 508 + OFFSET_X, 1, 118 );
setRotateKey( spep_2 + 511 + OFFSET_X, 1, 118 );
setRotateKey( spep_2 + 512 + OFFSET_X, 1, 117.9 );
setRotateKey( spep_2 + 523 + OFFSET_X, 1, 117.9 );
setRotateKey( spep_2 + 524 + OFFSET_X, 1, 130.7 );
setRotateKey( spep_2 + 525 + OFFSET_X, 1, 130.7 );
setRotateKey( spep_2 + 526 + OFFSET_X, 1, 143.5 );
setRotateKey( spep_2 + 527 + OFFSET_X, 1, 143.5 );
setRotateKey( spep_2 + 528 + OFFSET_X, 1, 156.3 );
setRotateKey( spep_2 + 529 + OFFSET_X, 1, 156.3 );
setRotateKey( spep_2 + 530 + OFFSET_X, 1, 169.2 );
setRotateKey( spep_2 + 531 + OFFSET_X, 1, 169.2 );
setRotateKey( spep_2 + 532 + OFFSET_X, 1, 182 );
setRotateKey( spep_2 + 534 + OFFSET_X, 1, 182 );

setBlendColor( spep_2 + 508 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_2 + 512 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--オーラ
SE025 = playSeVer2( spep_2 + 14, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE025, 40 );
SE028 = playSeVer2( spep_2 + 38, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 38, SE028, 40 );
SE029 = playSeVer2( spep_2 + 62, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE029, 40 );

--飛び立つ
SE026 = playSeVer2( spep_2 + 28, 1068, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 28, 1117, "", 0, 0, 0, -1);

--飛行音
SE030 = playSeVer2( spep_2 + 76, 1019, "", 0, 0, 0, -1);

--向かってくる
SE031 = playSeVer2( spep_2 + 78, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 78, SE031, 60 );
setTimeStretch( SE031, 1.4, 30, 4 );
SE032 = playSeVer2( spep_2 + 126, 1508, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 126, SE032, 77 );

--飛行音
SE033 = playSeVer2( spep_2 + 140, 1019, "",spep_2 + 206, 0, 16, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 154; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE027, 0);
stopSe( SP_dodge - 12, SE030, 0);
stopSe( SP_dodge - 12, SE031, 0);
stopSe( SP_dodge - 12, SE032, 0);
stopSe( SP_dodge - 12, SE033, 0);
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
--パンチ
SE034 = playSeVer2( spep_2 + 158, 1003, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 166, 1187, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 166, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE037 = playSeVer2( spep_2 + 180, 1121, "",spep_2 + 342, 0, 94, -1);
SE038 = playSeVer2( spep_2 + 204, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 204, SE038, 68 );

--着地
SE039 = playSeVer2( spep_2 + 280, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 280, SE039, 158 );

--再度飛び立つ
SE040 = playSeVer2( spep_2 + 292, 1011, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 292, 1116, "",spep_2 + 352, 0, 34, -1);
SE042 = playSeVer2( spep_2 + 306, 1117, "", 0, 0, 0, -1);

--飛行音
SE043 = playSeVer2( spep_2 + 358, 1019, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 422, 1019, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 486, 1019, "",spep_2 + 550, 0, 28, -1);

--オーラ
SE044 = playSeVer2( spep_2 + 360, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 360, SE044, 32 );
SE045 = playSeVer2( spep_2 + 384, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 384, SE045, 32 );
SE047 = playSeVer2( spep_2 + 408, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 408, SE047, 32 );
SE050 = playSeVer2( spep_2 + 432, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 432, SE050, 32 );
SE053 = playSeVer2( spep_2 + 456, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 456, SE053, 32 );
SE054 = playSeVer2( spep_2 + 480, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 480, SE054, 32 );

--敵つかむ
SE046 = playSeVer2( spep_2 + 398, 1233, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 414, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 414, SE048, 85 );

--ひざげり
SE051 = playSeVer2( spep_2 + 446, 1153, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 446, 1190, "", 0, 0, 0, -1);

--叩き落とす
SE056 = playSeVer2( spep_2 + 500, 1123, "", 0, 0, 0, -1);

--爆発
SE057 = playSeVer2( spep_2 + 536, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 536, SE057, 85 );
SE058 = playSeVer2( spep_2 + 536, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 542); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 662f -4f

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 冒頭 ~ カードカットインまで
-------------------------------------------------
MAX_FRAME_0 = 340;

setupMovie(0 , SP_01, 0, 1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255); --黒 背景


-----------------------------
-- 顔カットイン
-----------------------------
-- spep_x = spep_0 + 132;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
-- ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
-- setEffShake( spep_x + 16, ctgogo, 68, 10 );
-- setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
-- setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
-- setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
-- setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
-- setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
-- setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
-- setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
-- setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
-- setEffRotateKey( spep_x + 16, ctgogo, 0 );
-- setEffRotateKey( spep_x + 84, ctgogo, 0 );
-- setEffAlphaKey( spep_x + 16, ctgogo, 255 );
-- setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
-- SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);


-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 364, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--腕あげる
SE002 = playSeVer2( spep_0 + 4, 1116, "",spep_0 + 62, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 4, SE002, 56 );

--オーラ
SE003 = playSeVer2( spep_0 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE003, 25 );
SE004 = playSeVer2( spep_0 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE004, 40 );
SE005 = playSeVer2( spep_0 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 84, SE005, 63 );
SE007 = playSeVer2( spep_0 + 108, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 108, SE007, 63 );
SE008 = playSeVer2( spep_0 + 132, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 132, SE008, 63 );
SE010 = playSeVer2( spep_0 + 156, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 156, SE010, 63 );
SE011 = playSeVer2( spep_0 + 180, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 180, SE011, 63 );
SE015 = playSeVer2( spep_0 + 204, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 204, SE015, 63 );
SE017 = playSeVer2( spep_0 + 228, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 228, SE017, 63 );
SE018 = playSeVer2( spep_0 + 252, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE018, 63 );
SE019 = playSeVer2( spep_0 + 276, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 276, SE019, 63 );
SE020 = playSeVer2( spep_0 + 300, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 300, SE020, 63 );
SE021 = playSeVer2( spep_0 + 324, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 324, SE021, 63 );

--ズーム
SE006 = playSeVer2( spep_0 + 90, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE006, 76 );

--気ダメ
SE012 = playSeVer2( spep_0 + 198, 1258, "",spep_0 + 364, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 198, SE012, 71 );
SE013 = playSeVer2( spep_0 + 198, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE013, 83 );
SE014 = playSeVer2( spep_0 + 198, 1503, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 218, 1504, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 218, SE016, 84 );


-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 340f

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0);


-- ** 音 ** --
--オーラ
SE024 = playSeVer2( spep_1 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 84, SE024, 40 );


-------------------------------------------------
-- カード後のみ
-------------------------------------------------
MAX_FRAME_2 = 662;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_01, 0x100, -1, 0, 0, 0); -- カード後のみ(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255); --黒 背景


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 140 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 196 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 140 + OFFSET_X, 1, 2 );
changeAnime( spep_2 + 172 + OFFSET_X, 1, 7 );

setMoveKey( spep_2 + 140 + OFFSET_X, 1, -114.6, -288.3 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -114.6, -288.3 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -115.6, -291 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -115.6, -291 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -116.4, -293.4 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -116.4, -293.4 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -117.2, -295.5 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -117.2, -295.5 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, -117.8, -297.3 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, -117.8, -297.3 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, -118.4, -298.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, -118.4, -298.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, -118.8, -300.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, -118.8, -300.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, -119.2, -301.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, -119.2, -301.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, -119.4, -301.8 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, -119.4, -301.8 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, -119.6, -302.3 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, -119.6, -302.3 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, -119.6, -302.4 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, -119.6, -302.4 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -126.8, -333.5 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -126.8, -333.5 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, -132.4, -357.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, -132.4, -357.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, -136.4, -374.9 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, -136.4, -374.9 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, -138.8, -385.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, -138.8, -385.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, -139.7, -388.7 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, -139.7, -388.7 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, -52, -387.3 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, -52, -387.3 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, -149.4, -427 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, -149.4, -427 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, -261.1, -512 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, -261.1, -512 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, -367, -572.9 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, -367, -572.9 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, -429.9, -617.8 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, -429.9, -617.8 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, -496.9, -653.8 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, -496.9, -653.8 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, -534.7, -677.8 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, -534.7, -677.8 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, -581.5, -705.7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, -581.5, -705.7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -601.3, -721.3 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -601.3, -721.3 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -636, -737.6 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -636, -737.6 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -647.7, -752.3 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, -647.7, -752.3 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -671.9, -760.7 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, -671.9, -760.7 , 0 );

setScaleKey( spep_2 + 140 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 3.75, 3.75 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 3.78, 3.78 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 3.83, 3.83 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 3.83, 3.83 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 3.85, 3.85 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 3.86, 3.86 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 3.88, 3.88 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 4.18, 4.18 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 4.55, 4.55 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 3.22, 3.22 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 3.4, 3.4 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 3.46, 3.46 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 3.52, 3.52 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 3.6, 3.6 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 3.6, 3.6 );

setRotateKey( spep_2 + 140 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 56 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 56 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 47.4 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 47.4 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 34.1 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 34.1 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 24.2 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 24.2 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 1.8 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -6.1 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -8 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -8 );


--敵の動き2
setDisp( spep_2 + 214 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 300 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 214 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 214 + OFFSET_X, 1, 667.1, 490.8 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 667.1, 490.8 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 199.4, 242.5 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 199.4, 242.5 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 51.7, 164.1 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 51.7, 164.1 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, -42, 114.3 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, -42, 114.3 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, -107.3, 79.6 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, -107.3, 79.6 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, -154.3, 54.7 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, -154.3, 54.7 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, -185.1, 38.3 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -185.1, 38.3 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -203.3, 28.7 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -203.3, 28.7 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -214.2, 22.9 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -214.2, 22.9 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -221.1, 19.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -221.1, 19.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -226.3, 16.4 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -226.3, 16.4 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -231.3, 13.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -231.3, 13.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -237.4, 10.5 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -237.4, 10.5 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -245.5, 6.2 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -245.5, 6.2 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -248.8, 4.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -248.8, 4.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -251.9, 2.3 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -251.9, 2.3 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -254.9, 0.6 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -254.9, 0.6 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -257.7, -1.1 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -257.7, -1.1 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -260.3, -2.7 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -260.3, -2.7 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -262.8, -4.1 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -262.8, -4.1 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -265.1, -5.5 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -265.1, -5.5 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -267.3, -6.9 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -267.3, -6.9 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -269.4, -8.1 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -269.4, -8.1 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -271.4, -9.3 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -271.4, -9.3 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -273.2, -10.4 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -273.2, -10.4 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -275, -11.4 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -275, -11.4 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -276.6, -12.4 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -276.6, -12.4 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -278.1, -13.3 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -278.1, -13.3 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -279.6, -14.2 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -279.6, -14.2 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, -280.9, -15 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, -280.9, -15 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, -282.2, -15.8 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, -282.2, -15.8 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, -283.4, -16.5 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, -283.4, -16.5 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, -284.5, -17.2 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -284.5, -17.2 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -285.6, -17.8 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, -285.6, -17.8 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, -286.6, -18.4 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, -286.6, -18.4 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, -287.5, -19 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, -287.5, -19 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, -288.4, -19.5 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, -288.4, -19.5 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, -289.2, -20 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, -289.2, -20 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, -289.9, -20.4 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, -289.9, -20.4 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, -290.6, -20.8 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -290.6, -20.8 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, -291.3, -21.2 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, -291.3, -21.2 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -291.9, -21.6 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -291.9, -21.6 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -288.4, -21.9 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -288.4, -21.9 , 0 );

setScaleKey( spep_2 + 214 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 4.9, 4.9 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 219 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 221 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 222 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 223 + OFFSET_X, 1, 0.97, 0.97 );
setScaleKey( spep_2 + 224 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 225 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 226 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 0.06, 0.06 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 0.06, 0.06 );

setRotateKey( spep_2 + 214 + OFFSET_X, 1, -57 );
setRotateKey( spep_2 + 215 + OFFSET_X, 1, -57 );
setRotateKey( spep_2 + 216 + OFFSET_X, 1, -72.6 );
setRotateKey( spep_2 + 217 + OFFSET_X, 1, -72.6 );
setRotateKey( spep_2 + 218 + OFFSET_X, 1, -77.6 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, -77.6 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, -80.7 );
setRotateKey( spep_2 + 221 + OFFSET_X, 1, -80.7 );
setRotateKey( spep_2 + 222 + OFFSET_X, 1, -82.9 );
setRotateKey( spep_2 + 223 + OFFSET_X, 1, -82.9 );
setRotateKey( spep_2 + 224 + OFFSET_X, 1, -84.5 );
setRotateKey( spep_2 + 225 + OFFSET_X, 1, -84.5 );
setRotateKey( spep_2 + 226 + OFFSET_X, 1, -85.5 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, -85.5 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, -86.1 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, -86.1 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, -86.5 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, -86.5 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, -86.7 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, -86.7 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, -86.9 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, -86.9 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, -87 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -87.2 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, -87.2 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -87.5 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, -87.5 );


--敵の動き3
setDisp( spep_2 + 364 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 454 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 364 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 436 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 364 + OFFSET_X, 1, 1190.8, -1194.1 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 1190.8, -1194.1 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, 977.5, -986.1 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, 977.5, -986.1 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 792.7, -805.9 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 792.7, -805.9 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 636.2, -653.4 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 636.2, -653.4 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 600.2, -613.2 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 600.2, -613.2 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 564.2, -573 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 564.2, -573 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 528.2, -532.7 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 528.2, -532.7 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 492.2, -492.5 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 492.2, -492.5 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 456.2, -452.3 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 456.2, -452.3 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 420.2, -412.1 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 420.2, -412.1 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 384.2, -371.8 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 384.2, -371.8 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 348.2, -331.6 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 348.2, -331.6 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 312.2, -291.4 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 312.2, -291.4 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 276.2, -251.2 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 276.2, -251.2 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 240.2, -210.9 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 240.2, -210.9 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 204.2, -170.7 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 204.2, -170.7 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 168.1, -130.5 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 168.1, -130.5 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 70.4, -55.7 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 70.4, -55.7 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, -27.4, 19.1 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, -27.4, 19.1 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, -125.1, 93.8 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, -125.1, 93.8 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, -222.9, 168.6 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, -222.9, 168.6 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, -234.7, 74.8 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, -234.7, 74.8 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, -173.8, 26.4 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, -173.8, 26.4 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -168.4, 30 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, -168.4, 30 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, -172, 22.8 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, -172, 22.8 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, -156.4, 22.4 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -156.4, 22.4 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -151, 26 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, -151, 26 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 11.5, 362.2 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 11.5, 362.2 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -170.4, 528.5 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, -170.4, 528.5 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, -189.9, 592.9 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, -189.9, 592.9 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, -234.3, 311.5 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, -234.3, 311.5 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -183.6, 210.2 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, -183.6, 210.2 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -147.4, 138.7 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -147.4, 138.7 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -53.3, -19.1 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -53.3, -19.1 , 0 );

setScaleKey( spep_2 + 364 + OFFSET_X, 1, 6.62, 6.62 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 6.62, 6.62 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 443 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 444 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 447 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 448 + OFFSET_X, 1, 3.79, 3.79 );
setScaleKey( spep_2 + 454 + OFFSET_X, 1, 3.79, 3.79 );

setRotateKey( spep_2 + 364 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 407 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 408 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 419 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 420 + OFFSET_X, 1, -26 );
setRotateKey( spep_2 + 425 + OFFSET_X, 1, -26 );
setRotateKey( spep_2 + 426 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 435 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 436 + OFFSET_X, 1, -117.8 );
setRotateKey( spep_2 + 443 + OFFSET_X, 1, -117.8 );
setRotateKey( spep_2 + 444 + OFFSET_X, 1, -117.9 );
setRotateKey( spep_2 + 447 + OFFSET_X, 1, -117.9 );
setRotateKey( spep_2 + 448 + OFFSET_X, 1, -117.8 );
setRotateKey( spep_2 + 454 + OFFSET_X, 1, -117.8 );


--敵の動き4
setDisp( spep_2 + 460 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 534 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 460 + OFFSET_X, 1, 6 );
changeAnime( spep_2 + 508 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 534 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 460 + OFFSET_X, 1, -18.2, -97.3 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, -18.2, -97.3 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, -23.6, -113.5 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, -23.6, -113.5 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, -5.6, -101.5 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, -5.6, -101.5 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, -23.6, -95.5 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, -23.6, -95.5 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, -23.6, -113.5 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, -23.6, -113.5 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, -5.6, -101.5 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, -5.6, -101.5 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, -23.6, -95.5 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, -23.6, -95.5 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, -23.6, -113.5 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, -23.6, -113.5 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, -5.6, -101.5 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, -5.6, -101.5 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, -23.6, -95.5 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, -23.6, -95.5 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -23.6, -113.5 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, -23.6, -113.5 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -5.6, -101.5 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, -5.6, -101.5 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, -23.6, -95.5 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, -23.6, -95.5 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, -23.6, -113.5 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, -23.6, -113.5 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, -21.3, -89.6 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, -21.3, -89.6 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, -33.1, -67.6 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, -33.1, -67.6 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, -44.9, -45.6 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, -44.9, -45.6 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, -47.8, -41.1 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, -47.8, -41.1 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, -50.6, -36.5 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, -50.6, -36.5 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, -53.4, -31.9 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, -53.4, -31.9 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, -56.2, -27.4 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, -56.2, -27.4 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, -59.1, -22.8 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, -59.1, -22.8 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, -61.9, -18.3 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, -61.9, -18.3 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, -64.7, -13.7 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, -64.7, -13.7 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, -35.7, 17.9 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, -35.7, 17.9 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 5.8, -56.4 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 5.8, -56.4 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, -8.1, -32.8 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, -8.1, -32.8 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, -14.4, -67.4 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, -14.4, -67.4 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 20.4, -82.5 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 20.4, -82.5 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 29.8, -82.2 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 29.8, -82.2 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 330.3, -563 , 0 );
setMoveKey( spep_2 + 523 + OFFSET_X, 1, 330.3, -563 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 405.8, -700.6 , 0 );
setMoveKey( spep_2 + 525 + OFFSET_X, 1, 405.8, -700.6 , 0 );
setMoveKey( spep_2 + 526 + OFFSET_X, 1, 499.2, -808.3 , 0 );
setMoveKey( spep_2 + 527 + OFFSET_X, 1, 499.2, -808.3 , 0 );
setMoveKey( spep_2 + 528 + OFFSET_X, 1, 556.7, -922 , 0 );
setMoveKey( spep_2 + 529 + OFFSET_X, 1, 556.7, -922 , 0 );
setMoveKey( spep_2 + 530 + OFFSET_X, 1, 632.1, -1059.7 , 0 );
setMoveKey( spep_2 + 531 + OFFSET_X, 1, 632.1, -1059.7 , 0 );
setMoveKey( spep_2 + 532 + OFFSET_X, 1, 725.6, -1167.4 , 0 );
setMoveKey( spep_2 + 534 + OFFSET_X, 1, 725.6, -1167.4 , 0 );

setScaleKey( spep_2 + 460 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 507 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 508 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 511 + OFFSET_X, 1, 4.21, 4.21 );
setScaleKey( spep_2 + 512 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 523 + OFFSET_X, 1, 3.89, 3.89 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 3.9, 3.9 );
setScaleKey( spep_2 + 534 + OFFSET_X, 1, 3.9, 3.9 );

setRotateKey( spep_2 + 460 + OFFSET_X, 1, -76 );
setRotateKey( spep_2 + 507 + OFFSET_X, 1, -76 );
setRotateKey( spep_2 + 508 + OFFSET_X, 1, -118 );
setRotateKey( spep_2 + 511 + OFFSET_X, 1, -118 );
setRotateKey( spep_2 + 512 + OFFSET_X, 1, -117.9 );
setRotateKey( spep_2 + 523 + OFFSET_X, 1, -117.9 );
setRotateKey( spep_2 + 524 + OFFSET_X, 1, -130.7 );
setRotateKey( spep_2 + 525 + OFFSET_X, 1, -130.7 );
setRotateKey( spep_2 + 526 + OFFSET_X, 1, -143.5 );
setRotateKey( spep_2 + 527 + OFFSET_X, 1, -143.5 );
setRotateKey( spep_2 + 528 + OFFSET_X, 1, -156.3 );
setRotateKey( spep_2 + 529 + OFFSET_X, 1, -156.3 );
setRotateKey( spep_2 + 530 + OFFSET_X, 1, -169.2 );
setRotateKey( spep_2 + 531 + OFFSET_X, 1, -169.2 );
setRotateKey( spep_2 + 532 + OFFSET_X, 1, -182 );
setRotateKey( spep_2 + 534 + OFFSET_X, 1, -182 );

setBlendColor( spep_2 + 508 + OFFSET_X, 1, 3, 0, 0, 0, 1 );
setBlendColor( spep_2 + 512 + OFFSET_X, 1, 3, 0, 0, 0, 0 );


-- ** 音 ** --
--オーラ
SE025 = playSeVer2( spep_2 + 14, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 14, SE025, 40 );
SE028 = playSeVer2( spep_2 + 38, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 38, SE028, 40 );
SE029 = playSeVer2( spep_2 + 62, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE029, 40 );

--飛び立つ
SE026 = playSeVer2( spep_2 + 28, 1068, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 28, 1117, "", 0, 0, 0, -1);

--飛行音
SE030 = playSeVer2( spep_2 + 76, 1019, "", 0, 0, 0, -1);

--向かってくる
SE031 = playSeVer2( spep_2 + 78, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 78, SE031, 60 );
setTimeStretch( SE031, 1.4, 30, 4 );
SE032 = playSeVer2( spep_2 + 126, 1508, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 126, SE032, 77 );

--飛行音
SE033 = playSeVer2( spep_2 + 140, 1019, "",spep_2 + 206, 0, 16, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 154; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 ); -- 一時停止
pauseMovie( SP_dodge + 5, 0 ); -- 一時停止解除
stopMovie( SP_dodge + 9 ); -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE026, 0);
stopSe( SP_dodge - 12, SE027, 0);
stopSe( SP_dodge - 12, SE030, 0);
stopSe( SP_dodge - 12, SE031, 0);
stopSe( SP_dodge - 12, SE032, 0);
stopSe( SP_dodge - 12, SE033, 0);
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
--パンチ
SE034 = playSeVer2( spep_2 + 158, 1003, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 166, 1187, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 166, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE037 = playSeVer2( spep_2 + 180, 1121, "",spep_2 + 342, 0, 94, -1);
SE038 = playSeVer2( spep_2 + 204, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 204, SE038, 68 );

--着地
SE039 = playSeVer2( spep_2 + 280, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 280, SE039, 158 );

--再度飛び立つ
SE040 = playSeVer2( spep_2 + 292, 1011, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_2 + 292, 1116, "",spep_2 + 352, 0, 34, -1);
SE042 = playSeVer2( spep_2 + 306, 1117, "", 0, 0, 0, -1);

--飛行音
SE043 = playSeVer2( spep_2 + 358, 1019, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_2 + 422, 1019, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 486, 1019, "",spep_2 + 550, 0, 28, -1);

--オーラ
SE044 = playSeVer2( spep_2 + 360, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 360, SE044, 32 );
SE045 = playSeVer2( spep_2 + 384, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 384, SE045, 32 );
SE047 = playSeVer2( spep_2 + 408, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 408, SE047, 32 );
SE050 = playSeVer2( spep_2 + 432, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 432, SE050, 32 );
SE053 = playSeVer2( spep_2 + 456, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 456, SE053, 32 );
SE054 = playSeVer2( spep_2 + 480, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 480, SE054, 32 );

--敵つかむ
SE046 = playSeVer2( spep_2 + 398, 1233, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_2 + 414, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 414, SE048, 85 );

--ひざげり
SE051 = playSeVer2( spep_2 + 446, 1153, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 446, 1190, "", 0, 0, 0, -1);

--叩き落とす
SE056 = playSeVer2( spep_2 + 500, 1123, "", 0, 0, 0, -1);

--爆発
SE057 = playSeVer2( spep_2 + 536, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 536, SE057, 85 );
SE058 = playSeVer2( spep_2 + 536, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 542); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 662f -4f

end