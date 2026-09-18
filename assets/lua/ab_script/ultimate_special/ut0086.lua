-- 1030390:LR_超サイヤ人2孫悟飯(少年期)_アクティブ必殺技：親子かめはめ波
-- sp_effect_a1_00487
-- ut0086

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01  = 163673;  --   ef_001 空縦PAN〜地球からかめはめ波
SP_01b = 163674;  --   ef_001_b 空縦PAN〜地球からかめはめ波
SP_02  = 163675;  --   ef_002 見上げる悟飯とうっすら悟空

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
-- TODO: 敵キャラクターの開始フレームはムービー尺に合わせて手動確認してください。

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;---記載するspepの数に要注意

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 1160 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 1160 -13, SP_01, spep_0 + 1160 -13 + 2, 1);
       else
           skipFrame(0, spep_0 + 1570 -1);  -- スキップ先フレーム指定
           setupMovie(spep_0 + 1570 -1, SP_01, spep_0 + 1570 -1 + 2, 1);

           --地響き
           SE051 = playSeVer2( spep_0 + 1570, 1044, "",spep_0 + 1588, 0, 44, -1);

           --かめはめ波飛んでいく
           SE053 = playSeVer2( spep_0 + 1570, 1213, "",spep_0 + 1588, 0, 42, -1);
           setSeVolumeByWorkId( spep_0 + 1570, SE053, 69 );

       end
    else
        setupMovie(0, SP_01, 0, 1);

    end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 空縦PAN〜地球からかめはめ波
------------------------------------------------------
MAX_FRAME_0 = 1962;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 空縦PAN〜地球からかめはめ波(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 1222 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1234 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1222 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 1222 + OFFSET_X, 1, -243.9, -268 , 0 );
setMoveKey( spep_0 + 1225 + OFFSET_X, 1, -243.9, -268 , 0 );
setMoveKey( spep_0 + 1226 + OFFSET_X, 1, -143.9, -188 , 0 );
setMoveKey( spep_0 + 1234 + OFFSET_X, 1, -143.9, -188 , 0 );

setScaleKey( spep_0 + 1222 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 1234 + OFFSET_X, 1, 0.87, 0.87 );

setRotateKey( spep_0 + 1222 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 1234 + OFFSET_X, 1, 0 );

--敵の動き2
setDisp( spep_0 + 1782 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1842 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1782 + OFFSET_X, 1, 5 );

