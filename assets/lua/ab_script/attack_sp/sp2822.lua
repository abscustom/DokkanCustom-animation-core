-- 1030530: LR_フリーザ(最終形態)(天使)+孫悟空_必殺技：デスビーム
-- sp_effect_a3_00114
-- sp2822

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 163590;  -- カード前 ef_001
SP_002 = 163591;  -- カード後 前面 ef_002
SP_002b = 163592;  -- カード後 背面 ef_002b

-- 敵側
SP_002r = 163593;  -- カード後 前面 敵側 ef_002r
SP_002br = 163623;  -- カード後 背面 敵側 ef_002br

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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 148;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 50);  -- スキップ先フレーム指定
        --スキップタイミング直前から再生するSE・ボイスがある場合はこちらに記載してください。
        --SE名
    else

    end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- カード前 ef_001
------------------------------------------------------
MAX_FRAME_0 = 148;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );  -- カード前 ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 172, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--目線うごく
SE003 = playSeVer2( spep_0 + 82, 37, "",spep_0 + 116, 0, 12, 0.5);
setPitch( spep_0 + 82, SE003, -300 );
setTimeStretch( SE003, 0.8, 30, 4 );

--瞬間移動
SE004 = playSeVer2( spep_0 + 118, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 118, SE004, 50 );
SE005 = playSeVer2( spep_0 + 120, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE005, 89 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 148

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- カード後 前面 ef_002
------------------------------------------------------
MAX_FRAME_2 = 346;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- カード後 前面 ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- カード後 背面 ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0 , 1, 1 );
setDisp( spep_2 + 182 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0 , 1, 117 );
changeAnime( spep_2 + 106 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 150 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 0 , 1, 236, 51.5 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 236, 51.5 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 794.1, 10.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 794.1, 10.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 706.4, 5.1 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 706.4, 5.1 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 618.7, -0.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 618.7, -0.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 531, -5.8 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 531, -5.8 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 443.3, -11.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 443.3, -11.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 355.6, -16.7 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 355.6, -16.7 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 267.9, -22.1 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 267.9, -22.1 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 180.3, -27.5 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 180.3, -27.5 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 163.9, -16.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 163.9, -16.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 162, -7.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 162, -7.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 166, -25.9 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 166, -25.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 165, -11.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 165, -11.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 164, -23.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 164, -23.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 164, -12.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 164, -12.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 164, -23.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 164, -23.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 164, -12.9 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 164, -12.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 164, -17.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 164, -17.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 164, -15.9 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 164, -15.9 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 164, -16.9 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 164, -16.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 164, -17.9 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 164, -17.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 164.4, -16.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 164.4, -16.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 164.8, -16.9 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 164.8, -16.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 165.3, -16.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 165.3, -16.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 165.7, -16.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 165.7, -16.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 166.1, -16.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 166.1, -16.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 166.5, -16.9 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 166.5, -16.9 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 167, -16.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 167, -16.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 167.4, -16.9 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 167.4, -16.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 167.8, -16.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 167.8, -16.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 168.3, -16.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 168.3, -16.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 57, 72 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 57, 72 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 57.4, 70.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 57.4, 70.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 58.3, 66.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 58.3, 66.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 59.8, 58.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 59.8, 58.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 61.8, 46.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 61.8, 46.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 64.5, 31.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 64.5, 31.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 68, 10.8 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 68, 10.8 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 72.4, -15 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 72.4, -15 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 77.7, -47.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 77.7, -47.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 84.3, -87.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 84.3, -87.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 92.4, -136.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 92.4, -136.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 102.5, -197.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 102.5, -197.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 115.1, -275.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 115.1, -275.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 131.7, -377.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 131.7, -377.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 155.2, -522.6 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 155.2, -522.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 209, -857 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 209, -857 , 0 );

setScaleKey( spep_2 + 0 , 1, 0.87, 0.87 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.5, 2.5 );

