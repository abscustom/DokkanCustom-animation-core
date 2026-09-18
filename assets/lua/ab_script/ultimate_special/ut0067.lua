-- 4028500:UR_超サイヤ人ベジータ_アクティブ必殺：ビッグ・バン・アタック
-- sp_effect_a2_00236
-- ut0067

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01  = 162729;  -- 開幕～フィニッシュまで ef_001
SP_01b = 162730;  -- 開幕～フィニッシュまで背景 ef_001b
SP_02  = 162781;  -- KO ef_002


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
           skipFrame(0, spep_0 + 176 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 722 -1);  -- スキップ先フレーム指定
           SE045 = playSeVer2( spep_0 + 722, 1159, "",spep_0 + 912, 0, 12, -1);

       end
    else end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕～フィニッシュまで
------------------------------------------------------
MAX_FRAME_0 = 892;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～フィニッシュまで(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- 開幕～フィニッシュまで背景(ef_001b)
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

KO = entryEffectLife( spep_0 + 890, SP_02, 108, 0x100, -1, 0, 0, 0); -- KO(ef_002)
setEffMoveKey( spep_0 + 890, KO, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0 + 108, KO, 0, 0 , 0);
setEffScaleKey( spep_0 + 890, KO, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0 + 108, KO, 1.0, 1.0);
setEffRotateKey( spep_0 + 890, KO, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0 + 108, KO, 0);
setEffAlphaKey( spep_0 + 890, KO, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 + 108, KO, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_0 + 120 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 190 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 120 + OFFSET_X, 1, 104 );

setMoveKey( spep_0 + 120 + OFFSET_X, 1, 196.1, 173.5 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 196.1, 173.5 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 197.4, 174.1 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 197.4, 174.1 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 198.8, 174.7 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 198.8, 174.7 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 200.2, 175.2 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 200.2, 175.2 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 201.6, 175.9 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 201.6, 175.9 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 203, 176.5 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 203, 176.5 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 204.4, 177 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 204.4, 177 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 205.8, 177.6 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 205.8, 177.6 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 207.1, 178.2 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 207.1, 178.2 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 208.6, 178.8 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 208.6, 178.8 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 210, 179.4 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 210, 179.4 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 211.4, 180 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 211.4, 180 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 212.9, 180.6 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 212.9, 180.6 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 214.3, 181.1 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 214.3, 181.1 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 215.7, 181.7 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 215.7, 181.7 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 217.2, 182.3 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 217.2, 182.3 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 218.6, 182.9 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 218.6, 182.9 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 220, 183.5 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 220, 183.5 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 221.5, 184.1 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 221.5, 184.1 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 223, 184.7 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 223, 184.7 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 224.4, 185.2 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 224.4, 185.2 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 225.9, 185.8 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 225.9, 185.8 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 227.4, 186.4 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 227.4, 186.4 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 228.9, 187 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 228.9, 187 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 230.3, 187.6 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 230.3, 187.6 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 231.9, 188.2 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 231.9, 188.2 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 233.3, 188.7 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 233.3, 188.7 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 234.8, 189.3 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 234.8, 189.3 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 236.3, 189.9 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 236.3, 189.9 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 237.8, 190.5 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 237.8, 190.5 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 239.3, 191.1 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 239.3, 191.1 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 240.8, 191.7 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 240.8, 191.7 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 242.4, 192.3 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 242.4, 192.3 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 243.9, 192.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 243.9, 192.8 , 0 );

setScaleKey( spep_0 + 120 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 0.51, 0.51 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.53, 0.53 );

setRotateKey( spep_0 + 120 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 190 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 706 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 724 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 706 + OFFSET_X, 1, 4 );

setMoveKey( spep_0 + 706 + OFFSET_X, 1, -6, -0.6 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, -6, -0.6 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, -10, -6.6 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, -10, -6.6 , 0 );

setScaleKey( spep_0 + 706 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 0.16, 0.16 );

setRotateKey( spep_0 + 706 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 724 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 546, 0, 36, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1181, "",spep_0 + 544, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 85 );

--気ダメ
SE003 = playSeVer2( spep_0 + 18, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE003, 58 );
SE004 = playSeVer2( spep_0 + 22, 1035, "", 0, 0, 0, -1);

--オーラ
SE005 = playSeVer2( spep_0 + 34, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE005, 79 );
SE006 = playSeVer2( spep_0 + 58, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 58, SE006, 79 );

--手を前に出す
SE007 = playSeVer2( spep_0 + 66, 1003, "", 0, 0, 0, -1);

--オーラ
SE008 = playSeVer2( spep_0 + 82, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 82, SE008, 79 );
SE009 = playSeVer2( spep_0 + 106, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 106, SE009, 79 );
SE010 = playSeVer2( spep_0 + 130, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE010, 79 );
SE013 = playSeVer2( spep_0 + 154, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 154, SE013, 79 );

--気が弾ける
SE011 = playSeVer2( spep_0 + 132, 1179, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 138, 1025, "", 0, 0, 0, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 176; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, - 1, 0, 0, - 350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, - 1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge + 5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge + 10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------
-- ** 音 ** --
--オーラ
SE014 = playSeVer2( spep_0 + 178, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 178, SE014, 79 );

--セリフカットイン
SE015 = playSeVer2( spep_0 + 182, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE015, 63 );

--画面遷移
SE016 = playSeVer2( spep_0 + 186, 1232, "", 0, 0, 0, -1);

--オーラ
SE017 = playSeVer2( spep_0 + 202, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 202, SE017, 79 );
SE018 = playSeVer2( spep_0 + 226, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 226, SE018, 79 );
SE019 = playSeVer2( spep_0 + 250, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 250, SE019, 79 );
SE020 = playSeVer2( spep_0 + 274, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 274, SE020, 79 );
SE021 = playSeVer2( spep_0 + 298, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 298, SE021, 79 );
SE022 = playSeVer2( spep_0 + 322, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 322, SE022, 79 );
SE023 = playSeVer2( spep_0 + 346, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 346, SE023, 79 );
SE024 = playSeVer2( spep_0 + 370, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 370, SE024, 79 );
SE025 = playSeVer2( spep_0 + 394, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 394, SE025, 79 );

--気弾溜め
SE026 = playSeVer2( spep_0 + 398, 1396, "",spep_0 + 620, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 398, SE026, 138 );
setPitch( spep_0 + 398, SE026, 600 );
setTimeStretch( SE026, 1.4, 30, 4 );
SE027 = playSeVer2( spep_0 + 398, 1356, "",spep_0 + 618, 0, 22, -1);
setPitch( spep_0 + 398, SE027, 100 );
setTimeStretch( SE027, 1.07, 30, 4 );
SE028 = playSeVer2( spep_0 + 400, 1282, "", 0, 0, 0, -1);
setPitch( spep_0 + 400, SE028, -800 );
setTimeStretch( SE028, 0.47, 30, 4 );

--オーラ
SE029 = playSeVer2( spep_0 + 418, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 418, SE029, 79 );
SE030 = playSeVer2( spep_0 + 442, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 442, SE030, 79 );
SE031 = playSeVer2( spep_0 + 466, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 466, SE031, 79 );
SE032 = playSeVer2( spep_0 + 490, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 490, SE032, 79 );

--気弾溜め二段階目
SE033 = playSeVer2( spep_0 + 500, 1199, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 500, SE033, 146 );
setPitch( spep_0 + 500, SE033, -500 );
setTimeStretch( SE033, 0.67, 30, 4 );
SE034 = playSeVer2( spep_0 + 500, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 500, SE034, 76 );
SE035 = playSeVer2( spep_0 + 500, 1296, "",spep_0 + 594, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 500, SE035, 81 );
setPitch( spep_0 + 500, SE035, 600 );
setTimeStretch( SE035, 1.4, 30, 4 );

--オーラ
SE036 = playSeVer2( spep_0 + 514, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 514, SE036, 79 );
SE037 = playSeVer2( spep_0 + 538, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 538, SE037, 79 );
SE038 = playSeVer2( spep_0 + 562, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 562, SE038, 79 );
SE043 = playSeVer2( spep_0 + 586, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 586, SE043, 79 );

--気弾発射
SE039 = playSeVer2( spep_0 + 580, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 580, SE039, 129 );
SE040 = playSeVer2( spep_0 + 584, 1193, "",spep_0 + 784, 0, 44, -1);
SE041 = playSeVer2( spep_0 + 584, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 584, SE041, 79 );
SE042 = playSeVer2( spep_0 + 584, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 584, SE042, 79 );

--気弾飛んでいく
SE044 = playSeVer2( spep_0 + 632, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 632, SE044, 188 );

--爆発
SE045 = playSeVer2( spep_0 + 716, 1159, "",spep_0 + 912, 0, 12, -1);
SE046 = playSeVer2( spep_0 + 726, 1024, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 744, 1067, "", 0, 0, 0, -1);

--地響き
SE048 = playSeVer2( spep_0 + 762, 1226, "",spep_0 + 908, 0, 8, -1);
SE049 = playSeVer2( spep_0 + 784, 1044, "",spep_0 + 910, 0, 12, -1);

-- ** ボイス ** --
--「くらえ！！」
playVoice( spep_0 + 180, 765 );
setVoiceVolume( spep_0 + 180, 765, 100 );
--「こいつが超ベジータの、ビッグ・バン・アタックだ！！！」
playVoice( spep_0 + 240, 766 );
setVoiceVolume( spep_0 + 240, 766, 100 );

-- ** おわり ** --
hideKoScreen();
dealDamage( spep_0 +  742);
endPhase( spep_0 + MAX_FRAME_0); -- 終了フレーム 892F

else end