setMoveKey( spep_0 + 1782 + OFFSET_X, 1, 24, -55.9, 0 );
setMoveKey( spep_0 + 1783 + OFFSET_X, 1, 24, -55.9, 0 );
setMoveKey( spep_0 + 1784 + OFFSET_X, 1, 21.9, -55.2 , 0 );
setMoveKey( spep_0 + 1785 + OFFSET_X, 1, 21.9, -55.2 , 0 );
setMoveKey( spep_0 + 1786 + OFFSET_X, 1, 19.9, -54.5 , 0 );
setMoveKey( spep_0 + 1787 + OFFSET_X, 1, 19.9, -54.5 , 0 );
setMoveKey( spep_0 + 1788 + OFFSET_X, 1, 17.9, -53.8 , 0 );
setMoveKey( spep_0 + 1789 + OFFSET_X, 1, 17.9, -53.8 , 0 );
setMoveKey( spep_0 + 1790 + OFFSET_X, 1, 16.1, -53.1 , 0 );
setMoveKey( spep_0 + 1791 + OFFSET_X, 1, 16.1, -53.1 , 0 );
setMoveKey( spep_0 + 1792 + OFFSET_X, 1, 14.3, -52.5 , 0 );
setMoveKey( spep_0 + 1793 + OFFSET_X, 1, 14.3, -52.5 , 0 );
setMoveKey( spep_0 + 1794 + OFFSET_X, 1, 12.6, -51.9 , 0 );
setMoveKey( spep_0 + 1795 + OFFSET_X, 1, 12.6, -51.9 , 0 );
setMoveKey( spep_0 + 1796 + OFFSET_X, 1, 10.9, -51.3 , 0 );
setMoveKey( spep_0 + 1797 + OFFSET_X, 1, 10.9, -51.3 , 0 );
setMoveKey( spep_0 + 1798 + OFFSET_X, 1, 9.3, -50.7 , 0 );
setMoveKey( spep_0 + 1799 + OFFSET_X, 1, 9.3, -50.7 , 0 );
setMoveKey( spep_0 + 1800 + OFFSET_X, 1, 7.8, -50.2 , 0 );
setMoveKey( spep_0 + 1801 + OFFSET_X, 1, 7.8, -50.2 , 0 );
setMoveKey( spep_0 + 1802 + OFFSET_X, 1, 6.4, -49.7 , 0 );
setMoveKey( spep_0 + 1803 + OFFSET_X, 1, 6.4, -49.7 , 0 );
setMoveKey( spep_0 + 1804 + OFFSET_X, 1, 5, -49.2 , 0 );
setMoveKey( spep_0 + 1805 + OFFSET_X, 1, 5, -49.2 , 0 );
setMoveKey( spep_0 + 1806 + OFFSET_X, 1, 3.8, -48.7 , 0 );
setMoveKey( spep_0 + 1807 + OFFSET_X, 1, 3.8, -48.7 , 0 );
setMoveKey( spep_0 + 1808 + OFFSET_X, 1, 2.5, -48.3 , 0 );
setMoveKey( spep_0 + 1809 + OFFSET_X, 1, 2.5, -48.3 , 0 );
setMoveKey( spep_0 + 1810 + OFFSET_X, 1, 1.4, -47.9 , 0 );
setMoveKey( spep_0 + 1811 + OFFSET_X, 1, 1.4, -47.9 , 0 );
setMoveKey( spep_0 + 1812 + OFFSET_X, 1, 0.3, -47.5 , 0 );
setMoveKey( spep_0 + 1813 + OFFSET_X, 1, 0.3, -47.5 , 0 );
setMoveKey( spep_0 + 1814 + OFFSET_X, 1, -0.7, -47.1 , 0 );
setMoveKey( spep_0 + 1815 + OFFSET_X, 1, -0.7, -47.1 , 0 );
setMoveKey( spep_0 + 1816 + OFFSET_X, 1, -1.6, -46.8 , 0 );
setMoveKey( spep_0 + 1817 + OFFSET_X, 1, -1.6, -46.8 , 0 );
setMoveKey( spep_0 + 1818 + OFFSET_X, 1, -2.4, -46.5 , 0 );
setMoveKey( spep_0 + 1819 + OFFSET_X, 1, -2.4, -46.5 , 0 );
setMoveKey( spep_0 + 1820 + OFFSET_X, 1, -3.2, -46.2 , 0 );
setMoveKey( spep_0 + 1821 + OFFSET_X, 1, -3.2, -46.2 , 0 );
setMoveKey( spep_0 + 1822 + OFFSET_X, 1, -3.9, -46 , 0 );
setMoveKey( spep_0 + 1823 + OFFSET_X, 1, -3.9, -46 , 0 );
setMoveKey( spep_0 + 1824 + OFFSET_X, 1, -4.5, -45.8 , 0 );
setMoveKey( spep_0 + 1825 + OFFSET_X, 1, -4.5, -45.8 , 0 );
setMoveKey( spep_0 + 1826 + OFFSET_X, 1, -5.1, -45.6 , 0 );
setMoveKey( spep_0 + 1827 + OFFSET_X, 1, -5.1, -45.6 , 0 );
setMoveKey( spep_0 + 1828 + OFFSET_X, 1, -5.5, -45.4 , 0 );
setMoveKey( spep_0 + 1829 + OFFSET_X, 1, -5.5, -45.4 , 0 );
setMoveKey( spep_0 + 1830 + OFFSET_X, 1, -5.9, -45.3 , 0 );
setMoveKey( spep_0 + 1831 + OFFSET_X, 1, -5.9, -45.3 , 0 );
setMoveKey( spep_0 + 1832 + OFFSET_X, 1, -6.3, -45.1 , 0 );
setMoveKey( spep_0 + 1833 + OFFSET_X, 1, -6.3, -45.1 , 0 );
setMoveKey( spep_0 + 1834 + OFFSET_X, 1, -6.5, -45.1 , 0 );
setMoveKey( spep_0 + 1835 + OFFSET_X, 1, -6.5, -45.1 , 0 );
setMoveKey( spep_0 + 1836 + OFFSET_X, 1, -6.7, -45 , 0 );
setMoveKey( spep_0 + 1837 + OFFSET_X, 1, -6.7, -45 , 0 );
setMoveKey( spep_0 + 1838 + OFFSET_X, 1, -6.8, -44.9 , 0 );
setMoveKey( spep_0 + 1842 + OFFSET_X, 1, -6.8, -44.8 , 0 );