setRotateKey( spep_2 + 0 , 1, 0 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 18.7 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 18.7 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 23.1 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 23.1 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 24.7 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 24.7 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 32 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 32 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 41 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 41 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 51 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 51 );

setBlendColor( spep_2 + 106 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_2 + 112 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--瞬間移動
SE007 = playSeVer2( spep_2 + 2, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE007, 50 );
SE008 = playSeVer2( spep_2 + 4, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE008, 86 );

--環境音
SE009 = playSeVer2( spep_2 + 4, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE009, 25 );

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 50;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------

-- ** 音 ** --
--気弾発射
SE010 = playSeVer2( spep_2 + 86, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE010, 80 );
setPitch( spep_2 + 86, SE010, 200 );
setTimeStretch( SE010, 1.13, 30, 4 );
SE011 = playSeVer2( spep_2 + 86, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE011, 80 );
SE012 = playSeVer2( spep_2 + 86, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE012, 80 );
SE013 = playSeVer2( spep_2 + 86, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE013, 124 );
SE014 = playSeVer2( spep_2 + 100, 1217, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE014, 67 );
SE015 = playSeVer2( spep_2 + 100, 1114, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE015, 80 );

--敵落ちていく
SE016 = playSeVer2( spep_2 + 154, 1013, "", 0, 0, 0, -1);

--指さす
SE017 = playSeVer2( spep_2 + 230, 1189, "", 0, 0, 0, -1);

--にやり
SE018 = playSeVer2( spep_2 + 248, 1271, "",spep_2 + 364, 0, 46, 0.6);
SE019 = playSeVer2( spep_2 + 260, 1222, "",spep_2 + 332, 0, 38, 0.6);
setSeVolumeByWorkId( spep_2 + 260, SE019, 65 );

-- ** おわり ** --
dealDamage( spep_2 + 240 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 346

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- カード前 ef_001
------------------------------------------------------
MAX_FRAME_0 = 148;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );  -- カード前 ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 172, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--目線うごく
SE003 = playSeVer2( spep_0 + 82, 37, "",spep_0 + 116, 0, 12, 0.5);
setPitch( spep_0 + 82, SE003, -300 );
setTimeStretch( SE003, 0.8, 30, 4 );

--瞬間移動
SE004 = playSeVer2( spep_0 + 118, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 118, SE004, 50 );
SE005 = playSeVer2( spep_0 + 120, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE005, 89 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 148

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- カード後 前面 ef_002
------------------------------------------------------
MAX_FRAME_2 = 346;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );  -- カード後 前面 ef_002r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002br, 0x80, -1, 0, 0, 0 );  -- カード後 背面 ef_002br
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 0 , 1, 1 );
setDisp( spep_2 + 182 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0 , 1, 117 );
changeAnime( spep_2 + 106 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 150 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 0 , 1, 236, 51.5 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 236, 51.5 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 794.1, 10.5 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 794.1, 10.5 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 706.4, 5.1 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 706.4, 5.1 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 618.7, -0.4 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 618.7, -0.4 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 531, -5.8 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 531, -5.8 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 443.3, -11.2 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 443.3, -11.2 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 355.6, -16.7 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 355.6, -16.7 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 267.9, -22.1 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 267.9, -22.1 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 180.3, -27.5 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 180.3, -27.5 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 163.9, -16.8 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 163.9, -16.8 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 162, -7.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 162, -7.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 166, -25.9 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 166, -25.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 165, -11.9 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 165, -11.9 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 164, -23.9 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 164, -23.9 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 164, -12.9 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 164, -12.9 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 164, -23.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 164, -23.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 164, -12.9 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 164, -12.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 164, -17.9 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 164, -17.9 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 164, -15.9 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 164, -15.9 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 164, -16.9 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 164, -16.9 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 164, -17.9 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 164, -17.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 164.4, -16.9 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 164.4, -16.9 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 164.8, -16.9 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 164.8, -16.9 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 165.3, -16.9 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 165.3, -16.9 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 165.7, -16.9 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 165.7, -16.9 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 166.1, -16.9 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 166.1, -16.9 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 166.5, -16.9 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 166.5, -16.9 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 167, -16.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 167, -16.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 167.4, -16.9 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 167.4, -16.9 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 167.8, -16.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 167.8, -16.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 168.3, -16.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 168.3, -16.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 57, 72 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 57, 72 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 57.4, 70.6 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 57.4, 70.6 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 58.3, 66.1 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 58.3, 66.1 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 59.8, 58.4 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 59.8, 58.4 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 61.8, 46.9 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 61.8, 46.9 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 64.5, 31.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 64.5, 31.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 68, 10.8 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 68, 10.8 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 72.4, -15 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 72.4, -15 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 77.7, -47.3 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 77.7, -47.3 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 84.3, -87.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 84.3, -87.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 92.4, -136.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 92.4, -136.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 102.5, -197.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 102.5, -197.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 115.1, -275.5 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 115.1, -275.5 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 131.7, -377.4 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 131.7, -377.4 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 155.2, -522.6 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 155.2, -522.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 209, -857 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 209, -857 , 0 );

