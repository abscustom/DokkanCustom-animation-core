--4029480:LR_超サイヤ人孫悟飯(青年期)_フィニッシュ(失敗)：かめはめ波
--sp_effect_a1_00451
--fi0016

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01  = 163171;  -- ef_001 手前から着地〜フィニッシュ
SP_01b = 163172;  -- ef_001_b 手前から着地〜フィニッシュ

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
    
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 608 -13 );        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 582 -1 );      -- スキップ先フレーム指定

           --かめはめ波発射
           SE034 = playSeVer2( spep_0 + 582, 1133, "", 0, 0, 0, -1);
           SE035 = playSeVer2( spep_0 + 582, 1146, "", 0, 0, 0, -1);
           SE036 = playSeVer2( spep_0 + 582, 1213, "",spep_0 + 724, 0, 26, -1);
           setSeVolumeByWorkId( spep_0 + 582, SE036, 72 );

           --かめはめ波飛んでいく
           SE037 = playSeVer2( spep_0 + 582, 1211, "",spep_0 + 726, 0, 26, -1);
           setSeVolumeByWorkId( spep_0 + 582, SE037, 237 );
           SE038 = playSeVer2( spep_0 + 582, 1022, "", 0, 0, 0, -1);
       
       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

--はじめの準備
spep_0 = 0;

------------------------------------------------------
-- 手前から着地〜フィニッシュ
------------------------------------------------------
MAX_FRAME_0 = 818;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --手前から着地〜フィニッシュ(ef_001)
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, base_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base_f, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0 );
setEffAlphaKey( spep_0 + 0, base_f, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255 );

base_b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0 );  --手前から着地〜フィニッシュ(ef_001_b)
setEffMoveKey( spep_0 + 0, base_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, base_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, base_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, base_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base_b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, base_b, 0 );
setEffAlphaKey( spep_0 + 0, base_b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 136 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 196 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 136 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 136 + OFFSET_X, 1, 7.4, 255.7 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 7.4, 255.7 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 7.3, 250.8 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 7.3, 250.8 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 7.3, 246 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 7.3, 246 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 7.2, 241.5 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 7.2, 241.5 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 7.2, 237.1 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 7.2, 237.1 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 7.2, 232.8 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 7.2, 232.8 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 7.1, 228.8 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 7.1, 228.8 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 7.1, 224.9 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 7.1, 224.9 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 7, 221.2 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 7, 221.2 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 7, 217.7 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 7, 217.7 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 7, 214.3 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 7, 214.3 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 6.9, 211.1 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 6.9, 211.1 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 6.9, 208.1 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 6.9, 208.1 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 6.9, 205.2 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 6.9, 205.2 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 6.8, 202.6 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 6.8, 202.6 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 6.8, 200.1 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 6.8, 200.1 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 6.8, 197.7 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 6.8, 197.7 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 6.8, 195.6 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 6.8, 195.6 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 6.8, 193.6 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 6.8, 193.6 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 6.7, 191.8 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 6.7, 191.8 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 6.7, 190.1 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 6.7, 190.1 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 6.7, 188.7 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 6.7, 188.7 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 6.7, 187.4 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 6.7, 187.4 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 6.7, 186.3 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 6.7, 186.3 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 6.7, 185.3 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 6.7, 185.3 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 6.7, 184.5 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 6.7, 184.5 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 6.7, 183.9 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 6.7, 183.9 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 6.7, 183.5 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 6.7, 183.5 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 6.7, 183.2 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 6.7, 183.2 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 6.6, 183.2 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 6.6, 183.2 , 0 );

setScaleKey( spep_0 + 136 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.43, 0.43 );

setRotateKey( spep_0 + 136 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 196 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 582 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 700 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 582 + OFFSET_X, 1, 2.9, 62.1 , 0 );
setMoveKey( spep_0 + 700 + OFFSET_X, 1, 2.9, 62.1 , 0 );

setScaleKey( spep_0 + 582 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 700 + OFFSET_X, 1, 0.41, 0.41 );

setRotateKey( spep_0 + 582 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 700 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 71 );
SE004 = playSeVer2( spep_0 + 14, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 14, SE004, 71 );
SE007 = playSeVer2( spep_0 + 38, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 38, SE007, 71 );
SE008 = playSeVer2( spep_0 + 62, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 62, SE008, 71 );
SE010 = playSeVer2( spep_0 + 86, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE010, 71 );
SE011 = playSeVer2( spep_0 + 110, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE011, 50 );