setScaleKey( spep_0 + 1782 + OFFSET_X, 1, 5.26, 5.26 );
setScaleKey( spep_0 + 1783 + OFFSET_X, 1, 5.26, 5.26 );
setScaleKey( spep_0 + 1784 + OFFSET_X, 1, 5.03, 5.03 );
setScaleKey( spep_0 + 1785 + OFFSET_X, 1, 5.03, 5.03 );
setScaleKey( spep_0 + 1786 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_0 + 1787 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_0 + 1788 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_0 + 1789 + OFFSET_X, 1, 4.6, 4.6 );
setScaleKey( spep_0 + 1790 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_0 + 1791 + OFFSET_X, 1, 4.39, 4.39 );
setScaleKey( spep_0 + 1792 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_0 + 1793 + OFFSET_X, 1, 4.19, 4.19 );
setScaleKey( spep_0 + 1794 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 1795 + OFFSET_X, 1, 4, 4 );
setScaleKey( spep_0 + 1796 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_0 + 1797 + OFFSET_X, 1, 3.82, 3.82 );
setScaleKey( spep_0 + 1798 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 1799 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_0 + 1800 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_0 + 1801 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_0 + 1802 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 1803 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 1804 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 1805 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_0 + 1806 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 1807 + OFFSET_X, 1, 3.03, 3.03 );
setScaleKey( spep_0 + 1808 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 1809 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_0 + 1810 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 1811 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 1812 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 1813 + OFFSET_X, 1, 2.65, 2.65 );
setScaleKey( spep_0 + 1814 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 1815 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 1816 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 1817 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 1818 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 1819 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 1820 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 1821 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 1822 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 1823 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 1824 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 1825 + OFFSET_X, 1, 2.12, 2.12 );
setScaleKey( spep_0 + 1826 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 1827 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_0 + 1828 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 1829 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_0 + 1830 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 1831 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_0 + 1832 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 1833 + OFFSET_X, 1, 1.92, 1.92 );
setScaleKey( spep_0 + 1834 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 1835 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_0 + 1836 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 1837 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_0 + 1838 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 1842 + OFFSET_X, 1, 1.86, 1.86 );