setScaleKey( spep_2 + 0 , 1, 0.87, 0.87 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 4.04, 4.04 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 3.56, 3.56 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.65, 1.65 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 1.41, 1.41 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 2.5, 2.5 );

setRotateKey( spep_2 + 0 , 1, 0 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 151 + OFFSET_X, 1, 18 );
setRotateKey( spep_2 + 152 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_2 + 153 + OFFSET_X, 1, 18.1 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_2 + 155 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_2 + 156 + OFFSET_X, 1, 18.7 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, 18.7 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, 19.3 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, 19.9 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, 21.8 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, 23.1 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, 23.1 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, 24.7 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 24.7 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 32 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 32 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 35.8 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 41 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 41 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 51 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 51 );

setBlendColor( spep_2 + 106 + OFFSET_X, 1, 3, 1.0, 1.0, 1.0, 1.0 );
setBlendColor( spep_2 + 112 + OFFSET_X, 1, 3, 0, 0, 0, 0 );

-- ** 音 ** --
--瞬間移動
SE007 = playSeVer2( spep_2 + 2, 1245, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 2, SE007, 50 );
SE008 = playSeVer2( spep_2 + 4, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE008, 86 );

--環境音
SE009 = playSeVer2( spep_2 + 4, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 4, SE009, 25 );

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 50;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------

-- ** 音 ** --
--気弾発射
SE010 = playSeVer2( spep_2 + 86, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE010, 80 );
setPitch( spep_2 + 86, SE010, 200 );
setTimeStretch( SE010, 1.13, 30, 4 );
SE011 = playSeVer2( spep_2 + 86, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE011, 80 );
SE012 = playSeVer2( spep_2 + 86, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE012, 80 );
SE013 = playSeVer2( spep_2 + 86, 1312, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 86, SE013, 124 );
SE014 = playSeVer2( spep_2 + 100, 1217, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE014, 67 );
SE015 = playSeVer2( spep_2 + 100, 1114, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE015, 80 );

--敵落ちていく
SE016 = playSeVer2( spep_2 + 154, 1013, "", 0, 0, 0, -1);

--指さす
SE017 = playSeVer2( spep_2 + 230, 1189, "", 0, 0, 0, -1);

--にやり
SE018 = playSeVer2( spep_2 + 248, 1271, "",spep_2 + 364, 0, 46, 0.6);
SE019 = playSeVer2( spep_2 + 260, 1222, "",spep_2 + 332, 0, 38, 0.6);
setSeVolumeByWorkId( spep_2 + 260, SE019, 65 );

-- ** おわり ** --
dealDamage( spep_2 + 240 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 346

end