--飛んでくる
SE002 = playSeVer2( spep_0 + 0, 63, "",spep_0 + 60, 0, 26, -1);
SE003 = playSeVer2( spep_0 + 2, 1116, "",spep_0 + 44, 0, 20, -1);

--着地
SE005 = playSeVer2( spep_0 + 22, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE005, 158 );
SE006 = playSeVer2( spep_0 + 22, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE006, 251 );

--構える
SE009 = playSeVer2( spep_0 + 74, 1004, "", 0, 0, 0, -1);

--画面遷移
SE012 = playSeVer2( spep_0 + 130, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE012, 60 );

--オーラ
SE013 = playSeVer2( spep_0 + 134, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE013, 32 );
SE014 = playSeVer2( spep_0 + 158, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE014, 32 );
SE015 = playSeVer2( spep_0 + 182, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE015, 50 );

--画面遷移
SE016 = playSeVer2( spep_0 + 186, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 186, SE016, 59 );

--オーラ
SE017 = playSeVer2( spep_0 + 206, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE017, 71 );
SE018 = playSeVer2( spep_0 + 230, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 230, SE018, 71 );

--セリフカットイン
SE019 = playSeVer2( spep_0 + 242, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 242, SE019, 63 );

--オーラ
SE020 = playSeVer2( spep_0 + 254, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 254, SE020, 71 );
SE021 = playSeVer2( spep_0 + 278, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 278, SE021, 71 );
SE022 = playSeVer2( spep_0 + 302, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 302, SE022, 71 );
SE023 = playSeVer2( spep_0 + 326, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 326, SE023, 71 );

--かめはめ波溜め
SE024 = playSeVer2( spep_0 + 380, 1210, "",spep_0 + 550, 40, 34, -1);
setStartTimeMs( SE024,  700 );
SE027 = playSeVer2( spep_0 + 374, 1200, "",spep_0 + 490, 0, 56, -1);
SE028 = playSeVer2( spep_0 + 374, 1209, "", 0, 0, 0, -1);

--オーラ
SE025 = playSeVer2( spep_0 + 350, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 350, SE025, 71 );
SE026 = playSeVer2( spep_0 + 374, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 374, SE026, 71 );
SE029 = playSeVer2( spep_0 + 398, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 398, SE029, 71 );
SE030 = playSeVer2( spep_0 + 422, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 422, SE030, 71 );
SE031 = playSeVer2( spep_0 + 446, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 446, SE031, 71 );
SE032 = playSeVer2( spep_0 + 470, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 470, SE032, 71 );
SE033 = playSeVer2( spep_0 + 494, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 494, SE033, 71 );

--かめはめ波発射
SE034 = playSeVer2( spep_0 + 504, 1133, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 504, SE034, 80 );
SE035 = playSeVer2( spep_0 + 504, 1146, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 504, SE035, 80 );
SE036 = playSeVer2( spep_0 + 504, 1213, "",spep_0 + 724, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 504, SE036, 72 );

--かめはめ波飛んでいく
SE037 = playSeVer2( spep_0 + 556, 1211, "",spep_0 + 726, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 556, SE037, 237 );
SE038 = playSeVer2( spep_0 + 570, 1022, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 582, 1202, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「かめはめ」（悟飯）
playVoice( spep_0 + 226, 835 );
setVoiceVolume( spep_0 + 226, 835, 120 );

--「波ーーー!!!」（悟飯）
playVoice( spep_0 + 474, 836 );
setVoiceVolume( spep_0 + 474, 836, 120 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

  SP_dodge = spep_0 + 608; --エンドフェイズのフレーム数を置き換える
  
  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE034, 0);
  stopSe( SP_dodge - 12, SE035, 0);
  stopSe( SP_dodge - 12, SE036, 0);
  stopSe( SP_dodge - 12, SE037, 0);
  stopSe( SP_dodge - 12, SE038, 0);
  stopSe( SP_dodge - 12, SE039, 0);
  --setVoiceVolume( SP_dodge - 12, SE_0_000, 0 );

  pauseAll( SP_dodge, 67);
  
  speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
  setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
  
  kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
  
  entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
  endPhase(SP_dodge+10);
  
do return end
else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 音 ** --
--敵ヒット
SE040 = playSeVer2( spep_0 + 634, 1068, "", 0, 0, 0, -1);

--爆発
SE041 = playSeVer2( spep_0 + 694, 1159, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 694, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
-- hideKoScreen();
dealDamage( spep_0 + 700 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 818f

end