setRotateKey( spep_0 + 1782 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 1842 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1175, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 608, 0, 120, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--セリフカットイン
SE003 = playSeVer2( spep_0 + 48, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE003, 63 );

--気ダメ
SE004 = playSeVer2( spep_0 + 432, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 432, SE004, 74 );
SE005 = playSeVer2( spep_0 + 432, 1035, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 432, SE005, 140 );

--イナヅマ
SE006 = playSeVer2( spep_0 + 448, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 448, SE006, 60 );
SE014 = playSeVer2( spep_0 + 582, 1147, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 582, SE014, 62 );
SE029 = playSeVer2( spep_0 + 788, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 788, SE029, 57 );
SE037 = playSeVer2( spep_0 + 922, 1147, "",spep_0 + 1064, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 922, SE037, 55 );

--オーラ
SE007 = playSeVer2( spep_0 + 448, 1036, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 472, 1036, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 496, 1036, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 520, 1036, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 544, 1036, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 568, 1036, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 592, 1036, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 616, 1036, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 640, 1036, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 664, 1036, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 688, 1036, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 712, 1036, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 736, 1036, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 760, 1036, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 784, 1036, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 808, 1036, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 832, 1036, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 856, 1036, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 880, 1036, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 904, 1036, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 928, 1036, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 952, 1036, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_0 + 976, 1036, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 1000, 1036, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 1024, 1036, "", 0, 0, 0, -1);

--足踏み込む
SE010 = playSeVer2( spep_0 + 520, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 520, SE010, 209 );
SE016 = playSeVer2( spep_0 + 596, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 596, SE016, 68 );

--かめはめ波溜め
SE020 = playSeVer2( spep_0 + 716, 1210, "",spep_0 + 1040, 46, 28, -1);
setStartTimeMs( SE020,  733 );
SE025 = playSeVer2( spep_0 + 760, 1356, "",spep_0 + 1050, 0, 34, -1);

--砂埃あがる
SE026 = playSeVer2( spep_0 + 774, 1188, "", 0, 20, 0, -1);
setSeVolumeByWorkId( spep_0 + 774, SE026, 71 );
setStartTimeMs( SE026,  200 );
SE027 = playSeVer2( spep_0 + 762, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 762, SE027, 61 );
setPitch( spep_0 + 762, SE027, -400 );
setTimeStretch( SE027, 0.73, 30, 4 );

--溜め中爆発
SE032 = playSeVer2( spep_0 + 844, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 844, SE032, 78 );
SE033 = playSeVer2( spep_0 + 844, 1209, "", 0, 0, 0, -1);

--カメラ回転
SE040 = playSeVer2( spep_0 + 972, 1116, "",spep_0 + 1032, 0, 32, -1);

--かめはめ波発射
SE043 = playSeVer2( spep_0 + 1012, 1284, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_0 + 1012, 1223, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_0 + 1012, 1146, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 1012, 1423, "", 0, 0, 0, -1);

--かめはめ波飛んでいく
SE048 = playSeVer2( spep_0 + 1144, 1211, "",spep_0 + 1562, 0, 66, -1);
setSeVolumeByWorkId( spep_0 + 1144, SE048, 269 );
SE049 = playSeVer2( spep_0 + 1144, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1144, SE049, 69 );
SE050 = playSeVer2( spep_0 + 1144, 1304, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「最後に見せてくれよ…」
playVoice( spep_0 + 36, 935 );
setVoiceVolume( spep_0 + 36, 935, 100 );

--「オラたちふたりでつくった力を！」
playVoice( spep_0 + 164, 936 );
setVoiceVolume( spep_0 + 164, 936, 100 );

--「はい！！！！」
playVoice( spep_0 + 392, 937 );
setVoiceVolume( spep_0 + 392, 937, 110 );

--「か...め...は...め...はー！！」
SE_9_977 = playVoice( spep_0 + 512, 977 );
setVoiceVolume( spep_0 + 512, 977, 128 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 1160; --エンドフェイズのフレーム数を置き換える
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE043, 0);
stopSe( SP_dodge - 12, SE044, 0);
stopSe( SP_dodge - 12, SE045, 0);
stopSe( SP_dodge - 12, SE046, 0);
stopSe( SP_dodge - 12, SE048, 0);
stopSe( SP_dodge - 12, SE049, 0);
stopSe( SP_dodge - 12, SE050, 0);
setVoiceVolume( SP_dodge - 12, SE_9_977, 0 );

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
--地響き
SE051 = playSeVer2( spep_0 + 1172, 1044, "",spep_0 + 1588, 0, 44, -1);

--かめはめ波飛んでいく
SE052 = playSeVer2( spep_0 + 1228, 1159, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_0 + 1378, 1213, "",spep_0 + 1588, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 1378, SE053, 69 );

--悟飯覚醒
SE054 = playSeVer2( spep_0 + 1574, 1475, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1574, SE054, 151 );

--かめはめ波発射２
SE055 = playSeVer2( spep_0 + 1678, 1161, "",spep_0 + 1918, 0, 70, -1);
SE056 = playSeVer2( spep_0 + 1678, 1213, "",spep_0 + 1922, 0, 72, -1);
SE057 = playSeVer2( spep_0 + 1678, 1133, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_0 + 1678, 1145, "",spep_0 + 1776, 0, 28, -1);
SE059 = playSeVer2( spep_0 + 1678, 1212, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1678, SE059, 72 );

--威力増大
SE060 = playSeVer2( spep_0 + 1764, 1258, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_0 + 1770, 1027, "", 0, 0, 0, -1);

--宇宙へ飛んでいく
SE062 = playSeVer2( spep_0 + 1832, 1296, "",spep_0 + 1980, 0, 110, -1);
SE063 = playSeVer2( spep_0 + 1832, 1263, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_0 + 1832, 1145, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「いまだーーーーーっ！！！！」
playVoice( spep_0 + 1492, 938 );
setVoiceVolume( spep_0 + 1492, 938, 124 );

--「うあーーーーーーーーっ！！！！！」
playVoice( spep_0 + 1622, 939 );
setVoiceVolume( spep_0 + 1622, 939, 124 );


if ( _IS_DEAD_LAST_ == 0 ) then
    entryFade( spep_0 + 1952 + OFFSET_X, 6, 30, 0, 0, 0, 0, 255);  -- black fade
end

-- ** おわり ** --
hideKoScreen();
dealDamage( spep_0 + 1784 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 終了フレーム 1962f

else end
