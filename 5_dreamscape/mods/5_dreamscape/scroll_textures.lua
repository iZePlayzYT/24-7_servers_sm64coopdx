local castle_inside_1_scroll = false

local bbh_1_scroll = false
local bbh_2_scroll = false
local bbh_3_scroll = false

local hmc_1_scroll = false
local hmc_2_scroll = false
local hmc_3_scroll = false

local ssl_1_scroll = false
local ssl_2_scroll = false

local bob_1_scroll = false
local bob_2_scroll = false
local bob_3_scroll = false

local sl_1_scroll = false

local wdw_1_scroll = false
local wdw_2_scroll = false

local jrb_1_scroll = false
local jrb_2_scroll = false
local jrb_4_scroll = false

local thi_1_scroll = false

local ttc_1_scroll = false
local ttc_2_scroll = false
local ttc_3_scroll = false

local rr_1_scroll = false
local rr_2_scroll = false

local castle_grounds_1_scroll = false
local castle_grounds_2_scroll = false

local bitdw_1_scroll = false
local bitdw_2_scroll = false

local bitfs_1_scroll = false

local sa_1_scroll = false

local bits_1_scroll = false
local bits_2_scroll = false
local bits_3_scroll = false

local lll_1_scroll = false
local lll_2_scroll = false

local ddd_1_scroll = false

local wf_1_scroll = false
local wf_2_scroll = false

local castle_courtyard_1_scroll = false
local castle_courtyard_2_scroll = false

local pss_2_scroll = false
local pss_3_scroll = false
local pss_4_scroll = false

local cotmc_1_scroll = false

local totwc_1_scroll = false

local bowser_1_1_scroll = false

local wmotr_1_scroll = false

local bowser_2_1_scroll = false

local bowser_3_1_scroll = false

local ttm_1_scroll = false
local ttm_2_scroll = false






local function cg1_scrolls()
    local np = gNetworkPlayers[0]
    local m = gMarioStates[0]

    if m.playerIndex ~= 0 then return end

    if np.currLevelNum == LEVEL_CASTLE_GROUNDS and np.currAreaIndex == 1 then
        if not castle_grounds_1_scroll then
            add_scroll_target(77, "VB_castle_grounds_1_0xe037980", 0, 8) -- Start VB
            -- Count: 8

            add_scroll_target(78, "VB_castle_grounds_1_0xe048100", 0, 11) -- Start VB
            add_scroll_target(78, "VB_castle_grounds_1_0xe0481b0", 0, 11)
            add_scroll_target(78, "VB_castle_grounds_1_0xe048260", 0, 11)
            add_scroll_target(78, "VB_castle_grounds_1_0xe048310", 0, 11)
            add_scroll_target(78, "VB_castle_grounds_1_0xe0483c0", 0, 8)
            -- Count: 52

            add_scroll_target(79, "VB_castle_grounds_1_0xe048440", 0, 4) -- Start VB
            -- Count: 4

            add_scroll_target(80, "VB_castle_grounds_1_0xe059e60", 0, 4) -- Start VB
            -- Count: 4
            castle_grounds_1_scroll = true
        end
    end
end

local function scrollings(m)
    local np = gNetworkPlayers[0]
    local m = gMarioStates[0]

    if m.playerIndex ~= 0 then return end

    if np.currLevelNum == LEVEL_CASTLE and np.currAreaIndex == 1 then
        if not castle_inside_1_scroll then
            add_scroll_target(0, "VB_castle_inside_1_0xe039090", 0, 9) -- Start VB
            add_scroll_target(0, "VB_castle_inside_1_0xe039120", 0, 11)
            add_scroll_target(0, "VB_castle_inside_1_0xe0391d0", 0, 4)
            -- Count: 24

            add_scroll_target(1, "VB_castle_inside_1_0xe0477f0", 0, 10) -- Start VB
            add_scroll_target(1, "VB_castle_inside_1_0xe047890", 0, 11)
            add_scroll_target(1, "VB_castle_inside_1_0xe047940", 0, 11)
            add_scroll_target(1, "VB_castle_inside_1_0xe0479f0", 0, 9)
            add_scroll_target(1, "VB_castle_inside_1_0xe047a80", 0, 9)
            add_scroll_target(1, "VB_castle_inside_1_0xe047b10", 0, 11)
            add_scroll_target(1, "VB_castle_inside_1_0xe047bc0", 0, 7)
            add_scroll_target(1, "VB_castle_inside_1_0xe047c30", 0, 9)
            add_scroll_target(1, "VB_castle_inside_1_0xe047cc0", 0, 11)
            add_scroll_target(1, "VB_castle_inside_1_0xe047d70", 0, 9)
            add_scroll_target(1, "VB_castle_inside_1_0xe047e00", 0, 9)
            add_scroll_target(1, "VB_castle_inside_1_0xe047e90", 0, 9)
            add_scroll_target(1, "VB_castle_inside_1_0xe047f20", 0, 11)
            add_scroll_target(1, "VB_castle_inside_1_0xe047fd0", 0, 7)
            add_scroll_target(1, "VB_castle_inside_1_0xe048040", 0, 10)
            add_scroll_target(1, "VB_castle_inside_1_0xe0480e0", 0, 10)
            add_scroll_target(1, "VB_castle_inside_1_0xe048180", 0, 11)
            add_scroll_target(1, "VB_castle_inside_1_0xe048230", 0, 9)
            add_scroll_target(1, "VB_castle_inside_1_0xe0482c0", 0, 8)
            -- Count: 181
            castle_inside_1_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_BBH and np.currAreaIndex == 1 then
        if not bbh_1_scroll then
            add_scroll_target(2, "VB_bbh_1_0xe022a30", 0, 10) -- Start VB
            add_scroll_target(2, "VB_bbh_1_0xe022ad0", 0, 12)
            add_scroll_target(2, "VB_bbh_1_0xe022b90", 0, 10)
            add_scroll_target(2, "VB_bbh_1_0xe022c30", 0, 9)
            add_scroll_target(2, "VB_bbh_1_0xe022cc0", 0, 13)
            add_scroll_target(2, "VB_bbh_1_0xe022d90", 0, 8)
            add_scroll_target(2, "VB_bbh_1_0xe022e10", 0, 9)
            add_scroll_target(2, "VB_bbh_1_0xe022ea0", 0, 12)
            add_scroll_target(2, "VB_bbh_1_0xe022f60", 0, 12)
            add_scroll_target(2, "VB_bbh_1_0xe023020", 0, 8)
            add_scroll_target(2, "VB_bbh_1_0xe0230a0", 0, 4)
            -- Count: 107
            bbh_1_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_BBH and np.currAreaIndex == 2 then
        if not bbh_2_scroll then
            add_scroll_target(3, "VB_bbh_2_0xe01e8f0", 0, 13) -- Start VB
            add_scroll_target(3, "VB_bbh_2_0xe01e9c0", 0, 12)
            add_scroll_target(3, "VB_bbh_2_0xe01ea80", 0, 12)
            add_scroll_target(3, "VB_bbh_2_0xe01eb40", 0, 14)
            add_scroll_target(3, "VB_bbh_2_0xe01ec20", 0, 11)
            add_scroll_target(3, "VB_bbh_2_0xe01ecd0", 0, 13)
            add_scroll_target(3, "VB_bbh_2_0xe01eda0", 0, 13)
            add_scroll_target(3, "VB_bbh_2_0xe01ee70", 0, 11)
            add_scroll_target(3, "VB_bbh_2_0xe01ef20", 0, 11)
            add_scroll_target(3, "VB_bbh_2_0xe01efd0", 0, 10)
            add_scroll_target(3, "VB_bbh_2_0xe01f070", 0, 4)
            -- Count: 124
            bbh_2_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_BBH and np.currAreaIndex == 3 then
        if not bbh_3_scroll then
            add_scroll_target(4, "VB_bbh_3_0xe00b170", 0, 15) -- Start VB
            add_scroll_target(4, "VB_bbh_3_0xe00b260", 0, 13)
            add_scroll_target(4, "VB_bbh_3_0xe00b330", 0, 9)
            add_scroll_target(4, "VB_bbh_3_0xe00b3c0", 0, 12)
            add_scroll_target(4, "VB_bbh_3_0xe00b480", 0, 15)
            add_scroll_target(4, "VB_bbh_3_0xe00b570", 0, 11)
            add_scroll_target(4, "VB_bbh_3_0xe00b620", 0, 13)
            add_scroll_target(4, "VB_bbh_3_0xe00b6f0", 0, 3)
            -- Count: 91
            bbh_3_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_HMC and np.currAreaIndex == 1 then
        if not hmc_1_scroll then
            add_scroll_target(5, "VB_hmc_1_0xe0289c0", 0, 9) -- Start VB
            -- Count: 9
            hmc_1_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_HMC and np.currAreaIndex == 2 then
        if not hmc_2_scroll then
            add_scroll_target(6, "VB_hmc_2_0xe00bb00", 0, 4) -- Start VB
            -- Count: 4
            hmc_2_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_HMC and np.currAreaIndex == 3 then
        if not hmc_3_scroll then
            add_scroll_target(7, "VB_hmc_3_0xe036200", 0, 11) -- Start VB
            add_scroll_target(7, "VB_hmc_3_0xe0362b0", 0, 3)
            -- Count: 14

            add_scroll_target(8, "VB_hmc_3_0xe0361c0", 0, 4) -- Start VB
            -- Count: 4
            hmc_3_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_SSL and np.currAreaIndex == 1 then
        if not ssl_1_scroll then
            add_scroll_target(9, "VB_ssl_1_0xe025c90", 0, 11) -- Start VB
            add_scroll_target(9, "VB_ssl_1_0xe025d40", 0, 9)
            add_scroll_target(9, "VB_ssl_1_0xe025dd0", 0, 11)
            add_scroll_target(9, "VB_ssl_1_0xe025e80", 0, 9)
            add_scroll_target(9, "VB_ssl_1_0xe025f10", 0, 7)
            -- Count: 47

            add_scroll_target(10, "VB_ssl_1_0xe026730", 0, 4) -- Start VB
            -- Count: 4

            add_scroll_target(11, "VB_ssl_1_0xe02d5e0", 0, 4) -- Start VB
            -- Count: 4

            add_scroll_target(12, "VB_ssl_1_0xe0403d0", 0, 8) -- Start VB
            add_scroll_target(12, "VB_ssl_1_0xe040450", 0, 11)
            add_scroll_target(12, "VB_ssl_1_0xe040500", 0, 11)
            add_scroll_target(12, "VB_ssl_1_0xe0405b0", 0, 10)
            add_scroll_target(12, "VB_ssl_1_0xe040650", 0, 12)
            add_scroll_target(12, "VB_ssl_1_0xe040710", 0, 12)
            add_scroll_target(12, "VB_ssl_1_0xe0407d0", 0, 10)
            add_scroll_target(12, "VB_ssl_1_0xe040870", 0, 11)
            -- Count: 85
            ssl_1_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_SSL and np.currAreaIndex == 2 then
        if not ssl_2_scroll then
            add_scroll_target(13, "VB_ssl_2_0xe013540", 0, 7) -- Start VB
            add_scroll_target(13, "VB_ssl_2_0xe0135b0", 0, 7)
            add_scroll_target(13, "VB_ssl_2_0xe013620", 0, 7)
            add_scroll_target(13, "VB_ssl_2_0xe013690", 0, 9)
            -- Count: 30
            ssl_2_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_BOB and np.currAreaIndex == 1 then
        if not bob_1_scroll then
            add_scroll_target(14, "VB_bob_1_0xe024be0", 0, 9) -- Start VB
            add_scroll_target(14, "VB_bob_1_0xe024c70", 0, 11)
            add_scroll_target(14, "VB_bob_1_0xe024d20", 0, 11)
            add_scroll_target(14, "VB_bob_1_0xe024dd0", 0, 9)
            add_scroll_target(14, "VB_bob_1_0xe024e60", 0, 11)
            add_scroll_target(14, "VB_bob_1_0xe024f10", 0, 11)
            add_scroll_target(14, "VB_bob_1_0xe024fc0", 0, 9)
            add_scroll_target(14, "VB_bob_1_0xe025050", 0, 3)
            -- Count: 74

            add_scroll_target(15, "VB_bob_1_0xe028e10", 0, 11) -- Start VB
            add_scroll_target(15, "VB_bob_1_0xe028ec0", 0, 13)
            add_scroll_target(15, "VB_bob_1_0xe028f90", 0, 12)
            add_scroll_target(15, "VB_bob_1_0xe029050", 0, 10)
            -- Count: 46

            add_scroll_target(16, "VB_bob_1_0xe02e960", 0, 15) -- Start VB
            add_scroll_target(16, "VB_bob_1_0xe02ea50", 0, 15)
            add_scroll_target(16, "VB_bob_1_0xe02eb40", 0, 15)
            add_scroll_target(16, "VB_bob_1_0xe02ec30", 0, 15)
            add_scroll_target(16, "VB_bob_1_0xe02ed20", 0, 15)
            add_scroll_target(16, "VB_bob_1_0xe02ee10", 0, 15)
            -- Count: 90

            add_scroll_target(17, "VB_bob_1_0xe03bac0", 0, 4) -- Start VB
            -- Count: 4
            bob_1_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_BOB and np.currAreaIndex == 2 then
        if not bob_2_scroll then
            add_scroll_target(18, "VB_bob_2_0xe028850", 0, 9) -- Start VB
            add_scroll_target(18, "VB_bob_2_0xe0288e0", 0, 11)
            add_scroll_target(18, "VB_bob_2_0xe028990", 0, 11)
            add_scroll_target(18, "VB_bob_2_0xe028a40", 0, 11)
            add_scroll_target(18, "VB_bob_2_0xe028af0", 0, 10)
            add_scroll_target(18, "VB_bob_2_0xe028b90", 0, 11)
            add_scroll_target(18, "VB_bob_2_0xe028c40", 0, 11)
            add_scroll_target(18, "VB_bob_2_0xe028cf0", 0, 11)
            add_scroll_target(18, "VB_bob_2_0xe028da0", 0, 11)
            add_scroll_target(18, "VB_bob_2_0xe028e50", 0, 6)
            -- Count: 102

            add_scroll_target(19, "VB_bob_2_0xe0485c0", 0, 15) -- Start VB
            add_scroll_target(19, "VB_bob_2_0xe0486b0", 0, 15)
            add_scroll_target(19, "VB_bob_2_0xe0487a0", 0, 15)
            add_scroll_target(19, "VB_bob_2_0xe048890", 0, 15)
            add_scroll_target(19, "VB_bob_2_0xe048980", 0, 15)
            add_scroll_target(19, "VB_bob_2_0xe048a70", 0, 15)
            -- Count: 90
            bob_2_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_BOB and np.currAreaIndex == 3 then
        if not bob_3_scroll then
            add_scroll_target(20, "VB_bob_3_0xe009550", 0, 4) -- Start VB
            -- Count: 4
            bob_3_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_SL and np.currAreaIndex == 1 then
        if not sl_1_scroll then
            add_scroll_target(21, "VB_sl_1_0xe034320", 0, 11) -- Start VB
            add_scroll_target(21, "VB_sl_1_0xe0343d0", 0, 11)
            add_scroll_target(21, "VB_sl_1_0xe034480", 0, 9)
            add_scroll_target(21, "VB_sl_1_0xe034510", 0, 9)
            add_scroll_target(21, "VB_sl_1_0xe0345a0", 0, 7)
            -- Count: 47

            add_scroll_target(22, "VB_sl_1_0xe059900", 0, 9) -- Start VB
            add_scroll_target(22, "VB_sl_1_0xe059990", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe059a60", 0, 9)
            add_scroll_target(22, "VB_sl_1_0xe059af0", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe059bc0", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe059c90", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe059d40", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe059e10", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe059ee0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe059f90", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05a060", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05a110", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05a1e0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05a290", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05a360", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05a430", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05a4e0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05a590", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05a640", 0, 9)
            add_scroll_target(22, "VB_sl_1_0xe05a6d0", 0, 9)
            add_scroll_target(22, "VB_sl_1_0xe05a760", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05a810", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05a8e0", 0, 14)
            add_scroll_target(22, "VB_sl_1_0xe05a9c0", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05aa90", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05ab60", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05ac30", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05ace0", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05adb0", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05ae80", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05af30", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05afe0", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05b0b0", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05b180", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05b230", 0, 9)
            add_scroll_target(22, "VB_sl_1_0xe05b2c0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05b370", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05b420", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05b4d0", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05b5a0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05b650", 0, 9)
            add_scroll_target(22, "VB_sl_1_0xe05b6e0", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05b7b0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05b860", 0, 15)
            add_scroll_target(22, "VB_sl_1_0xe05b950", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05ba00", 0, 9)
            add_scroll_target(22, "VB_sl_1_0xe05ba90", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05bb40", 0, 15)
            add_scroll_target(22, "VB_sl_1_0xe05bc30", 0, 15)
            add_scroll_target(22, "VB_sl_1_0xe05bd20", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05bdf0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05bea0", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05bf70", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05c040", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05c110", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05c1e0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05c290", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05c340", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05c3f0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05c4a0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05c550", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05c600", 0, 9)
            add_scroll_target(22, "VB_sl_1_0xe05c690", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05c740", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05c7f0", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05c8c0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05c970", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05ca20", 0, 9)
            add_scroll_target(22, "VB_sl_1_0xe05cab0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05cb60", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05cc10", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05ccc0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05cd70", 0, 9)
            add_scroll_target(22, "VB_sl_1_0xe05ce00", 0, 9)
            add_scroll_target(22, "VB_sl_1_0xe05ce90", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05cf40", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05cff0", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05d0c0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05d170", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05d220", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05d2d0", 0, 9)
            add_scroll_target(22, "VB_sl_1_0xe05d360", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05d430", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05d4e0", 0, 9)
            add_scroll_target(22, "VB_sl_1_0xe05d570", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05d640", 0, 9)
            add_scroll_target(22, "VB_sl_1_0xe05d6d0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05d780", 0, 15)
            add_scroll_target(22, "VB_sl_1_0xe05d870", 0, 15)
            add_scroll_target(22, "VB_sl_1_0xe05d960", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05da30", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05db00", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05dbd0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05dc80", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05dd30", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05de00", 0, 15)
            add_scroll_target(22, "VB_sl_1_0xe05def0", 0, 9)
            add_scroll_target(22, "VB_sl_1_0xe05df80", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05e030", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05e0e0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05e190", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05e240", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05e2f0", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05e3c0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05e470", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05e540", 0, 9)
            add_scroll_target(22, "VB_sl_1_0xe05e5d0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05e680", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05e730", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05e800", 0, 9)
            add_scroll_target(22, "VB_sl_1_0xe05e890", 0, 9)
            add_scroll_target(22, "VB_sl_1_0xe05e920", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05e9d0", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05eaa0", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05eb70", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05ec20", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05ecf0", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05edc0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05ee70", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05ef20", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05efd0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05f080", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05f130", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05f1e0", 0, 15)
            add_scroll_target(22, "VB_sl_1_0xe05f2d0", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05f3a0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05f450", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05f500", 0, 9)
            add_scroll_target(22, "VB_sl_1_0xe05f590", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05f640", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05f710", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05f7c0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05f870", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05f940", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05fa10", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05fac0", 0, 9)
            add_scroll_target(22, "VB_sl_1_0xe05fb50", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05fc20", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe05fcf0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05fda0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05fe50", 0, 15)
            add_scroll_target(22, "VB_sl_1_0xe05ff40", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe05fff0", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe0600c0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe060170", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe060240", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe060310", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe0603c0", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe060490", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe060540", 0, 9)
            add_scroll_target(22, "VB_sl_1_0xe0605d0", 0, 9)
            add_scroll_target(22, "VB_sl_1_0xe060660", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe060730", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe0607e0", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe0608b0", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe060960", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe060a30", 0, 15)
            add_scroll_target(22, "VB_sl_1_0xe060b20", 0, 11)
            add_scroll_target(22, "VB_sl_1_0xe060bd0", 0, 13)
            add_scroll_target(22, "VB_sl_1_0xe060ca0", 0, 11)
            -- Count: 1861
            sl_1_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_WDW and np.currAreaIndex == 1 then
        if not wdw_1_scroll then
            add_scroll_target(23, "VB_wdw_1_0xe01c2f0", 0, 11) -- Start VB
            add_scroll_target(23, "VB_wdw_1_0xe01c3a0", 0, 13)
            add_scroll_target(23, "VB_wdw_1_0xe01c470", 0, 8)
            add_scroll_target(23, "VB_wdw_1_0xe01c4f0", 0, 10)
            add_scroll_target(23, "VB_wdw_1_0xe01c590", 0, 10)
            add_scroll_target(23, "VB_wdw_1_0xe01c630", 0, 9)
            add_scroll_target(23, "VB_wdw_1_0xe01c6c0", 0, 7)
            add_scroll_target(23, "VB_wdw_1_0xe01c730", 0, 8)
            add_scroll_target(23, "VB_wdw_1_0xe01c7b0", 0, 10)
            add_scroll_target(23, "VB_wdw_1_0xe01c850", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01c900", 0, 9)
            add_scroll_target(23, "VB_wdw_1_0xe01c990", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01ca40", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01caf0", 0, 8)
            add_scroll_target(23, "VB_wdw_1_0xe01cb70", 0, 7)
            add_scroll_target(23, "VB_wdw_1_0xe01cbe0", 0, 9)
            add_scroll_target(23, "VB_wdw_1_0xe01cc70", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01cd20", 0, 9)
            add_scroll_target(23, "VB_wdw_1_0xe01cdb0", 0, 10)
            add_scroll_target(23, "VB_wdw_1_0xe01ce50", 0, 9)
            add_scroll_target(23, "VB_wdw_1_0xe01cee0", 0, 10)
            add_scroll_target(23, "VB_wdw_1_0xe01cf80", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01d030", 0, 10)
            add_scroll_target(23, "VB_wdw_1_0xe01d0d0", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01d180", 0, 12)
            add_scroll_target(23, "VB_wdw_1_0xe01d240", 0, 12)
            add_scroll_target(23, "VB_wdw_1_0xe01d300", 0, 9)
            add_scroll_target(23, "VB_wdw_1_0xe01d390", 0, 8)
            add_scroll_target(23, "VB_wdw_1_0xe01d410", 0, 9)
            add_scroll_target(23, "VB_wdw_1_0xe01d4a0", 0, 12)
            add_scroll_target(23, "VB_wdw_1_0xe01d560", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01d610", 0, 10)
            add_scroll_target(23, "VB_wdw_1_0xe01d6b0", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01d760", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01d810", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01d8c0", 0, 9)
            add_scroll_target(23, "VB_wdw_1_0xe01d950", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01da00", 0, 10)
            add_scroll_target(23, "VB_wdw_1_0xe01daa0", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01db50", 0, 9)
            add_scroll_target(23, "VB_wdw_1_0xe01dbe0", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01dc90", 0, 10)
            add_scroll_target(23, "VB_wdw_1_0xe01dd30", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01dde0", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01de90", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01df40", 0, 7)
            add_scroll_target(23, "VB_wdw_1_0xe01dfb0", 0, 10)
            add_scroll_target(23, "VB_wdw_1_0xe01e050", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01e100", 0, 9)
            add_scroll_target(23, "VB_wdw_1_0xe01e190", 0, 9)
            add_scroll_target(23, "VB_wdw_1_0xe01e220", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01e2d0", 0, 12)
            add_scroll_target(23, "VB_wdw_1_0xe01e390", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01e440", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01e4f0", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01e5a0", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01e650", 0, 9)
            add_scroll_target(23, "VB_wdw_1_0xe01e6e0", 0, 8)
            add_scroll_target(23, "VB_wdw_1_0xe01e760", 0, 10)
            add_scroll_target(23, "VB_wdw_1_0xe01e800", 0, 9)
            add_scroll_target(23, "VB_wdw_1_0xe01e890", 0, 9)
            add_scroll_target(23, "VB_wdw_1_0xe01e920", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01e9d0", 0, 12)
            add_scroll_target(23, "VB_wdw_1_0xe01ea90", 0, 10)
            add_scroll_target(23, "VB_wdw_1_0xe01eb30", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01ebe0", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01ec90", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01ed40", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01edf0", 0, 10)
            add_scroll_target(23, "VB_wdw_1_0xe01ee90", 0, 9)
            add_scroll_target(23, "VB_wdw_1_0xe01ef20", 0, 9)
            add_scroll_target(23, "VB_wdw_1_0xe01efb0", 0, 10)
            add_scroll_target(23, "VB_wdw_1_0xe01f050", 0, 7)
            add_scroll_target(23, "VB_wdw_1_0xe01f0c0", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01f170", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01f220", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01f2d0", 0, 10)
            add_scroll_target(23, "VB_wdw_1_0xe01f370", 0, 10)
            add_scroll_target(23, "VB_wdw_1_0xe01f410", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01f4c0", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01f570", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01f620", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01f6d0", 0, 12)
            add_scroll_target(23, "VB_wdw_1_0xe01f790", 0, 10)
            add_scroll_target(23, "VB_wdw_1_0xe01f830", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01f8e0", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01f990", 0, 8)
            add_scroll_target(23, "VB_wdw_1_0xe01fa10", 0, 10)
            add_scroll_target(23, "VB_wdw_1_0xe01fab0", 0, 12)
            add_scroll_target(23, "VB_wdw_1_0xe01fb70", 0, 8)
            add_scroll_target(23, "VB_wdw_1_0xe01fbf0", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01fca0", 0, 9)
            add_scroll_target(23, "VB_wdw_1_0xe01fd30", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe01fde0", 0, 10)
            add_scroll_target(23, "VB_wdw_1_0xe01fe80", 0, 9)
            add_scroll_target(23, "VB_wdw_1_0xe01ff10", 0, 9)
            add_scroll_target(23, "VB_wdw_1_0xe01ffa0", 0, 10)
            add_scroll_target(23, "VB_wdw_1_0xe020040", 0, 8)
            add_scroll_target(23, "VB_wdw_1_0xe0200c0", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe020170", 0, 12)
            add_scroll_target(23, "VB_wdw_1_0xe020230", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe0202e0", 0, 10)
            add_scroll_target(23, "VB_wdw_1_0xe020380", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe020430", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe0204e0", 0, 12)
            add_scroll_target(23, "VB_wdw_1_0xe0205a0", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe020650", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe020700", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe0207b0", 0, 10)
            add_scroll_target(23, "VB_wdw_1_0xe020850", 0, 8)
            add_scroll_target(23, "VB_wdw_1_0xe0208d0", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe020980", 0, 12)
            add_scroll_target(23, "VB_wdw_1_0xe020a40", 0, 8)
            add_scroll_target(23, "VB_wdw_1_0xe020ac0", 0, 9)
            add_scroll_target(23, "VB_wdw_1_0xe020b50", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe020c00", 0, 7)
            add_scroll_target(23, "VB_wdw_1_0xe020c70", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe020d20", 0, 9)
            add_scroll_target(23, "VB_wdw_1_0xe020db0", 0, 10)
            add_scroll_target(23, "VB_wdw_1_0xe020e50", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe020f00", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe020fb0", 0, 8)
            add_scroll_target(23, "VB_wdw_1_0xe021030", 0, 11)
            add_scroll_target(23, "VB_wdw_1_0xe0210e0", 0, 10)
            add_scroll_target(23, "VB_wdw_1_0xe021180", 0, 10)
            add_scroll_target(23, "VB_wdw_1_0xe021220", 0, 11)
            -- Count: 1278

            add_scroll_target(24, "VB_wdw_1_0xe043990", 0, 4) -- Start VB
            -- Count: 4
            wdw_1_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_WDW and np.currAreaIndex == 2 then
        if not wdw_2_scroll then
            add_scroll_target(25, "VB_wdw_2_0xe009b50", 0, 13) -- Start VB
            add_scroll_target(25, "VB_wdw_2_0xe009c20", 0, 11)
            add_scroll_target(25, "VB_wdw_2_0xe009cd0", 0, 11)
            add_scroll_target(25, "VB_wdw_2_0xe009d80", 0, 9)
            add_scroll_target(25, "VB_wdw_2_0xe009e10", 0, 11)
            add_scroll_target(25, "VB_wdw_2_0xe009ec0", 0, 11)
            add_scroll_target(25, "VB_wdw_2_0xe009f70", 0, 12)
            add_scroll_target(25, "VB_wdw_2_0xe00a030", 0, 11)
            add_scroll_target(25, "VB_wdw_2_0xe00a0e0", 0, 9)
            add_scroll_target(25, "VB_wdw_2_0xe00a170", 0, 9)
            add_scroll_target(25, "VB_wdw_2_0xe00a200", 0, 8)
            add_scroll_target(25, "VB_wdw_2_0xe00a280", 0, 9)
            add_scroll_target(25, "VB_wdw_2_0xe00a310", 0, 7)
            add_scroll_target(25, "VB_wdw_2_0xe00a380", 0, 9)
            add_scroll_target(25, "VB_wdw_2_0xe00a410", 0, 13)
            add_scroll_target(25, "VB_wdw_2_0xe00a4e0", 0, 11)
            add_scroll_target(25, "VB_wdw_2_0xe00a590", 0, 11)
            add_scroll_target(25, "VB_wdw_2_0xe00a640", 0, 13)
            add_scroll_target(25, "VB_wdw_2_0xe00a710", 0, 12)
            add_scroll_target(25, "VB_wdw_2_0xe00a7d0", 0, 12)
            add_scroll_target(25, "VB_wdw_2_0xe00a890", 0, 13)
            add_scroll_target(25, "VB_wdw_2_0xe00a960", 0, 7)
            -- Count: 232
            wdw_2_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_JRB and np.currAreaIndex == 1 then
        if not jrb_1_scroll then
            add_scroll_target(26, "VB_jrb_1_0xe01e230", 0, 11) -- Start VB
            add_scroll_target(26, "VB_jrb_1_0xe01e2e0", 0, 11)
            add_scroll_target(26, "VB_jrb_1_0xe01e390", 0, 9)
            add_scroll_target(26, "VB_jrb_1_0xe01e420", 0, 8)
            add_scroll_target(26, "VB_jrb_1_0xe01e4a0", 0, 11)
            -- Count: 50

            add_scroll_target(27, "VB_jrb_1_0xe01e590", 0, 4) -- Start VB
            -- Count: 4

            add_scroll_target(28, "VB_jrb_1_0xe02b410", 0, 11) -- Start VB
            add_scroll_target(28, "VB_jrb_1_0xe02b4c0", 0, 10)
            add_scroll_target(28, "VB_jrb_1_0xe02b560", 0, 11)
            add_scroll_target(28, "VB_jrb_1_0xe02b610", 0, 9)
            add_scroll_target(28, "VB_jrb_1_0xe02b6a0", 0, 6)
            -- Count: 47

            add_scroll_target(29, "VB_jrb_1_0xe02e180", 0, 11) -- Start VB
            add_scroll_target(29, "VB_jrb_1_0xe02e230", 0, 10)
            add_scroll_target(29, "VB_jrb_1_0xe02e2d0", 0, 11)
            add_scroll_target(29, "VB_jrb_1_0xe02e380", 0, 9)
            add_scroll_target(29, "VB_jrb_1_0xe02e410", 0, 6)
            -- Count: 47

            add_scroll_target(30, "VB_jrb_1_0xe02f430", 0, 11) -- Start VB
            add_scroll_target(30, "VB_jrb_1_0xe02f4e0", 0, 10)
            add_scroll_target(30, "VB_jrb_1_0xe02f580", 0, 11)
            add_scroll_target(30, "VB_jrb_1_0xe02f630", 0, 9)
            add_scroll_target(30, "VB_jrb_1_0xe02f6c0", 0, 6)
            -- Count: 47

            add_scroll_target(31, "VB_jrb_1_0xe01e550", 0, 4) -- Start VB
            -- Count: 4

            add_scroll_target(32, "VB_jrb_1_0xe01e650", 0, 7) -- Start VB
            -- Count: 7
            jrb_1_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_JRB and np.currAreaIndex == 2 then
        if not jrb_2_scroll then
            add_scroll_target(33, "VB_jrb_2_0xe00ac20", 0, 11) -- Start VB
            add_scroll_target(33, "VB_jrb_2_0xe00acd0", 0, 11)
            add_scroll_target(33, "VB_jrb_2_0xe00ad80", 0, 13)
            add_scroll_target(33, "VB_jrb_2_0xe00ae50", 0, 11)
            add_scroll_target(33, "VB_jrb_2_0xe00af00", 0, 15)
            add_scroll_target(33, "VB_jrb_2_0xe00aff0", 0, 9)
            add_scroll_target(33, "VB_jrb_2_0xe00b080", 0, 9)
            add_scroll_target(33, "VB_jrb_2_0xe00b110", 0, 9)
            add_scroll_target(33, "VB_jrb_2_0xe00b1a0", 0, 9)
            add_scroll_target(33, "VB_jrb_2_0xe00b230", 0, 11)
            add_scroll_target(33, "VB_jrb_2_0xe00b2e0", 0, 11)
            add_scroll_target(33, "VB_jrb_2_0xe00b390", 0, 4)
            -- Count: 123

            add_scroll_target(34, "VB_jrb_2_0xe00b3d0", 0, 13) -- Start VB
            add_scroll_target(34, "VB_jrb_2_0xe00b4a0", 0, 13)
            add_scroll_target(34, "VB_jrb_2_0xe00b570", 0, 15)
            add_scroll_target(34, "VB_jrb_2_0xe00b660", 0, 13)
            add_scroll_target(34, "VB_jrb_2_0xe00b730", 0, 11)
            add_scroll_target(34, "VB_jrb_2_0xe00b7e0", 0, 11)
            add_scroll_target(34, "VB_jrb_2_0xe00b890", 0, 15)
            add_scroll_target(34, "VB_jrb_2_0xe00b980", 0, 7)
            -- Count: 98

            add_scroll_target(35, "VB_jrb_2_0xe00ce90", 0, 8) -- Start VB
            -- Count: 8
            jrb_2_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_JRB and np.currAreaIndex == 4 then
        if not jrb_4_scroll then
            add_scroll_target(36, "VB_jrb_4_0xe00bdd0", 0, 11) -- Start VB
            add_scroll_target(36, "VB_jrb_4_0xe00be80", 0, 11)
            add_scroll_target(36, "VB_jrb_4_0xe00bf30", 0, 11)
            add_scroll_target(36, "VB_jrb_4_0xe00bfe0", 0, 11)
            add_scroll_target(36, "VB_jrb_4_0xe00c090", 0, 11)
            add_scroll_target(36, "VB_jrb_4_0xe00c140", 0, 3)
            -- Count: 58

            add_scroll_target(37, "VB_jrb_4_0xe01ebc0", 0, 11) -- Start VB
            add_scroll_target(37, "VB_jrb_4_0xe01ec70", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe01ed20", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe01edd0", 0, 13)
            add_scroll_target(37, "VB_jrb_4_0xe01eea0", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe01ef50", 0, 10)
            add_scroll_target(37, "VB_jrb_4_0xe01eff0", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe01f0a0", 0, 9)
            add_scroll_target(37, "VB_jrb_4_0xe01f130", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe01f1e0", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe01f290", 0, 9)
            add_scroll_target(37, "VB_jrb_4_0xe01f320", 0, 13)
            add_scroll_target(37, "VB_jrb_4_0xe01f3f0", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe01f4a0", 0, 9)
            add_scroll_target(37, "VB_jrb_4_0xe01f530", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe01f5e0", 0, 9)
            add_scroll_target(37, "VB_jrb_4_0xe01f670", 0, 10)
            add_scroll_target(37, "VB_jrb_4_0xe01f710", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe01f7c0", 0, 8)
            add_scroll_target(37, "VB_jrb_4_0xe01f840", 0, 9)
            add_scroll_target(37, "VB_jrb_4_0xe01f8d0", 0, 9)
            add_scroll_target(37, "VB_jrb_4_0xe01f960", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe01fa10", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe01fac0", 0, 13)
            add_scroll_target(37, "VB_jrb_4_0xe01fb90", 0, 13)
            add_scroll_target(37, "VB_jrb_4_0xe01fc60", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe01fd10", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe01fdc0", 0, 13)
            add_scroll_target(37, "VB_jrb_4_0xe01fe90", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe01ff40", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe01fff0", 0, 9)
            add_scroll_target(37, "VB_jrb_4_0xe020080", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe020130", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe0201e0", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe020290", 0, 9)
            add_scroll_target(37, "VB_jrb_4_0xe020320", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe0203d0", 0, 9)
            add_scroll_target(37, "VB_jrb_4_0xe020460", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe020510", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe0205c0", 0, 13)
            add_scroll_target(37, "VB_jrb_4_0xe020690", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe020740", 0, 15)
            add_scroll_target(37, "VB_jrb_4_0xe020830", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe0208e0", 0, 13)
            add_scroll_target(37, "VB_jrb_4_0xe0209b0", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe020a60", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe020b10", 0, 11)
            add_scroll_target(37, "VB_jrb_4_0xe020bc0", 0, 6)
            -- Count: 518

            add_scroll_target(38, "VB_jrb_4_0xe0211d0", 0, 9) -- Start VB
            add_scroll_target(38, "VB_jrb_4_0xe021260", 0, 9)
            add_scroll_target(38, "VB_jrb_4_0xe0212f0", 0, 7)
            add_scroll_target(38, "VB_jrb_4_0xe021360", 0, 11)
            add_scroll_target(38, "VB_jrb_4_0xe021410", 0, 9)
            add_scroll_target(38, "VB_jrb_4_0xe0214a0", 0, 7)
            add_scroll_target(38, "VB_jrb_4_0xe021510", 0, 7)
            add_scroll_target(38, "VB_jrb_4_0xe021580", 0, 9)
            add_scroll_target(38, "VB_jrb_4_0xe021610", 0, 9)
            add_scroll_target(38, "VB_jrb_4_0xe0216a0", 0, 9)
            add_scroll_target(38, "VB_jrb_4_0xe021730", 0, 8)
            add_scroll_target(38, "VB_jrb_4_0xe0217b0", 0, 7)
            add_scroll_target(38, "VB_jrb_4_0xe021820", 0, 9)
            add_scroll_target(38, "VB_jrb_4_0xe0218b0", 0, 11)
            add_scroll_target(38, "VB_jrb_4_0xe021960", 0, 7)
            add_scroll_target(38, "VB_jrb_4_0xe0219d0", 0, 10)
            add_scroll_target(38, "VB_jrb_4_0xe021a70", 0, 9)
            add_scroll_target(38, "VB_jrb_4_0xe021b00", 0, 10)
            add_scroll_target(38, "VB_jrb_4_0xe021ba0", 0, 13)
            add_scroll_target(38, "VB_jrb_4_0xe021c70", 0, 9)
            add_scroll_target(38, "VB_jrb_4_0xe021d00", 0, 9)
            add_scroll_target(38, "VB_jrb_4_0xe021d90", 0, 13)
            add_scroll_target(38, "VB_jrb_4_0xe021e60", 0, 9)
            add_scroll_target(38, "VB_jrb_4_0xe021ef0", 0, 7)
            add_scroll_target(38, "VB_jrb_4_0xe021f60", 0, 11)
            add_scroll_target(38, "VB_jrb_4_0xe022010", 0, 9)
            -- Count: 237

            add_scroll_target(39, "VB_jrb_4_0xe024350", 0, 11) -- Start VB
            add_scroll_target(39, "VB_jrb_4_0xe024400", 0, 11)
            add_scroll_target(39, "VB_jrb_4_0xe0244b0", 0, 9)
            add_scroll_target(39, "VB_jrb_4_0xe024540", 0, 11)
            add_scroll_target(39, "VB_jrb_4_0xe0245f0", 0, 11)
            add_scroll_target(39, "VB_jrb_4_0xe0246a0", 0, 11)
            add_scroll_target(39, "VB_jrb_4_0xe024750", 0, 9)
            add_scroll_target(39, "VB_jrb_4_0xe0247e0", 0, 13)
            add_scroll_target(39, "VB_jrb_4_0xe0248b0", 0, 11)
            add_scroll_target(39, "VB_jrb_4_0xe024960", 0, 11)
            add_scroll_target(39, "VB_jrb_4_0xe024a10", 0, 11)
            add_scroll_target(39, "VB_jrb_4_0xe024ac0", 0, 7)
            -- Count: 126

            add_scroll_target(40, "VB_jrb_4_0xe025700", 0, 7) -- Start VB
            add_scroll_target(40, "VB_jrb_4_0xe025770", 0, 10)
            add_scroll_target(40, "VB_jrb_4_0xe025810", 0, 9)
            add_scroll_target(40, "VB_jrb_4_0xe0258a0", 0, 10)
            add_scroll_target(40, "VB_jrb_4_0xe025940", 0, 13)
            add_scroll_target(40, "VB_jrb_4_0xe025a10", 0, 9)
            add_scroll_target(40, "VB_jrb_4_0xe025aa0", 0, 7)
            add_scroll_target(40, "VB_jrb_4_0xe025b10", 0, 15)
            add_scroll_target(40, "VB_jrb_4_0xe025c00", 0, 9)
            add_scroll_target(40, "VB_jrb_4_0xe025c90", 0, 7)
            add_scroll_target(40, "VB_jrb_4_0xe025d00", 0, 9)
            add_scroll_target(40, "VB_jrb_4_0xe025d90", 0, 9)
            add_scroll_target(40, "VB_jrb_4_0xe025e20", 0, 11)
            add_scroll_target(40, "VB_jrb_4_0xe025ed0", 0, 9)
            add_scroll_target(40, "VB_jrb_4_0xe025f60", 0, 9)
            add_scroll_target(40, "VB_jrb_4_0xe025ff0", 0, 7)
            add_scroll_target(40, "VB_jrb_4_0xe026060", 0, 11)
            add_scroll_target(40, "VB_jrb_4_0xe026110", 0, 9)
            add_scroll_target(40, "VB_jrb_4_0xe0261a0", 0, 7)
            add_scroll_target(40, "VB_jrb_4_0xe026210", 0, 7)
            add_scroll_target(40, "VB_jrb_4_0xe026280", 0, 9)
            add_scroll_target(40, "VB_jrb_4_0xe026310", 0, 9)
            add_scroll_target(40, "VB_jrb_4_0xe0263a0", 0, 9)
            add_scroll_target(40, "VB_jrb_4_0xe026430", 0, 9)
            add_scroll_target(40, "VB_jrb_4_0xe0264c0", 0, 8)
            add_scroll_target(40, "VB_jrb_4_0xe026540", 0, 9)
            add_scroll_target(40, "VB_jrb_4_0xe0265d0", 0, 5)
            -- Count: 242

            add_scroll_target(41, "VB_jrb_4_0xe026620", 0, 11) -- Start VB
            add_scroll_target(41, "VB_jrb_4_0xe0266d0", 0, 11)
            add_scroll_target(41, "VB_jrb_4_0xe026780", 0, 13)
            add_scroll_target(41, "VB_jrb_4_0xe026850", 0, 11)
            add_scroll_target(41, "VB_jrb_4_0xe026900", 0, 13)
            add_scroll_target(41, "VB_jrb_4_0xe0269d0", 0, 9)
            add_scroll_target(41, "VB_jrb_4_0xe026a60", 0, 15)
            add_scroll_target(41, "VB_jrb_4_0xe026b50", 0, 13)
            add_scroll_target(41, "VB_jrb_4_0xe026c20", 0, 4)
            -- Count: 100
            jrb_4_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_THI and np.currAreaIndex == 1 then
        if not thi_1_scroll then
            add_scroll_target(42, "VB_thi_1_0xe04bc40", 0, 7) -- Start VB
            -- Count: 7
            thi_1_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_TTC and np.currAreaIndex == 1 then
        if not ttc_1_scroll then
            add_scroll_target(43, "VB_ttc_1_0xe000820", 0, 7) -- Start VB
            add_scroll_target(43, "VB_ttc_1_0xe000890", 0, 10)
            add_scroll_target(43, "VB_ttc_1_0xe000930", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0009a0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe000a30", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe000ac0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe000b30", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe000ba0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe000c10", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe000ca0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe000d10", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe000d80", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe000df0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe000e60", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe000ed0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe000f40", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe000fd0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe001040", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0010b0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe001140", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0011b0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe001220", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe0012b0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe001320", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe001390", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe001400", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe001470", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe001500", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe001570", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0015e0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe001650", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0016c0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe001730", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0017a0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe001830", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0018a0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe001910", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe001980", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe001a10", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe001a80", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe001b10", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe001b80", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe001bf0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe001c60", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe001cd0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe001d40", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe001dd0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe001e40", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe001eb0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe001f40", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe001fb0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe002020", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe002090", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe002100", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe002170", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0021e0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe002270", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0022e0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe002350", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe0023e0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe002450", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0024c0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe002550", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0025c0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe002630", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0026a0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe002710", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe0027a0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe002830", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0028a0", 0, 8)
            add_scroll_target(43, "VB_ttc_1_0xe002920", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe0029b0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe002a20", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe002a90", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe002b20", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe002bb0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe002c20", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe002cb0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe002d20", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe002d90", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe002e00", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe002e70", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe002f20", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe002f90", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe003020", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe003090", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe003100", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe003170", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0031e0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe003270", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0032e0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe003350", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe0033e0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe003470", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0034e0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe003550", 0, 8)
            add_scroll_target(43, "VB_ttc_1_0xe0035d0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe003640", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe0036d0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe003740", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0037b0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe003840", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0038b0", 0, 8)
            add_scroll_target(43, "VB_ttc_1_0xe003930", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0039a0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe003a10", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe003a80", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe003b10", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe003b80", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe003bf0", 0, 8)
            add_scroll_target(43, "VB_ttc_1_0xe003c70", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe003d00", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe003d90", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe003e00", 0, 8)
            add_scroll_target(43, "VB_ttc_1_0xe003e80", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe003ef0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe003f60", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe003ff0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe004060", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0040d0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe004140", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0041b0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe004240", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0042b0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe004340", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0043b0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe004420", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe004490", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe004500", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe004590", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe004600", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe004670", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0046e0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe004770", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0047e0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe004850", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0048c0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe004930", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0049a0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe004a30", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe004ac0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe004b30", 0, 8)
            add_scroll_target(43, "VB_ttc_1_0xe004bb0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe004c20", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe004c90", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe004d00", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe004d70", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe004e00", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe004e70", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe004f00", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe004f70", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe005000", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe005070", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe005120", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe005190", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe005200", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe005290", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe005300", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe005390", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe005400", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe005490", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe005500", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe005570", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe005620", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe005690", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe005700", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0057b0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe005820", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe005890", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe005900", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe005970", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0059e0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe005a50", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe005ac0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe005b30", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe005ba0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe005c10", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe005cc0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe005d30", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe005da0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe005e10", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe005e80", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe005f10", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe005f80", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe005ff0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe006060", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe006110", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe006180", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0061f0", 0, 8)
            add_scroll_target(43, "VB_ttc_1_0xe006270", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0062e0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe006370", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0063e0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe006450", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0064c0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe006550", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0065c0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe006630", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe0066c0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe006750", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0067c0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe006850", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0068c0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe006950", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0069c0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe006a50", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe006ac0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe006b30", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe006bc0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe006c30", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe006ca0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe006d10", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe006d80", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe006e10", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe006e80", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe006f10", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe006f80", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe006ff0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe007060", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0070d0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe007160", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0071d0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe007240", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0072b0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe007340", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0073b0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe007460", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0074d0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe007580", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe007630", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0076e0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe007790", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe007840", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0078f0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0079a0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe007a50", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe007b00", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe007bb0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe007c60", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe007d10", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe007dc0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe007e70", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe007f20", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe007fd0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe008080", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe008130", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0081a0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe008210", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe008280", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0082f0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe008360", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0083d0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe008440", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0084b0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe008520", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe008590", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe008640", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0086f0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0087a0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe008850", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe008900", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0089b0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe008a60", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe008b10", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe008bc0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe008c70", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe008d20", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe008dd0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe008e80", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe008f30", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe008fe0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe009090", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe009140", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0091f0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0092a0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe009350", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe009400", 0, 8)
            add_scroll_target(43, "VB_ttc_1_0xe009480", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe009510", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe009580", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe009610", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe009680", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe009730", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0097a0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe009830", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0098e0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe009990", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe009a40", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe009af0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe009ba0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe009c50", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe009d00", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe009db0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe009e60", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe009f10", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe009fc0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00a070", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00a120", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00a1d0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00a280", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00a330", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00a3a0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00a410", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00a480", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00a4f0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe00a580", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00a5f0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe00a680", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00a6f0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00a760", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00a7d0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00a840", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00a8f0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00a9a0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00aa50", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00ab00", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00abb0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00ac60", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00ad10", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00adc0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00ae70", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00af20", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00afd0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00b080", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00b130", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00b1e0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00b290", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00b340", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00b3f0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00b4a0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00b550", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00b600", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00b6b0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00b760", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00b810", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00b8c0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00b930", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe00b9c0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00ba30", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00bae0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00bb50", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00bbc0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe00bc50", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00bcc0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00bd30", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00bde0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00be90", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00bf40", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00bff0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00c0a0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00c150", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00c200", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00c2b0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00c360", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00c410", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00c4c0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00c570", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00c620", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00c6d0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00c780", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00c830", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00c8e0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00c990", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00ca40", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00caf0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00cba0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00cc50", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00cd00", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00cd70", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00cde0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00ce50", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe00cee0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00cf50", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00cfc0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00d030", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00d0a0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00d110", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00d180", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00d230", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00d2e0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00d390", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00d440", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00d4f0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00d5a0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00d650", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00d700", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00d7b0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00d860", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00d910", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00d9c0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00da70", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00db20", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00dbd0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00dc80", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00dd30", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00dde0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00de90", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00df40", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00dff0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00e0a0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00e110", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe00e1a0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe00e230", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00e2a0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe00e330", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00e3a0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00e410", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00e4c0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00e570", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00e620", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00e6d0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00e780", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00e830", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00e8e0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00e990", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00ea40", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00eaf0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00eba0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00ec50", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00ed00", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00edb0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00ee60", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00ef10", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00efc0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00f030", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe00f0c0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00f130", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00f1e0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00f290", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00f340", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00f3f0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00f4a0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00f550", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00f600", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00f6b0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00f760", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe00f7f0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00f860", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00f8d0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00f940", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00f9b0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe00fa40", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00fab0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00fb20", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe00fbb0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe00fc20", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe00fcb0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00fd60", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00fe10", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00fec0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe00ff70", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe010020", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0100d0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe010180", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe010230", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0102e0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe010390", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe010440", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0104f0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0105a0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe010650", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe010700", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0107b0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe010860", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe010910", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0109c0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe010a70", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe010b20", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe010bd0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe010c80", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe010d10", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe010da0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe010e10", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe010e80", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe010f30", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe010fa0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe011010", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0110c0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe011130", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0111a0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe011230", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0112e0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe011390", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe011440", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0114f0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0115a0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe011650", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe011700", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0117b0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe011860", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe011910", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0119c0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe011a70", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe011b20", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe011bd0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe011c80", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe011d30", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe011de0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe011e90", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe011f40", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe011ff0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0120a0", 0, 8)
            add_scroll_target(43, "VB_ttc_1_0xe012120", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe012190", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe012200", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe012270", 0, 8)
            add_scroll_target(43, "VB_ttc_1_0xe0122f0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0123a0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe012450", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe012500", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0125b0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe012660", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe012710", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0127c0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe012870", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe012920", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0129d0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe012a80", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe012b10", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe012b80", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe012bf0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe012c60", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe012cd0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe012d40", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe012db0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe012e20", 0, 8)
            add_scroll_target(43, "VB_ttc_1_0xe012ea0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe012f30", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe012fe0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe013090", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe013140", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0131f0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0132a0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe013350", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe013400", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0134b0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe013560", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe013610", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0136c0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe013770", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe013820", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0138d0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe013980", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe013a30", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe013ae0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe013b90", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe013c40", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe013cb0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe013d20", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe013d90", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe013e00", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe013e70", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe013f00", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe013f70", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe013fe0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe014050", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0140c0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe014170", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe014220", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0142d0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe014380", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe014430", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0144e0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe014590", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe014640", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0146f0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0147a0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe014850", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe014900", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0149b0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe014a60", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe014b10", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe014bc0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe014c70", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe014d20", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe014dd0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe014e80", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe014f30", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe014fa0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe015010", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe015080", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0150f0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe015180", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0151f0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe015280", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0152f0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe015360", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0153d0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe015440", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0154f0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0155a0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe015650", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe015700", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0157b0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe015860", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe015910", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0159c0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe015a70", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe015b20", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe015bd0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe015c80", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe015d30", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe015de0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe015e90", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe015f40", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe015ff0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0160a0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe016150", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe016200", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0162b0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe016360", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe016410", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0164c0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe016530", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0165a0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe016610", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe016680", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0166f0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe016780", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe016810", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe016880", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0168f0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe016980", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe016a30", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe016ae0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe016b90", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe016c40", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe016cf0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe016da0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe016e50", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe016f00", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe016fb0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe017060", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe017110", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0171c0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe017270", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe017320", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0173d0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe017480", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe017530", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0175e0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe017690", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe017740", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe0177d0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe017840", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0178b0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe017920", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe017990", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe017a20", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe017a90", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe017b20", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe017b90", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe017c00", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe017cb0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe017d60", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe017e10", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe017ec0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe017f70", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe018020", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0180d0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe018180", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe018230", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0182e0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe018390", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe018440", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0184f0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0185a0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe018650", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe018700", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0187b0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe018860", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe018910", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0189c0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe018a70", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe018ae0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe018b50", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe018be0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe018c70", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe018d20", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe018dd0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe018e80", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe018f30", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe018fe0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe019090", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe019140", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0191f0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0192a0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe019310", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe019380", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe019430", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0194e0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe019590", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe019640", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0196f0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0197a0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe019850", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0198c0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe019950", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0199c0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe019a70", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe019ae0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe019b50", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe019be0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe019c50", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe019cc0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe019d50", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe019e00", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe019eb0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe019f60", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01a010", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01a0c0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01a170", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01a220", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01a2d0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01a380", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01a430", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01a4e0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01a590", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01a640", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01a6f0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01a7a0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01a850", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01a900", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01a9b0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01aa60", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01ab10", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01abc0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe01ac50", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01acc0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01ad30", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01ada0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01ae50", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01aec0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01af30", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01afa0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe01b030", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe01b0c0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01b130", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01b1a0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01b210", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01b280", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01b2f0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe01b380", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01b3f0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01b460", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01b4d0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe01b560", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01b610", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01b6c0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01b770", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01b820", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01b8d0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01b980", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01ba30", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01bae0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01bb90", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01bc40", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01bcf0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01bda0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01be50", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01bf00", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01bfb0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01c060", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01c110", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01c1c0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01c270", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01c320", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01c3d0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01c480", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01c530", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01c5e0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01c690", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01c740", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01c7f0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01c8a0", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe01c930", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01c9e0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01ca90", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01cb40", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01cbf0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01cca0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01cd50", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01ce00", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01ceb0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01cf60", 0, 10)
            add_scroll_target(43, "VB_ttc_1_0xe01d000", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01d070", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01d0e0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01d150", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01d200", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01d2b0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01d360", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01d410", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01d4c0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01d570", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01d620", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01d6d0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01d780", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01d830", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01d8e0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01d990", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01da40", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe01dad0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01db40", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01dbb0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01dc60", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01dcd0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01dd40", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01ddb0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01de20", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01de90", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01df40", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01dff0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01e0a0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01e150", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01e200", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01e2b0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01e360", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01e410", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01e4c0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01e570", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01e620", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01e6d0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01e780", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01e830", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01e8e0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01e990", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01ea40", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01eaf0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01eba0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01ec50", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01ed00", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01edb0", 0, 13)
            add_scroll_target(43, "VB_ttc_1_0xe01ee80", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01eef0", 0, 8)
            add_scroll_target(43, "VB_ttc_1_0xe01ef70", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe01f000", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe01f090", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01f140", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01f1f0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01f2a0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01f350", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01f400", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01f4b0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01f560", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01f610", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe01f6a0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01f710", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01f780", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01f830", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01f8e0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01f990", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01fa40", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01faf0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01fba0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe01fc50", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01fcc0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01fd30", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01fda0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01fe10", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe01fea0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe01ff10", 0, 9)
            add_scroll_target(43, "VB_ttc_1_0xe01ffa0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe020010", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe020080", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe0200f0", 0, 7)
            add_scroll_target(43, "VB_ttc_1_0xe020160", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe020210", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0202c0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe020370", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe020420", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0204d0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe020580", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe020630", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0206e0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe020790", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe020840", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0208f0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe0209a0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe020a50", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe020b00", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe020bb0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe020c60", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe020d10", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe020dc0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe020e70", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe020f20", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe020fd0", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe021080", 0, 11)
            add_scroll_target(43, "VB_ttc_1_0xe021130", 0, 7)
            -- Count: 8344
            ttc_1_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_TTC and np.currAreaIndex == 2 then
        if not ttc_2_scroll then
            add_scroll_target(44, "VB_ttc_2_0xe022110", 0, 11) -- Start VB
            add_scroll_target(44, "VB_ttc_2_0xe0221c0", 0, 11)
            add_scroll_target(44, "VB_ttc_2_0xe022270", 0, 9)
            add_scroll_target(44, "VB_ttc_2_0xe022300", 0, 11)
            add_scroll_target(44, "VB_ttc_2_0xe0223b0", 0, 9)
            add_scroll_target(44, "VB_ttc_2_0xe022440", 0, 9)
            add_scroll_target(44, "VB_ttc_2_0xe0224d0", 0, 11)
            add_scroll_target(44, "VB_ttc_2_0xe022580", 0, 9)
            add_scroll_target(44, "VB_ttc_2_0xe022610", 0, 11)
            add_scroll_target(44, "VB_ttc_2_0xe0226c0", 0, 13)
            add_scroll_target(44, "VB_ttc_2_0xe022790", 0, 13)
            add_scroll_target(44, "VB_ttc_2_0xe022860", 0, 11)
            add_scroll_target(44, "VB_ttc_2_0xe022910", 0, 9)
            add_scroll_target(44, "VB_ttc_2_0xe0229a0", 0, 15)
            add_scroll_target(44, "VB_ttc_2_0xe022a90", 0, 13)
            add_scroll_target(44, "VB_ttc_2_0xe022b60", 0, 11)
            add_scroll_target(44, "VB_ttc_2_0xe022c10", 0, 11)
            add_scroll_target(44, "VB_ttc_2_0xe022cc0", 0, 11)
            add_scroll_target(44, "VB_ttc_2_0xe022d70", 0, 11)
            add_scroll_target(44, "VB_ttc_2_0xe022e20", 0, 13)
            add_scroll_target(44, "VB_ttc_2_0xe022ef0", 0, 10)
            add_scroll_target(44, "VB_ttc_2_0xe022f90", 0, 10)
            -- Count: 242

            add_scroll_target(45, "VB_ttc_2_0xe02fdf0", 0, 6) -- Start VB
            -- Count: 6

            add_scroll_target(46, "VB_ttc_2_0xe030040", 0, 6) -- Start VB
            -- Count: 6

            add_scroll_target(47, "VB_ttc_2_0xe030290", 0, 6) -- Start VB
            -- Count: 6

            add_scroll_target(48, "VB_ttc_2_0xe030820", 0, 11) -- Start VB
            add_scroll_target(48, "VB_ttc_2_0xe0308d0", 0, 9)
            add_scroll_target(48, "VB_ttc_2_0xe030960", 0, 4)
            -- Count: 24

            add_scroll_target(49, "VB_ttc_2_0xe0318e0", 0, 9) -- Start VB
            add_scroll_target(49, "VB_ttc_2_0xe031970", 0, 3)
            -- Count: 12

            add_scroll_target(50, "VB_ttc_2_0xe031ae0", 0, 9) -- Start VB
            add_scroll_target(50, "VB_ttc_2_0xe031b70", 0, 3)
            -- Count: 12

            add_scroll_target(51, "VB_ttc_2_0xe031e80", 0, 6) -- Start VB
            -- Count: 6

            add_scroll_target(52, "VB_ttc_2_0xe0320d0", 0, 6) -- Start VB
            -- Count: 6

            add_scroll_target(53, "VB_ttc_2_0xe032320", 0, 6) -- Start VB
            -- Count: 6

            add_scroll_target(54, "VB_ttc_2_0xe032570", 0, 6) -- Start VB
            -- Count: 6

            add_scroll_target(55, "VB_ttc_2_0xe0327c0", 0, 6) -- Start VB
            -- Count: 6

            add_scroll_target(56, "VB_ttc_2_0xe032bb0", 0, 6) -- Start VB
            -- Count: 6

            add_scroll_target(57, "VB_ttc_2_0xe039940", 0, 6) -- Start VB
            -- Count: 6

            add_scroll_target(58, "VB_ttc_2_0xe03a660", 0, 13) -- Start VB
            add_scroll_target(58, "VB_ttc_2_0xe03a730", 0, 13)
            add_scroll_target(58, "VB_ttc_2_0xe03a800", 0, 11)
            add_scroll_target(58, "VB_ttc_2_0xe03a8b0", 0, 13)
            add_scroll_target(58, "VB_ttc_2_0xe03a980", 0, 13)
            add_scroll_target(58, "VB_ttc_2_0xe03aa50", 0, 11)
            add_scroll_target(58, "VB_ttc_2_0xe03ab00", 0, 13)
            add_scroll_target(58, "VB_ttc_2_0xe03abd0", 0, 13)
            add_scroll_target(58, "VB_ttc_2_0xe03aca0", 0, 11)
            add_scroll_target(58, "VB_ttc_2_0xe03ad50", 0, 7)
            -- Count: 118

            add_scroll_target(59, "VB_ttc_2_0xe03aee0", 0, 13) -- Start VB
            add_scroll_target(59, "VB_ttc_2_0xe03afb0", 0, 13)
            add_scroll_target(59, "VB_ttc_2_0xe03b080", 0, 11)
            add_scroll_target(59, "VB_ttc_2_0xe03b130", 0, 13)
            add_scroll_target(59, "VB_ttc_2_0xe03b200", 0, 13)
            add_scroll_target(59, "VB_ttc_2_0xe03b2d0", 0, 11)
            add_scroll_target(59, "VB_ttc_2_0xe03b380", 0, 13)
            add_scroll_target(59, "VB_ttc_2_0xe03b450", 0, 13)
            add_scroll_target(59, "VB_ttc_2_0xe03b520", 0, 11)
            add_scroll_target(59, "VB_ttc_2_0xe03b5d0", 0, 7)
            -- Count: 118

            add_scroll_target(60, "VB_ttc_2_0xe03adc0", 0, 11) -- Start VB
            add_scroll_target(60, "VB_ttc_2_0xe03ae70", 0, 7)
            -- Count: 18
            ttc_2_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_TTC and np.currAreaIndex == 3 then
        if not ttc_3_scroll then
            add_scroll_target(61, "VB_ttc_3_0xe030520", 0, 8) -- Start VB
            add_scroll_target(61, "VB_ttc_3_0xe0305a0", 0, 3)
            -- Count: 11

            add_scroll_target(62, "VB_ttc_3_0xe034330", 0, 13) -- Start VB
            add_scroll_target(62, "VB_ttc_3_0xe034400", 0, 13)
            add_scroll_target(62, "VB_ttc_3_0xe0344d0", 0, 11)
            add_scroll_target(62, "VB_ttc_3_0xe034580", 0, 13)
            add_scroll_target(62, "VB_ttc_3_0xe034650", 0, 13)
            add_scroll_target(62, "VB_ttc_3_0xe034720", 0, 11)
            add_scroll_target(62, "VB_ttc_3_0xe0347d0", 0, 13)
            add_scroll_target(62, "VB_ttc_3_0xe0348a0", 0, 13)
            add_scroll_target(62, "VB_ttc_3_0xe034970", 0, 11)
            add_scroll_target(62, "VB_ttc_3_0xe034a20", 0, 7)
            -- Count: 118

            add_scroll_target(63, "VB_ttc_3_0xe036420", 0, 13) -- Start VB
            add_scroll_target(63, "VB_ttc_3_0xe0364f0", 0, 13)
            add_scroll_target(63, "VB_ttc_3_0xe0365c0", 0, 11)
            add_scroll_target(63, "VB_ttc_3_0xe036670", 0, 13)
            add_scroll_target(63, "VB_ttc_3_0xe036740", 0, 13)
            add_scroll_target(63, "VB_ttc_3_0xe036810", 0, 11)
            add_scroll_target(63, "VB_ttc_3_0xe0368c0", 0, 13)
            add_scroll_target(63, "VB_ttc_3_0xe036990", 0, 13)
            add_scroll_target(63, "VB_ttc_3_0xe036a60", 0, 11)
            add_scroll_target(63, "VB_ttc_3_0xe036b10", 0, 7)
            -- Count: 118

            add_scroll_target(64, "VB_ttc_3_0xe036b80", 0, 11) -- Start VB
            add_scroll_target(64, "VB_ttc_3_0xe036c30", 0, 7)
            -- Count: 18
            ttc_3_scroll = true
        end
    end


    if np.currLevelNum == LEVEL_RR and np.currAreaIndex == 1 then
        if not rr_1_scroll then
            add_scroll_target(65, "VB_rr_1_0xe026360", 0, 11) -- Start VB
            add_scroll_target(65, "VB_rr_1_0xe026410", 0, 13)
            add_scroll_target(65, "VB_rr_1_0xe0264e0", 0, 6)
            -- Count: 30

            add_scroll_target(66, "VB_rr_1_0xe02a6e0", 0, 9) -- Start VB
            add_scroll_target(66, "VB_rr_1_0xe02a770", 0, 14)
            add_scroll_target(66, "VB_rr_1_0xe02a850", 0, 11)
            add_scroll_target(66, "VB_rr_1_0xe02a900", 0, 9)
            add_scroll_target(66, "VB_rr_1_0xe02a990", 0, 11)
            add_scroll_target(66, "VB_rr_1_0xe02aa40", 0, 11)
            add_scroll_target(66, "VB_rr_1_0xe02aaf0", 0, 7)
            add_scroll_target(66, "VB_rr_1_0xe02ab60", 0, 9)
            add_scroll_target(66, "VB_rr_1_0xe02abf0", 0, 11)
            add_scroll_target(66, "VB_rr_1_0xe02aca0", 0, 10)
            add_scroll_target(66, "VB_rr_1_0xe02ad40", 0, 3)
            -- Count: 105

            add_scroll_target(67, "VB_rr_1_0xe0403f0", 0, 7) -- Start VB
            add_scroll_target(67, "VB_rr_1_0xe040460", 0, 9)
            add_scroll_target(67, "VB_rr_1_0xe0404f0", 0, 9)
            add_scroll_target(67, "VB_rr_1_0xe040580", 0, 12)
            add_scroll_target(67, "VB_rr_1_0xe040640", 0, 11)
            add_scroll_target(67, "VB_rr_1_0xe0406f0", 0, 11)
            add_scroll_target(67, "VB_rr_1_0xe0407a0", 0, 11)
            add_scroll_target(67, "VB_rr_1_0xe040850", 0, 7)
            add_scroll_target(67, "VB_rr_1_0xe0408c0", 0, 9)
            add_scroll_target(67, "VB_rr_1_0xe040950", 0, 10)
            add_scroll_target(67, "VB_rr_1_0xe0409f0", 0, 3)
            -- Count: 99

            add_scroll_target(68, "VB_rr_1_0xe040cc0", 0, 7) -- Start VB
            add_scroll_target(68, "VB_rr_1_0xe040d30", 0, 9)
            add_scroll_target(68, "VB_rr_1_0xe040dc0", 0, 9)
            add_scroll_target(68, "VB_rr_1_0xe040e50", 0, 12)
            add_scroll_target(68, "VB_rr_1_0xe040f10", 0, 11)
            add_scroll_target(68, "VB_rr_1_0xe040fc0", 0, 11)
            add_scroll_target(68, "VB_rr_1_0xe041070", 0, 11)
            add_scroll_target(68, "VB_rr_1_0xe041120", 0, 7)
            add_scroll_target(68, "VB_rr_1_0xe041190", 0, 9)
            add_scroll_target(68, "VB_rr_1_0xe041220", 0, 10)
            add_scroll_target(68, "VB_rr_1_0xe0412c0", 0, 3)
            -- Count: 99

            add_scroll_target(69, "VB_rr_1_0xe041590", 0, 7) -- Start VB
            add_scroll_target(69, "VB_rr_1_0xe041600", 0, 9)
            add_scroll_target(69, "VB_rr_1_0xe041690", 0, 9)
            add_scroll_target(69, "VB_rr_1_0xe041720", 0, 12)
            add_scroll_target(69, "VB_rr_1_0xe0417e0", 0, 11)
            add_scroll_target(69, "VB_rr_1_0xe041890", 0, 11)
            add_scroll_target(69, "VB_rr_1_0xe041940", 0, 11)
            add_scroll_target(69, "VB_rr_1_0xe0419f0", 0, 7)
            add_scroll_target(69, "VB_rr_1_0xe041a60", 0, 9)
            add_scroll_target(69, "VB_rr_1_0xe041af0", 0, 10)
            add_scroll_target(69, "VB_rr_1_0xe041b90", 0, 3)
            -- Count: 99

            add_scroll_target(70, "VB_rr_1_0xe041e60", 0, 7) -- Start VB
            add_scroll_target(70, "VB_rr_1_0xe041ed0", 0, 9)
            add_scroll_target(70, "VB_rr_1_0xe041f60", 0, 9)
            add_scroll_target(70, "VB_rr_1_0xe041ff0", 0, 12)
            add_scroll_target(70, "VB_rr_1_0xe0420b0", 0, 11)
            add_scroll_target(70, "VB_rr_1_0xe042160", 0, 11)
            add_scroll_target(70, "VB_rr_1_0xe042210", 0, 11)
            add_scroll_target(70, "VB_rr_1_0xe0422c0", 0, 7)
            add_scroll_target(70, "VB_rr_1_0xe042330", 0, 9)
            add_scroll_target(70, "VB_rr_1_0xe0423c0", 0, 10)
            add_scroll_target(70, "VB_rr_1_0xe042460", 0, 3)
            -- Count: 99

            add_scroll_target(71, "VB_rr_1_0xe0236c0", 0, 12) -- Start VB
            add_scroll_target(71, "VB_rr_1_0xe023780", 0, 13)
            add_scroll_target(71, "VB_rr_1_0xe023850", 0, 14)
            add_scroll_target(71, "VB_rr_1_0xe023930", 0, 11)
            add_scroll_target(71, "VB_rr_1_0xe0239e0", 0, 11)
            add_scroll_target(71, "VB_rr_1_0xe023a90", 0, 11)
            add_scroll_target(71, "VB_rr_1_0xe023b40", 0, 13)
            add_scroll_target(71, "VB_rr_1_0xe023c10", 0, 13)
            add_scroll_target(71, "VB_rr_1_0xe023ce0", 0, 11)
            add_scroll_target(71, "VB_rr_1_0xe023d90", 0, 13)
            add_scroll_target(71, "VB_rr_1_0xe023e60", 0, 11)
            add_scroll_target(71, "VB_rr_1_0xe023f10", 0, 13)
            add_scroll_target(71, "VB_rr_1_0xe023fe0", 0, 11)
            add_scroll_target(71, "VB_rr_1_0xe024090", 0, 13)
            add_scroll_target(71, "VB_rr_1_0xe024160", 0, 10)
            add_scroll_target(71, "VB_rr_1_0xe024200", 0, 11)
            add_scroll_target(71, "VB_rr_1_0xe0242b0", 0, 11)
            add_scroll_target(71, "VB_rr_1_0xe024360", 0, 11)
            add_scroll_target(71, "VB_rr_1_0xe024410", 0, 10)
            add_scroll_target(71, "VB_rr_1_0xe0244b0", 0, 11)
            add_scroll_target(71, "VB_rr_1_0xe024560", 0, 11)
            add_scroll_target(71, "VB_rr_1_0xe024610", 0, 11)
            add_scroll_target(71, "VB_rr_1_0xe0246c0", 0, 13)
            add_scroll_target(71, "VB_rr_1_0xe024790", 0, 13)
            add_scroll_target(71, "VB_rr_1_0xe024860", 0, 13)
            add_scroll_target(71, "VB_rr_1_0xe024930", 0, 11)
            add_scroll_target(71, "VB_rr_1_0xe0249e0", 0, 13)
            add_scroll_target(71, "VB_rr_1_0xe024ab0", 0, 11)
            add_scroll_target(71, "VB_rr_1_0xe024b60", 0, 11)
            add_scroll_target(71, "VB_rr_1_0xe024c10", 0, 11)
            add_scroll_target(71, "VB_rr_1_0xe024cc0", 0, 11)
            add_scroll_target(71, "VB_rr_1_0xe024d70", 0, 11)
            add_scroll_target(71, "VB_rr_1_0xe024e20", 0, 10)
            add_scroll_target(71, "VB_rr_1_0xe024ec0", 0, 13)
            add_scroll_target(71, "VB_rr_1_0xe024f90", 0, 13)
            add_scroll_target(71, "VB_rr_1_0xe025060", 0, 10)
            add_scroll_target(71, "VB_rr_1_0xe025100", 0, 13)
            add_scroll_target(71, "VB_rr_1_0xe0251d0", 0, 11)
            add_scroll_target(71, "VB_rr_1_0xe025280", 0, 13)
            add_scroll_target(71, "VB_rr_1_0xe025350", 0, 13)
            add_scroll_target(71, "VB_rr_1_0xe025420", 0, 14)
            add_scroll_target(71, "VB_rr_1_0xe025500", 0, 15)
            add_scroll_target(71, "VB_rr_1_0xe0255f0", 0, 14)
            add_scroll_target(71, "VB_rr_1_0xe0256d0", 0, 13)
            add_scroll_target(71, "VB_rr_1_0xe0257a0", 0, 15)
            add_scroll_target(71, "VB_rr_1_0xe025890", 0, 13)
            add_scroll_target(71, "VB_rr_1_0xe025960", 0, 13)
            add_scroll_target(71, "VB_rr_1_0xe025a30", 0, 13)
            add_scroll_target(71, "VB_rr_1_0xe025b00", 0, 13)
            add_scroll_target(71, "VB_rr_1_0xe025bd0", 0, 13)
            add_scroll_target(71, "VB_rr_1_0xe025ca0", 0, 14)
            add_scroll_target(71, "VB_rr_1_0xe025d80", 0, 13)
            add_scroll_target(71, "VB_rr_1_0xe025e50", 0, 15)
            add_scroll_target(71, "VB_rr_1_0xe025f40", 0, 14)
            add_scroll_target(71, "VB_rr_1_0xe026020", 0, 14)
            add_scroll_target(71, "VB_rr_1_0xe026100", 0, 15)
            add_scroll_target(71, "VB_rr_1_0xe0261f0", 0, 14)
            add_scroll_target(71, "VB_rr_1_0xe0262d0", 0, 9)
            -- Count: 714

            add_scroll_target(72, "VB_rr_1_0xe042490", 0, 4) -- Start VB
            -- Count: 4
            rr_1_scroll = true
        end
    end


    if np.currLevelNum == LEVEL_RR and np.currAreaIndex == 2 then
        if not rr_2_scroll then
            add_scroll_target(73, "VB_rr_2_0xe0068d0", 0, 7) -- Start VB
            add_scroll_target(73, "VB_rr_2_0xe006940", 0, 11)
            add_scroll_target(73, "VB_rr_2_0xe0069f0", 0, 7)
            add_scroll_target(73, "VB_rr_2_0xe006a60", 0, 7)
            -- Count: 32

            add_scroll_target(74, "VB_rr_2_0xe006ad0", 0, 9) -- Start VB
            add_scroll_target(74, "VB_rr_2_0xe006b60", 0, 9)
            add_scroll_target(74, "VB_rr_2_0xe006bf0", 0, 7)
            add_scroll_target(74, "VB_rr_2_0xe006c60", 0, 9)
            add_scroll_target(74, "VB_rr_2_0xe006cf0", 0, 6)
            -- Count: 40

            add_scroll_target(75, "VB_rr_2_0xe006d50", 0, 9) -- Start VB
            add_scroll_target(75, "VB_rr_2_0xe006de0", 0, 9)
            add_scroll_target(75, "VB_rr_2_0xe006e70", 0, 9)
            add_scroll_target(75, "VB_rr_2_0xe006f00", 0, 9)
            add_scroll_target(75, "VB_rr_2_0xe006f90", 0, 9)
            add_scroll_target(75, "VB_rr_2_0xe007020", 0, 3)
            -- Count: 48

            add_scroll_target(76, "VB_rr_2_0xe0090b0", 0, 8) -- Start VB
            add_scroll_target(76, "VB_rr_2_0xe009130", 0, 11)
            add_scroll_target(76, "VB_rr_2_0xe0091e0", 0, 9)
            add_scroll_target(76, "VB_rr_2_0xe009270", 0, 9)
            -- Count: 37
            rr_2_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_CASTLE_GROUNDS and np.currAreaIndex == 2 then
        if not castle_grounds_2_scroll then
            add_scroll_target(81, "VB_castle_grounds_2_0xe010d20", 0, 12) -- Start VB
            add_scroll_target(81, "VB_castle_grounds_2_0xe010de0", 0, 11)
            add_scroll_target(81, "VB_castle_grounds_2_0xe010e90", 0, 4)
            -- Count: 27

            add_scroll_target(82, "VB_castle_grounds_2_0xe0159d0", 0, 11) -- Start VB
            add_scroll_target(82, "VB_castle_grounds_2_0xe015a80", 0, 10)
            add_scroll_target(82, "VB_castle_grounds_2_0xe015b20", 0, 9)
            add_scroll_target(82, "VB_castle_grounds_2_0xe015bb0", 0, 11)
            add_scroll_target(82, "VB_castle_grounds_2_0xe015c60", 0, 11)
            add_scroll_target(82, "VB_castle_grounds_2_0xe015d10", 0, 9)
            add_scroll_target(82, "VB_castle_grounds_2_0xe015da0", 0, 11)
            add_scroll_target(82, "VB_castle_grounds_2_0xe015e50", 0, 8)
            -- Count: 80

            add_scroll_target(83, "VB_castle_grounds_2_0xe015000", 0, 4) -- Start VB
            -- Count: 4

            add_scroll_target(84, "VB_castle_grounds_2_0xe01fe10", 0, 15) -- Start VB
            add_scroll_target(84, "VB_castle_grounds_2_0xe01ff00", 0, 15)
            add_scroll_target(84, "VB_castle_grounds_2_0xe01fff0", 0, 15)
            add_scroll_target(84, "VB_castle_grounds_2_0xe0200e0", 0, 15)
            add_scroll_target(84, "VB_castle_grounds_2_0xe0201d0", 0, 12)
            -- Count: 72

            add_scroll_target(85, "VB_castle_grounds_2_0xe022780", 0, 4) -- Start VB
            -- Count: 4
            castle_grounds_2_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_BITDW and np.currAreaIndex == 1 then
        if not bitdw_1_scroll then
            add_scroll_target(86, "VB_bitdw_1_0xe017490", 0, 11) -- Start VB
            add_scroll_target(86, "VB_bitdw_1_0xe017540", 0, 11)
            add_scroll_target(86, "VB_bitdw_1_0xe0175f0", 0, 13)
            add_scroll_target(86, "VB_bitdw_1_0xe0176c0", 0, 13)
            add_scroll_target(86, "VB_bitdw_1_0xe017790", 0, 13)
            add_scroll_target(86, "VB_bitdw_1_0xe017860", 0, 13)
            add_scroll_target(86, "VB_bitdw_1_0xe017930", 0, 13)
            add_scroll_target(86, "VB_bitdw_1_0xe017a00", 0, 13)
            add_scroll_target(86, "VB_bitdw_1_0xe017ad0", 0, 13)
            add_scroll_target(86, "VB_bitdw_1_0xe017ba0", 0, 12)
            add_scroll_target(86, "VB_bitdw_1_0xe017c60", 0, 15)
            add_scroll_target(86, "VB_bitdw_1_0xe017d50", 0, 11)
            add_scroll_target(86, "VB_bitdw_1_0xe017e00", 0, 13)
            add_scroll_target(86, "VB_bitdw_1_0xe017ed0", 0, 13)
            add_scroll_target(86, "VB_bitdw_1_0xe017fa0", 0, 13)
            add_scroll_target(86, "VB_bitdw_1_0xe018070", 0, 13)
            add_scroll_target(86, "VB_bitdw_1_0xe018140", 0, 11)
            add_scroll_target(86, "VB_bitdw_1_0xe0181f0", 0, 11)
            add_scroll_target(86, "VB_bitdw_1_0xe0182a0", 0, 15)
            add_scroll_target(86, "VB_bitdw_1_0xe018390", 0, 15)
            -- Count: 255

            add_scroll_target(87, "VB_bitdw_1_0xe03d610", 0, 11) -- Start VB
            add_scroll_target(87, "VB_bitdw_1_0xe03d6c0", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe03d790", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe03d860", 0, 15)
            add_scroll_target(87, "VB_bitdw_1_0xe03d950", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe03da20", 0, 11)
            add_scroll_target(87, "VB_bitdw_1_0xe03dad0", 0, 11)
            add_scroll_target(87, "VB_bitdw_1_0xe03db80", 0, 15)
            add_scroll_target(87, "VB_bitdw_1_0xe03dc70", 0, 11)
            add_scroll_target(87, "VB_bitdw_1_0xe03dd20", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe03ddf0", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe03dec0", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe03df90", 0, 11)
            add_scroll_target(87, "VB_bitdw_1_0xe03e040", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe03e110", 0, 15)
            add_scroll_target(87, "VB_bitdw_1_0xe03e200", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe03e2d0", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe03e3a0", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe03e470", 0, 15)
            add_scroll_target(87, "VB_bitdw_1_0xe03e560", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe03e630", 0, 11)
            add_scroll_target(87, "VB_bitdw_1_0xe03e6e0", 0, 11)
            add_scroll_target(87, "VB_bitdw_1_0xe03e790", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe03e860", 0, 15)
            add_scroll_target(87, "VB_bitdw_1_0xe03e950", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe03ea20", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe03eaf0", 0, 11)
            add_scroll_target(87, "VB_bitdw_1_0xe03eba0", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe03ec70", 0, 15)
            add_scroll_target(87, "VB_bitdw_1_0xe03ed60", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe03ee30", 0, 11)
            add_scroll_target(87, "VB_bitdw_1_0xe03eee0", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe03efb0", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe03f080", 0, 11)
            add_scroll_target(87, "VB_bitdw_1_0xe03f130", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe03f200", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe03f2d0", 0, 15)
            add_scroll_target(87, "VB_bitdw_1_0xe03f3c0", 0, 11)
            add_scroll_target(87, "VB_bitdw_1_0xe03f470", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe03f540", 0, 11)
            add_scroll_target(87, "VB_bitdw_1_0xe03f5f0", 0, 15)
            add_scroll_target(87, "VB_bitdw_1_0xe03f6e0", 0, 15)
            add_scroll_target(87, "VB_bitdw_1_0xe03f7d0", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe03f8a0", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe03f970", 0, 15)
            add_scroll_target(87, "VB_bitdw_1_0xe03fa60", 0, 15)
            add_scroll_target(87, "VB_bitdw_1_0xe03fb50", 0, 11)
            add_scroll_target(87, "VB_bitdw_1_0xe03fc00", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe03fcd0", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe03fda0", 0, 11)
            add_scroll_target(87, "VB_bitdw_1_0xe03fe50", 0, 11)
            add_scroll_target(87, "VB_bitdw_1_0xe03ff00", 0, 15)
            add_scroll_target(87, "VB_bitdw_1_0xe03fff0", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe0400c0", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe040190", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe040260", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe040330", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe040400", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe0404d0", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe0405a0", 0, 11)
            add_scroll_target(87, "VB_bitdw_1_0xe040650", 0, 15)
            add_scroll_target(87, "VB_bitdw_1_0xe040740", 0, 11)
            add_scroll_target(87, "VB_bitdw_1_0xe0407f0", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe0408c0", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe040990", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe040a60", 0, 15)
            add_scroll_target(87, "VB_bitdw_1_0xe040b50", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe040c20", 0, 15)
            add_scroll_target(87, "VB_bitdw_1_0xe040d10", 0, 11)
            add_scroll_target(87, "VB_bitdw_1_0xe040dc0", 0, 11)
            add_scroll_target(87, "VB_bitdw_1_0xe040e70", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe040f40", 0, 15)
            add_scroll_target(87, "VB_bitdw_1_0xe041030", 0, 11)
            add_scroll_target(87, "VB_bitdw_1_0xe0410e0", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe0411b0", 0, 11)
            add_scroll_target(87, "VB_bitdw_1_0xe041260", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe041330", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe041400", 0, 15)
            add_scroll_target(87, "VB_bitdw_1_0xe0414f0", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe0415c0", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe041690", 0, 15)
            add_scroll_target(87, "VB_bitdw_1_0xe041780", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe041850", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe041920", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe0419f0", 0, 11)
            add_scroll_target(87, "VB_bitdw_1_0xe041aa0", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe041b70", 0, 13)
            add_scroll_target(87, "VB_bitdw_1_0xe041c40", 0, 4)
            -- Count: 1127
            bitdw_1_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_BITDW and np.currAreaIndex == 2 then
        if not bitdw_2_scroll then
            add_scroll_target(88, "VB_bitdw_2_0xe021850", 0, 15) -- Start VB
            add_scroll_target(88, "VB_bitdw_2_0xe021940", 0, 13)
            add_scroll_target(88, "VB_bitdw_2_0xe021a10", 0, 9)
            -- Count: 37
            bitdw_2_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_BITFS and np.currAreaIndex == 1 then
        if not bitfs_1_scroll then
            add_scroll_target(89, "VB_bitfs_1_0xe01fa90", 0, 7) -- Start VB
            add_scroll_target(89, "VB_bitfs_1_0xe01fb00", 0, 8)
            -- Count: 15

            add_scroll_target(90, "VB_bitfs_1_0xe034520", 0, 4) -- Start VB
            -- Count: 4
            bitfs_1_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_SA and np.currAreaIndex == 1 then
        if not sa_1_scroll then
            add_scroll_target(91, "VB_sa_1_0xe026c20", 0, 4) -- Start VB
            add_scroll_target(91, "VB_sa_1_0xe041220", 0, 4)
            -- Count: 8

            add_scroll_target(92, "VB_sa_1_0xe041220", 0, 4) -- Start VB
            -- Count: 4
            sa_1_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_BITS and np.currAreaIndex == 1 then
        if not bits_1_scroll then
            add_scroll_target(93, "VB_bits_1_0xe052d10", 0, 14) -- Start VB
            add_scroll_target(93, "VB_bits_1_0xe052df0", 0, 4)
            -- Count: 18

            add_scroll_target(94, "VB_bits_1_0xe02c6e0", 0, 9) -- Start VB
            add_scroll_target(94, "VB_bits_1_0xe02c770", 0, 9)
            add_scroll_target(94, "VB_bits_1_0xe02c800", 0, 11)
            add_scroll_target(94, "VB_bits_1_0xe02c8b0", 0, 11)
            add_scroll_target(94, "VB_bits_1_0xe02c960", 0, 15)
            add_scroll_target(94, "VB_bits_1_0xe02ca50", 0, 10)
            add_scroll_target(94, "VB_bits_1_0xe02caf0", 0, 8)
            add_scroll_target(94, "VB_bits_1_0xe02cb70", 0, 11)
            add_scroll_target(94, "VB_bits_1_0xe02cc20", 0, 11)
            add_scroll_target(94, "VB_bits_1_0xe02ccd0", 0, 11)
            add_scroll_target(94, "VB_bits_1_0xe02cd80", 0, 13)
            add_scroll_target(94, "VB_bits_1_0xe02ce50", 0, 9)
            add_scroll_target(94, "VB_bits_1_0xe02cee0", 0, 10)
            add_scroll_target(94, "VB_bits_1_0xe02cf80", 0, 9)
            add_scroll_target(94, "VB_bits_1_0xe02d010", 0, 9)
            add_scroll_target(94, "VB_bits_1_0xe02d0a0", 0, 13)
            add_scroll_target(94, "VB_bits_1_0xe02d170", 0, 11)
            add_scroll_target(94, "VB_bits_1_0xe02d220", 0, 10)
            add_scroll_target(94, "VB_bits_1_0xe02d2c0", 0, 11)
            add_scroll_target(94, "VB_bits_1_0xe02d370", 0, 8)
            add_scroll_target(94, "VB_bits_1_0xe02d3f0", 0, 11)
            add_scroll_target(94, "VB_bits_1_0xe02d4a0", 0, 11)
            add_scroll_target(94, "VB_bits_1_0xe02d550", 0, 13)
            add_scroll_target(94, "VB_bits_1_0xe02d620", 0, 12)
            add_scroll_target(94, "VB_bits_1_0xe02d6e0", 0, 11)
            add_scroll_target(94, "VB_bits_1_0xe02d790", 0, 8)
            add_scroll_target(94, "VB_bits_1_0xe02d810", 0, 13)
            add_scroll_target(94, "VB_bits_1_0xe02d8e0", 0, 9)
            add_scroll_target(94, "VB_bits_1_0xe02d970", 0, 9)
            add_scroll_target(94, "VB_bits_1_0xe02da00", 0, 12)
            add_scroll_target(94, "VB_bits_1_0xe02dac0", 0, 8)
            add_scroll_target(94, "VB_bits_1_0xe02db40", 0, 12)
            add_scroll_target(94, "VB_bits_1_0xe02dc00", 0, 12)
            add_scroll_target(94, "VB_bits_1_0xe02dcc0", 0, 12)
            add_scroll_target(94, "VB_bits_1_0xe02dd80", 0, 11)
            add_scroll_target(94, "VB_bits_1_0xe02de30", 0, 10)
            -- Count: 383

            add_scroll_target(95, "VB_bits_1_0xe02e1b0", 0, 9) -- Start VB
            add_scroll_target(95, "VB_bits_1_0xe02e240", 0, 7)
            add_scroll_target(95, "VB_bits_1_0xe02e2b0", 0, 11)
            add_scroll_target(95, "VB_bits_1_0xe02e360", 0, 7)
            add_scroll_target(95, "VB_bits_1_0xe02e3d0", 0, 9)
            add_scroll_target(95, "VB_bits_1_0xe02e460", 0, 7)
            add_scroll_target(95, "VB_bits_1_0xe02e4d0", 0, 7)
            add_scroll_target(95, "VB_bits_1_0xe02e540", 0, 9)
            add_scroll_target(95, "VB_bits_1_0xe02e5d0", 0, 7)
            add_scroll_target(95, "VB_bits_1_0xe02e640", 0, 11)
            add_scroll_target(95, "VB_bits_1_0xe02e6f0", 0, 7)
            add_scroll_target(95, "VB_bits_1_0xe02e760", 0, 7)
            add_scroll_target(95, "VB_bits_1_0xe02e7d0", 0, 9)
            add_scroll_target(95, "VB_bits_1_0xe02e860", 0, 7)
            add_scroll_target(95, "VB_bits_1_0xe02e8d0", 0, 4)
            -- Count: 118

            add_scroll_target(96, "VB_bits_1_0xe02e910", 0, 11) -- Start VB
            add_scroll_target(96, "VB_bits_1_0xe02e9c0", 0, 11)
            add_scroll_target(96, "VB_bits_1_0xe02ea70", 0, 10)
            add_scroll_target(96, "VB_bits_1_0xe02eb10", 0, 13)
            add_scroll_target(96, "VB_bits_1_0xe02ebe0", 0, 10)
            add_scroll_target(96, "VB_bits_1_0xe02ec80", 0, 14)
            add_scroll_target(96, "VB_bits_1_0xe02ed60", 0, 11)
            add_scroll_target(96, "VB_bits_1_0xe02ee10", 0, 11)
            add_scroll_target(96, "VB_bits_1_0xe02eec0", 0, 11)
            add_scroll_target(96, "VB_bits_1_0xe02ef70", 0, 9)
            add_scroll_target(96, "VB_bits_1_0xe02f000", 0, 9)
            add_scroll_target(96, "VB_bits_1_0xe02f090", 0, 9)
            add_scroll_target(96, "VB_bits_1_0xe02f120", 0, 11)
            add_scroll_target(96, "VB_bits_1_0xe02f1d0", 0, 10)
            add_scroll_target(96, "VB_bits_1_0xe02f270", 0, 11)
            add_scroll_target(96, "VB_bits_1_0xe02f320", 0, 11)
            add_scroll_target(96, "VB_bits_1_0xe02f3d0", 0, 11)
            add_scroll_target(96, "VB_bits_1_0xe02f480", 0, 9)
            add_scroll_target(96, "VB_bits_1_0xe02f510", 0, 9)
            add_scroll_target(96, "VB_bits_1_0xe02f5a0", 0, 9)
            add_scroll_target(96, "VB_bits_1_0xe02f630", 0, 9)
            add_scroll_target(96, "VB_bits_1_0xe02f6c0", 0, 9)
            add_scroll_target(96, "VB_bits_1_0xe02f750", 0, 11)
            add_scroll_target(96, "VB_bits_1_0xe02f800", 0, 9)
            add_scroll_target(96, "VB_bits_1_0xe02f890", 0, 8)
            add_scroll_target(96, "VB_bits_1_0xe02f910", 0, 11)
            add_scroll_target(96, "VB_bits_1_0xe02f9c0", 0, 9)
            add_scroll_target(96, "VB_bits_1_0xe02fa50", 0, 8)
            add_scroll_target(96, "VB_bits_1_0xe02fad0", 0, 11)
            add_scroll_target(96, "VB_bits_1_0xe02fb80", 0, 11)
            add_scroll_target(96, "VB_bits_1_0xe02fc30", 0, 11)
            add_scroll_target(96, "VB_bits_1_0xe02fce0", 0, 11)
            add_scroll_target(96, "VB_bits_1_0xe02fd90", 0, 9)
            add_scroll_target(96, "VB_bits_1_0xe02fe20", 0, 9)
            add_scroll_target(96, "VB_bits_1_0xe02feb0", 0, 11)
            add_scroll_target(96, "VB_bits_1_0xe02ff60", 0, 12)
            add_scroll_target(96, "VB_bits_1_0xe030020", 0, 11)
            add_scroll_target(96, "VB_bits_1_0xe0300d0", 0, 13)
            add_scroll_target(96, "VB_bits_1_0xe0301a0", 0, 10)
            add_scroll_target(96, "VB_bits_1_0xe030240", 0, 11)
            add_scroll_target(96, "VB_bits_1_0xe0302f0", 0, 11)
            add_scroll_target(96, "VB_bits_1_0xe0303a0", 0, 11)
            add_scroll_target(96, "VB_bits_1_0xe030450", 0, 10)
            add_scroll_target(96, "VB_bits_1_0xe0304f0", 0, 9)
            add_scroll_target(96, "VB_bits_1_0xe030580", 0, 7)
            add_scroll_target(96, "VB_bits_1_0xe0305f0", 0, 8)
            add_scroll_target(96, "VB_bits_1_0xe030670", 0, 8)
            add_scroll_target(96, "VB_bits_1_0xe0306f0", 0, 10)
            add_scroll_target(96, "VB_bits_1_0xe030790", 0, 10)
            add_scroll_target(96, "VB_bits_1_0xe030830", 0, 11)
            add_scroll_target(96, "VB_bits_1_0xe0308e0", 0, 12)
            add_scroll_target(96, "VB_bits_1_0xe0309a0", 0, 13)
            add_scroll_target(96, "VB_bits_1_0xe030a70", 0, 12)
            add_scroll_target(96, "VB_bits_1_0xe030b30", 0, 12)
            add_scroll_target(96, "VB_bits_1_0xe030bf0", 0, 9)
            add_scroll_target(96, "VB_bits_1_0xe030c80", 0, 11)
            add_scroll_target(96, "VB_bits_1_0xe030d30", 0, 11)
            add_scroll_target(96, "VB_bits_1_0xe030de0", 0, 3)
            -- Count: 592

            add_scroll_target(97, "VB_bits_1_0xe030e10", 0, 11) -- Start VB
            add_scroll_target(97, "VB_bits_1_0xe030ec0", 0, 7)
            add_scroll_target(97, "VB_bits_1_0xe030f30", 0, 11)
            add_scroll_target(97, "VB_bits_1_0xe030fe0", 0, 9)
            add_scroll_target(97, "VB_bits_1_0xe031070", 0, 11)
            add_scroll_target(97, "VB_bits_1_0xe031120", 0, 11)
            add_scroll_target(97, "VB_bits_1_0xe0311d0", 0, 6)
            -- Count: 66

            add_scroll_target(98, "VB_bits_1_0xe052f30", 0, 9) -- Start VB
            add_scroll_target(98, "VB_bits_1_0xe052fc0", 0, 7)
            add_scroll_target(98, "VB_bits_1_0xe053030", 0, 11)
            add_scroll_target(98, "VB_bits_1_0xe0530e0", 0, 7)
            add_scroll_target(98, "VB_bits_1_0xe053150", 0, 9)
            add_scroll_target(98, "VB_bits_1_0xe0531e0", 0, 7)
            add_scroll_target(98, "VB_bits_1_0xe053250", 0, 7)
            add_scroll_target(98, "VB_bits_1_0xe0532c0", 0, 9)
            add_scroll_target(98, "VB_bits_1_0xe053350", 0, 7)
            add_scroll_target(98, "VB_bits_1_0xe0533c0", 0, 11)
            add_scroll_target(98, "VB_bits_1_0xe053470", 0, 7)
            add_scroll_target(98, "VB_bits_1_0xe0534e0", 0, 7)
            add_scroll_target(98, "VB_bits_1_0xe053550", 0, 9)
            add_scroll_target(98, "VB_bits_1_0xe0535e0", 0, 7)
            add_scroll_target(98, "VB_bits_1_0xe053650", 0, 4)
            -- Count: 118

            add_scroll_target(99, "VB_bits_1_0xe053690", 0, 11) -- Start VB
            add_scroll_target(99, "VB_bits_1_0xe053740", 0, 11)
            add_scroll_target(99, "VB_bits_1_0xe0537f0", 0, 10)
            add_scroll_target(99, "VB_bits_1_0xe053890", 0, 13)
            add_scroll_target(99, "VB_bits_1_0xe053960", 0, 10)
            add_scroll_target(99, "VB_bits_1_0xe053a00", 0, 14)
            add_scroll_target(99, "VB_bits_1_0xe053ae0", 0, 11)
            add_scroll_target(99, "VB_bits_1_0xe053b90", 0, 11)
            add_scroll_target(99, "VB_bits_1_0xe053c40", 0, 11)
            add_scroll_target(99, "VB_bits_1_0xe053cf0", 0, 9)
            add_scroll_target(99, "VB_bits_1_0xe053d80", 0, 9)
            add_scroll_target(99, "VB_bits_1_0xe053e10", 0, 9)
            add_scroll_target(99, "VB_bits_1_0xe053ea0", 0, 11)
            add_scroll_target(99, "VB_bits_1_0xe053f50", 0, 10)
            add_scroll_target(99, "VB_bits_1_0xe053ff0", 0, 11)
            add_scroll_target(99, "VB_bits_1_0xe0540a0", 0, 11)
            add_scroll_target(99, "VB_bits_1_0xe054150", 0, 11)
            add_scroll_target(99, "VB_bits_1_0xe054200", 0, 9)
            add_scroll_target(99, "VB_bits_1_0xe054290", 0, 9)
            add_scroll_target(99, "VB_bits_1_0xe054320", 0, 9)
            add_scroll_target(99, "VB_bits_1_0xe0543b0", 0, 9)
            add_scroll_target(99, "VB_bits_1_0xe054440", 0, 9)
            add_scroll_target(99, "VB_bits_1_0xe0544d0", 0, 11)
            add_scroll_target(99, "VB_bits_1_0xe054580", 0, 9)
            add_scroll_target(99, "VB_bits_1_0xe054610", 0, 8)
            add_scroll_target(99, "VB_bits_1_0xe054690", 0, 11)
            add_scroll_target(99, "VB_bits_1_0xe054740", 0, 9)
            add_scroll_target(99, "VB_bits_1_0xe0547d0", 0, 8)
            add_scroll_target(99, "VB_bits_1_0xe054850", 0, 11)
            add_scroll_target(99, "VB_bits_1_0xe054900", 0, 11)
            add_scroll_target(99, "VB_bits_1_0xe0549b0", 0, 11)
            add_scroll_target(99, "VB_bits_1_0xe054a60", 0, 11)
            add_scroll_target(99, "VB_bits_1_0xe054b10", 0, 9)
            add_scroll_target(99, "VB_bits_1_0xe054ba0", 0, 9)
            add_scroll_target(99, "VB_bits_1_0xe054c30", 0, 11)
            add_scroll_target(99, "VB_bits_1_0xe054ce0", 0, 12)
            add_scroll_target(99, "VB_bits_1_0xe054da0", 0, 11)
            add_scroll_target(99, "VB_bits_1_0xe054e50", 0, 13)
            add_scroll_target(99, "VB_bits_1_0xe054f20", 0, 10)
            add_scroll_target(99, "VB_bits_1_0xe054fc0", 0, 11)
            add_scroll_target(99, "VB_bits_1_0xe055070", 0, 11)
            add_scroll_target(99, "VB_bits_1_0xe055120", 0, 11)
            add_scroll_target(99, "VB_bits_1_0xe0551d0", 0, 10)
            add_scroll_target(99, "VB_bits_1_0xe055270", 0, 9)
            add_scroll_target(99, "VB_bits_1_0xe055300", 0, 7)
            add_scroll_target(99, "VB_bits_1_0xe055370", 0, 8)
            add_scroll_target(99, "VB_bits_1_0xe0553f0", 0, 8)
            add_scroll_target(99, "VB_bits_1_0xe055470", 0, 10)
            add_scroll_target(99, "VB_bits_1_0xe055510", 0, 10)
            add_scroll_target(99, "VB_bits_1_0xe0555b0", 0, 11)
            add_scroll_target(99, "VB_bits_1_0xe055660", 0, 12)
            add_scroll_target(99, "VB_bits_1_0xe055720", 0, 13)
            add_scroll_target(99, "VB_bits_1_0xe0557f0", 0, 12)
            add_scroll_target(99, "VB_bits_1_0xe0558b0", 0, 12)
            add_scroll_target(99, "VB_bits_1_0xe055970", 0, 9)
            add_scroll_target(99, "VB_bits_1_0xe055a00", 0, 11)
            add_scroll_target(99, "VB_bits_1_0xe055ab0", 0, 11)
            add_scroll_target(99, "VB_bits_1_0xe055b60", 0, 3)
            -- Count: 592

            add_scroll_target(100, "VB_bits_1_0xe055b90", 0, 11) -- Start VB
            add_scroll_target(100, "VB_bits_1_0xe055c40", 0, 7)
            add_scroll_target(100, "VB_bits_1_0xe055cb0", 0, 11)
            add_scroll_target(100, "VB_bits_1_0xe055d60", 0, 9)
            add_scroll_target(100, "VB_bits_1_0xe055df0", 0, 11)
            add_scroll_target(100, "VB_bits_1_0xe055ea0", 0, 11)
            add_scroll_target(100, "VB_bits_1_0xe055f50", 0, 6)
            -- Count: 66

            add_scroll_target(101, "VB_bits_1_0xe0560b0", 0, 9) -- Start VB
            add_scroll_target(101, "VB_bits_1_0xe056140", 0, 7)
            add_scroll_target(101, "VB_bits_1_0xe0561b0", 0, 11)
            add_scroll_target(101, "VB_bits_1_0xe056260", 0, 7)
            add_scroll_target(101, "VB_bits_1_0xe0562d0", 0, 9)
            add_scroll_target(101, "VB_bits_1_0xe056360", 0, 7)
            add_scroll_target(101, "VB_bits_1_0xe0563d0", 0, 7)
            add_scroll_target(101, "VB_bits_1_0xe056440", 0, 9)
            add_scroll_target(101, "VB_bits_1_0xe0564d0", 0, 7)
            add_scroll_target(101, "VB_bits_1_0xe056540", 0, 11)
            add_scroll_target(101, "VB_bits_1_0xe0565f0", 0, 7)
            add_scroll_target(101, "VB_bits_1_0xe056660", 0, 7)
            add_scroll_target(101, "VB_bits_1_0xe0566d0", 0, 9)
            add_scroll_target(101, "VB_bits_1_0xe056760", 0, 7)
            add_scroll_target(101, "VB_bits_1_0xe0567d0", 0, 4)
            -- Count: 118

            add_scroll_target(102, "VB_bits_1_0xe056810", 0, 11) -- Start VB
            add_scroll_target(102, "VB_bits_1_0xe0568c0", 0, 11)
            add_scroll_target(102, "VB_bits_1_0xe056970", 0, 10)
            add_scroll_target(102, "VB_bits_1_0xe056a10", 0, 13)
            add_scroll_target(102, "VB_bits_1_0xe056ae0", 0, 10)
            add_scroll_target(102, "VB_bits_1_0xe056b80", 0, 14)
            add_scroll_target(102, "VB_bits_1_0xe056c60", 0, 11)
            add_scroll_target(102, "VB_bits_1_0xe056d10", 0, 11)
            add_scroll_target(102, "VB_bits_1_0xe056dc0", 0, 11)
            add_scroll_target(102, "VB_bits_1_0xe056e70", 0, 9)
            add_scroll_target(102, "VB_bits_1_0xe056f00", 0, 9)
            add_scroll_target(102, "VB_bits_1_0xe056f90", 0, 9)
            add_scroll_target(102, "VB_bits_1_0xe057020", 0, 11)
            add_scroll_target(102, "VB_bits_1_0xe0570d0", 0, 10)
            add_scroll_target(102, "VB_bits_1_0xe057170", 0, 11)
            add_scroll_target(102, "VB_bits_1_0xe057220", 0, 11)
            add_scroll_target(102, "VB_bits_1_0xe0572d0", 0, 11)
            add_scroll_target(102, "VB_bits_1_0xe057380", 0, 9)
            add_scroll_target(102, "VB_bits_1_0xe057410", 0, 9)
            add_scroll_target(102, "VB_bits_1_0xe0574a0", 0, 9)
            add_scroll_target(102, "VB_bits_1_0xe057530", 0, 9)
            add_scroll_target(102, "VB_bits_1_0xe0575c0", 0, 9)
            add_scroll_target(102, "VB_bits_1_0xe057650", 0, 11)
            add_scroll_target(102, "VB_bits_1_0xe057700", 0, 9)
            add_scroll_target(102, "VB_bits_1_0xe057790", 0, 8)
            add_scroll_target(102, "VB_bits_1_0xe057810", 0, 11)
            add_scroll_target(102, "VB_bits_1_0xe0578c0", 0, 9)
            add_scroll_target(102, "VB_bits_1_0xe057950", 0, 8)
            add_scroll_target(102, "VB_bits_1_0xe0579d0", 0, 11)
            add_scroll_target(102, "VB_bits_1_0xe057a80", 0, 11)
            add_scroll_target(102, "VB_bits_1_0xe057b30", 0, 11)
            add_scroll_target(102, "VB_bits_1_0xe057be0", 0, 11)
            add_scroll_target(102, "VB_bits_1_0xe057c90", 0, 9)
            add_scroll_target(102, "VB_bits_1_0xe057d20", 0, 9)
            add_scroll_target(102, "VB_bits_1_0xe057db0", 0, 11)
            add_scroll_target(102, "VB_bits_1_0xe057e60", 0, 12)
            add_scroll_target(102, "VB_bits_1_0xe057f20", 0, 11)
            add_scroll_target(102, "VB_bits_1_0xe057fd0", 0, 13)
            add_scroll_target(102, "VB_bits_1_0xe0580a0", 0, 10)
            add_scroll_target(102, "VB_bits_1_0xe058140", 0, 11)
            add_scroll_target(102, "VB_bits_1_0xe0581f0", 0, 11)
            add_scroll_target(102, "VB_bits_1_0xe0582a0", 0, 11)
            add_scroll_target(102, "VB_bits_1_0xe058350", 0, 10)
            add_scroll_target(102, "VB_bits_1_0xe0583f0", 0, 9)
            add_scroll_target(102, "VB_bits_1_0xe058480", 0, 7)
            add_scroll_target(102, "VB_bits_1_0xe0584f0", 0, 8)
            add_scroll_target(102, "VB_bits_1_0xe058570", 0, 8)
            add_scroll_target(102, "VB_bits_1_0xe0585f0", 0, 10)
            add_scroll_target(102, "VB_bits_1_0xe058690", 0, 10)
            add_scroll_target(102, "VB_bits_1_0xe058730", 0, 11)
            add_scroll_target(102, "VB_bits_1_0xe0587e0", 0, 12)
            add_scroll_target(102, "VB_bits_1_0xe0588a0", 0, 13)
            add_scroll_target(102, "VB_bits_1_0xe058970", 0, 12)
            add_scroll_target(102, "VB_bits_1_0xe058a30", 0, 12)
            add_scroll_target(102, "VB_bits_1_0xe058af0", 0, 9)
            add_scroll_target(102, "VB_bits_1_0xe058b80", 0, 11)
            add_scroll_target(102, "VB_bits_1_0xe058c30", 0, 11)
            add_scroll_target(102, "VB_bits_1_0xe058ce0", 0, 3)
            -- Count: 592

            add_scroll_target(103, "VB_bits_1_0xe058d10", 0, 11) -- Start VB
            add_scroll_target(103, "VB_bits_1_0xe058dc0", 0, 7)
            add_scroll_target(103, "VB_bits_1_0xe058e30", 0, 11)
            add_scroll_target(103, "VB_bits_1_0xe058ee0", 0, 9)
            add_scroll_target(103, "VB_bits_1_0xe058f70", 0, 11)
            add_scroll_target(103, "VB_bits_1_0xe059020", 0, 11)
            add_scroll_target(103, "VB_bits_1_0xe0590d0", 0, 6)
            -- Count: 66

            add_scroll_target(104, "VB_bits_1_0xe059230", 0, 9) -- Start VB
            add_scroll_target(104, "VB_bits_1_0xe0592c0", 0, 7)
            add_scroll_target(104, "VB_bits_1_0xe059330", 0, 11)
            add_scroll_target(104, "VB_bits_1_0xe0593e0", 0, 7)
            add_scroll_target(104, "VB_bits_1_0xe059450", 0, 9)
            add_scroll_target(104, "VB_bits_1_0xe0594e0", 0, 7)
            add_scroll_target(104, "VB_bits_1_0xe059550", 0, 7)
            add_scroll_target(104, "VB_bits_1_0xe0595c0", 0, 9)
            add_scroll_target(104, "VB_bits_1_0xe059650", 0, 7)
            add_scroll_target(104, "VB_bits_1_0xe0596c0", 0, 11)
            add_scroll_target(104, "VB_bits_1_0xe059770", 0, 7)
            add_scroll_target(104, "VB_bits_1_0xe0597e0", 0, 7)
            add_scroll_target(104, "VB_bits_1_0xe059850", 0, 9)
            add_scroll_target(104, "VB_bits_1_0xe0598e0", 0, 7)
            add_scroll_target(104, "VB_bits_1_0xe059950", 0, 4)
            -- Count: 118

            add_scroll_target(105, "VB_bits_1_0xe059990", 0, 11) -- Start VB
            add_scroll_target(105, "VB_bits_1_0xe059a40", 0, 11)
            add_scroll_target(105, "VB_bits_1_0xe059af0", 0, 10)
            add_scroll_target(105, "VB_bits_1_0xe059b90", 0, 13)
            add_scroll_target(105, "VB_bits_1_0xe059c60", 0, 10)
            add_scroll_target(105, "VB_bits_1_0xe059d00", 0, 14)
            add_scroll_target(105, "VB_bits_1_0xe059de0", 0, 11)
            add_scroll_target(105, "VB_bits_1_0xe059e90", 0, 11)
            add_scroll_target(105, "VB_bits_1_0xe059f40", 0, 11)
            add_scroll_target(105, "VB_bits_1_0xe059ff0", 0, 9)
            add_scroll_target(105, "VB_bits_1_0xe05a080", 0, 9)
            add_scroll_target(105, "VB_bits_1_0xe05a110", 0, 9)
            add_scroll_target(105, "VB_bits_1_0xe05a1a0", 0, 11)
            add_scroll_target(105, "VB_bits_1_0xe05a250", 0, 10)
            add_scroll_target(105, "VB_bits_1_0xe05a2f0", 0, 11)
            add_scroll_target(105, "VB_bits_1_0xe05a3a0", 0, 11)
            add_scroll_target(105, "VB_bits_1_0xe05a450", 0, 11)
            add_scroll_target(105, "VB_bits_1_0xe05a500", 0, 9)
            add_scroll_target(105, "VB_bits_1_0xe05a590", 0, 9)
            add_scroll_target(105, "VB_bits_1_0xe05a620", 0, 9)
            add_scroll_target(105, "VB_bits_1_0xe05a6b0", 0, 9)
            add_scroll_target(105, "VB_bits_1_0xe05a740", 0, 9)
            add_scroll_target(105, "VB_bits_1_0xe05a7d0", 0, 11)
            add_scroll_target(105, "VB_bits_1_0xe05a880", 0, 9)
            add_scroll_target(105, "VB_bits_1_0xe05a910", 0, 8)
            add_scroll_target(105, "VB_bits_1_0xe05a990", 0, 11)
            add_scroll_target(105, "VB_bits_1_0xe05aa40", 0, 9)
            add_scroll_target(105, "VB_bits_1_0xe05aad0", 0, 8)
            add_scroll_target(105, "VB_bits_1_0xe05ab50", 0, 11)
            add_scroll_target(105, "VB_bits_1_0xe05ac00", 0, 11)
            add_scroll_target(105, "VB_bits_1_0xe05acb0", 0, 11)
            add_scroll_target(105, "VB_bits_1_0xe05ad60", 0, 11)
            add_scroll_target(105, "VB_bits_1_0xe05ae10", 0, 9)
            add_scroll_target(105, "VB_bits_1_0xe05aea0", 0, 9)
            add_scroll_target(105, "VB_bits_1_0xe05af30", 0, 11)
            add_scroll_target(105, "VB_bits_1_0xe05afe0", 0, 12)
            add_scroll_target(105, "VB_bits_1_0xe05b0a0", 0, 11)
            add_scroll_target(105, "VB_bits_1_0xe05b150", 0, 13)
            add_scroll_target(105, "VB_bits_1_0xe05b220", 0, 10)
            add_scroll_target(105, "VB_bits_1_0xe05b2c0", 0, 11)
            add_scroll_target(105, "VB_bits_1_0xe05b370", 0, 11)
            add_scroll_target(105, "VB_bits_1_0xe05b420", 0, 11)
            add_scroll_target(105, "VB_bits_1_0xe05b4d0", 0, 10)
            add_scroll_target(105, "VB_bits_1_0xe05b570", 0, 9)
            add_scroll_target(105, "VB_bits_1_0xe05b600", 0, 7)
            add_scroll_target(105, "VB_bits_1_0xe05b670", 0, 8)
            add_scroll_target(105, "VB_bits_1_0xe05b6f0", 0, 8)
            add_scroll_target(105, "VB_bits_1_0xe05b770", 0, 10)
            add_scroll_target(105, "VB_bits_1_0xe05b810", 0, 10)
            add_scroll_target(105, "VB_bits_1_0xe05b8b0", 0, 11)
            add_scroll_target(105, "VB_bits_1_0xe05b960", 0, 12)
            add_scroll_target(105, "VB_bits_1_0xe05ba20", 0, 13)
            add_scroll_target(105, "VB_bits_1_0xe05baf0", 0, 12)
            add_scroll_target(105, "VB_bits_1_0xe05bbb0", 0, 12)
            add_scroll_target(105, "VB_bits_1_0xe05bc70", 0, 9)
            add_scroll_target(105, "VB_bits_1_0xe05bd00", 0, 11)
            add_scroll_target(105, "VB_bits_1_0xe05bdb0", 0, 11)
            add_scroll_target(105, "VB_bits_1_0xe05be60", 0, 3)
            -- Count: 592

            add_scroll_target(106, "VB_bits_1_0xe05be90", 0, 11) -- Start VB
            add_scroll_target(106, "VB_bits_1_0xe05bf40", 0, 7)
            add_scroll_target(106, "VB_bits_1_0xe05bfb0", 0, 11)
            add_scroll_target(106, "VB_bits_1_0xe05c060", 0, 9)
            add_scroll_target(106, "VB_bits_1_0xe05c0f0", 0, 11)
            add_scroll_target(106, "VB_bits_1_0xe05c1a0", 0, 11)
            add_scroll_target(106, "VB_bits_1_0xe05c250", 0, 6)
            -- Count: 66

            add_scroll_target(107, "VB_bits_1_0xe05c8d0", 0, 9) -- Start VB
            add_scroll_target(107, "VB_bits_1_0xe05c960", 0, 7)
            add_scroll_target(107, "VB_bits_1_0xe05c9d0", 0, 9)
            add_scroll_target(107, "VB_bits_1_0xe05ca60", 0, 7)
            add_scroll_target(107, "VB_bits_1_0xe05cad0", 0, 6)
            -- Count: 38

            add_scroll_target(108, "VB_bits_1_0xe05cb30", 0, 13) -- Start VB
            add_scroll_target(108, "VB_bits_1_0xe05cc00", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05ccb0", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05cd60", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05ce10", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05cec0", 0, 13)
            add_scroll_target(108, "VB_bits_1_0xe05cf90", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05d040", 0, 13)
            add_scroll_target(108, "VB_bits_1_0xe05d110", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05d1c0", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05d270", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05d320", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05d3d0", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05d480", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05d530", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05d5e0", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05d690", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05d740", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05d7f0", 0, 6)
            add_scroll_target(108, "VB_bits_1_0xe05d850", 0, 9)
            add_scroll_target(108, "VB_bits_1_0xe05d8e0", 0, 9)
            add_scroll_target(108, "VB_bits_1_0xe05d970", 0, 9)
            add_scroll_target(108, "VB_bits_1_0xe05da00", 0, 9)
            add_scroll_target(108, "VB_bits_1_0xe05da90", 0, 9)
            add_scroll_target(108, "VB_bits_1_0xe05db20", 0, 9)
            add_scroll_target(108, "VB_bits_1_0xe05dbb0", 0, 9)
            add_scroll_target(108, "VB_bits_1_0xe05dc40", 0, 10)
            add_scroll_target(108, "VB_bits_1_0xe05dce0", 0, 13)
            add_scroll_target(108, "VB_bits_1_0xe05ddb0", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05de60", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05df10", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05dfc0", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05e070", 0, 13)
            add_scroll_target(108, "VB_bits_1_0xe05e140", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05e1f0", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05e2a0", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05e350", 0, 9)
            add_scroll_target(108, "VB_bits_1_0xe05e3e0", 0, 13)
            add_scroll_target(108, "VB_bits_1_0xe05e4b0", 0, 13)
            add_scroll_target(108, "VB_bits_1_0xe05e580", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05e630", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05e6e0", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05e790", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05e840", 0, 12)
            add_scroll_target(108, "VB_bits_1_0xe05e900", 0, 13)
            add_scroll_target(108, "VB_bits_1_0xe05e9d0", 0, 13)
            add_scroll_target(108, "VB_bits_1_0xe05eaa0", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05eb50", 0, 13)
            add_scroll_target(108, "VB_bits_1_0xe05ec20", 0, 9)
            add_scroll_target(108, "VB_bits_1_0xe05ecb0", 0, 13)
            add_scroll_target(108, "VB_bits_1_0xe05ed80", 0, 9)
            add_scroll_target(108, "VB_bits_1_0xe05ee10", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05eec0", 0, 13)
            add_scroll_target(108, "VB_bits_1_0xe05ef90", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05f040", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05f0f0", 0, 9)
            add_scroll_target(108, "VB_bits_1_0xe05f180", 0, 9)
            add_scroll_target(108, "VB_bits_1_0xe05f210", 0, 13)
            add_scroll_target(108, "VB_bits_1_0xe05f2e0", 0, 13)
            add_scroll_target(108, "VB_bits_1_0xe05f3b0", 0, 13)
            add_scroll_target(108, "VB_bits_1_0xe05f480", 0, 13)
            add_scroll_target(108, "VB_bits_1_0xe05f550", 0, 10)
            add_scroll_target(108, "VB_bits_1_0xe05f5f0", 0, 11)
            add_scroll_target(108, "VB_bits_1_0xe05f6a0", 0, 7)
            -- Count: 702

            add_scroll_target(109, "VB_bits_1_0xe05f710", 0, 11) -- Start VB
            add_scroll_target(109, "VB_bits_1_0xe05f7c0", 0, 9)
            add_scroll_target(109, "VB_bits_1_0xe05f850", 0, 9)
            add_scroll_target(109, "VB_bits_1_0xe05f8e0", 0, 3)
            -- Count: 32
            bits_1_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_BITS and np.currAreaIndex == 2 then
        if not bits_2_scroll then
            add_scroll_target(110, "VB_bits_2_0xe015600", 0, 9) -- Start VB
            add_scroll_target(110, "VB_bits_2_0xe015690", 0, 11)
            add_scroll_target(110, "VB_bits_2_0xe015740", 0, 11)
            add_scroll_target(110, "VB_bits_2_0xe0157f0", 0, 13)
            add_scroll_target(110, "VB_bits_2_0xe0158c0", 0, 11)
            add_scroll_target(110, "VB_bits_2_0xe015970", 0, 11)
            add_scroll_target(110, "VB_bits_2_0xe015a20", 0, 13)
            add_scroll_target(110, "VB_bits_2_0xe015af0", 0, 9)
            add_scroll_target(110, "VB_bits_2_0xe015b80", 0, 11)
            add_scroll_target(110, "VB_bits_2_0xe015c30", 0, 9)
            add_scroll_target(110, "VB_bits_2_0xe015cc0", 0, 9)
            add_scroll_target(110, "VB_bits_2_0xe015d50", 0, 7)
            -- Count: 124
            bits_2_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_BITS and np.currAreaIndex == 3 then
        if not bits_3_scroll then
            add_scroll_target(111, "VB_bits_3_0xe005e20", 0, 7) -- Start VB
            add_scroll_target(111, "VB_bits_3_0xe005e90", 0, 7)
            add_scroll_target(111, "VB_bits_3_0xe005f00", 0, 9)
            add_scroll_target(111, "VB_bits_3_0xe005f90", 0, 9)
            add_scroll_target(111, "VB_bits_3_0xe006020", 0, 6)
            -- Count: 38

            add_scroll_target(112, "VB_bits_3_0xe00a760", 0, 11) -- Start VB
            add_scroll_target(112, "VB_bits_3_0xe00a810", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00a8c0", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00a970", 0, 12)
            add_scroll_target(112, "VB_bits_3_0xe00aa30", 0, 9)
            add_scroll_target(112, "VB_bits_3_0xe00aac0", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00ab70", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00ac20", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00acd0", 0, 13)
            add_scroll_target(112, "VB_bits_3_0xe00ada0", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00ae50", 0, 13)
            add_scroll_target(112, "VB_bits_3_0xe00af20", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00afd0", 0, 13)
            add_scroll_target(112, "VB_bits_3_0xe00b0a0", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00b150", 0, 10)
            add_scroll_target(112, "VB_bits_3_0xe00b1f0", 0, 13)
            add_scroll_target(112, "VB_bits_3_0xe00b2c0", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00b370", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00b420", 0, 13)
            add_scroll_target(112, "VB_bits_3_0xe00b4f0", 0, 13)
            add_scroll_target(112, "VB_bits_3_0xe00b5c0", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00b670", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00b720", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00b7d0", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00b880", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00b930", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00b9e0", 0, 13)
            add_scroll_target(112, "VB_bits_3_0xe00bab0", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00bb60", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00bc10", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00bcc0", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00bd70", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00be20", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00bed0", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00bf80", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00c030", 0, 12)
            add_scroll_target(112, "VB_bits_3_0xe00c0f0", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00c1a0", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00c250", 0, 9)
            add_scroll_target(112, "VB_bits_3_0xe00c2e0", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00c390", 0, 13)
            add_scroll_target(112, "VB_bits_3_0xe00c460", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00c510", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00c5c0", 0, 10)
            add_scroll_target(112, "VB_bits_3_0xe00c660", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00c710", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00c7c0", 0, 13)
            add_scroll_target(112, "VB_bits_3_0xe00c890", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00c940", 0, 9)
            add_scroll_target(112, "VB_bits_3_0xe00c9d0", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00ca80", 0, 9)
            add_scroll_target(112, "VB_bits_3_0xe00cb10", 0, 9)
            add_scroll_target(112, "VB_bits_3_0xe00cba0", 0, 9)
            add_scroll_target(112, "VB_bits_3_0xe00cc30", 0, 10)
            add_scroll_target(112, "VB_bits_3_0xe00ccd0", 0, 9)
            add_scroll_target(112, "VB_bits_3_0xe00cd60", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00ce10", 0, 9)
            add_scroll_target(112, "VB_bits_3_0xe00cea0", 0, 9)
            add_scroll_target(112, "VB_bits_3_0xe00cf30", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00cfe0", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00d090", 0, 13)
            add_scroll_target(112, "VB_bits_3_0xe00d160", 0, 11)
            add_scroll_target(112, "VB_bits_3_0xe00d210", 0, 13)
            add_scroll_target(112, "VB_bits_3_0xe00d2e0", 0, 5)
            -- Count: 701

            add_scroll_target(113, "VB_bits_3_0xe00d3b0", 0, 7) -- Start VB
            add_scroll_target(113, "VB_bits_3_0xe00d420", 0, 9)
            add_scroll_target(113, "VB_bits_3_0xe00d4b0", 0, 7)
            add_scroll_target(113, "VB_bits_3_0xe00d520", 0, 3)
            -- Count: 26
            bits_3_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_LLL and np.currAreaIndex == 1 then
        if not lll_1_scroll then
            add_scroll_target(114, "VB_lll_1_0xe01d060", 0, 9) -- Start VB
            add_scroll_target(114, "VB_lll_1_0xe01d0f0", 0, 9)
            add_scroll_target(114, "VB_lll_1_0xe01d180", 0, 9)
            add_scroll_target(114, "VB_lll_1_0xe01d210", 0, 11)
            add_scroll_target(114, "VB_lll_1_0xe01d2c0", 0, 11)
            add_scroll_target(114, "VB_lll_1_0xe01d370", 0, 9)
            add_scroll_target(114, "VB_lll_1_0xe01d400", 0, 11)
            add_scroll_target(114, "VB_lll_1_0xe01d4b0", 0, 9)
            add_scroll_target(114, "VB_lll_1_0xe01d540", 0, 9)
            add_scroll_target(114, "VB_lll_1_0xe01d5d0", 0, 9)
            add_scroll_target(114, "VB_lll_1_0xe01d660", 0, 7)
            add_scroll_target(114, "VB_lll_1_0xe01d6d0", 0, 11)
            add_scroll_target(114, "VB_lll_1_0xe01d780", 0, 11)
            add_scroll_target(114, "VB_lll_1_0xe01d830", 0, 9)
            add_scroll_target(114, "VB_lll_1_0xe01d8c0", 0, 8)
            add_scroll_target(114, "VB_lll_1_0xe01d940", 0, 9)
            add_scroll_target(114, "VB_lll_1_0xe01d9d0", 0, 9)
            add_scroll_target(114, "VB_lll_1_0xe01da60", 0, 11)
            add_scroll_target(114, "VB_lll_1_0xe01db10", 0, 7)
            add_scroll_target(114, "VB_lll_1_0xe01db80", 0, 9)
            add_scroll_target(114, "VB_lll_1_0xe01dc10", 0, 9)
            add_scroll_target(114, "VB_lll_1_0xe01dca0", 0, 9)
            add_scroll_target(114, "VB_lll_1_0xe01dd30", 0, 11)
            add_scroll_target(114, "VB_lll_1_0xe01dde0", 0, 10)
            -- Count: 226
            lll_1_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_LLL and np.currAreaIndex == 2 then
        if not lll_2_scroll then
            add_scroll_target(115, "VB_lll_2_0xe009d00", 0, 10) -- Start VB
            add_scroll_target(115, "VB_lll_2_0xe009da0", 0, 12)
            add_scroll_target(115, "VB_lll_2_0xe009e60", 0, 7)
            add_scroll_target(115, "VB_lll_2_0xe009ed0", 0, 7)
            add_scroll_target(115, "VB_lll_2_0xe009f40", 0, 10)
            add_scroll_target(115, "VB_lll_2_0xe009fe0", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00a090", 0, 9)
            add_scroll_target(115, "VB_lll_2_0xe00a120", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00a1d0", 0, 9)
            add_scroll_target(115, "VB_lll_2_0xe00a260", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00a310", 0, 7)
            add_scroll_target(115, "VB_lll_2_0xe00a380", 0, 9)
            add_scroll_target(115, "VB_lll_2_0xe00a410", 0, 9)
            add_scroll_target(115, "VB_lll_2_0xe00a4a0", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00a550", 0, 12)
            add_scroll_target(115, "VB_lll_2_0xe00a610", 0, 7)
            add_scroll_target(115, "VB_lll_2_0xe00a680", 0, 9)
            add_scroll_target(115, "VB_lll_2_0xe00a710", 0, 9)
            add_scroll_target(115, "VB_lll_2_0xe00a7a0", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00a850", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00a900", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00a9b0", 0, 9)
            add_scroll_target(115, "VB_lll_2_0xe00aa40", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00aaf0", 0, 10)
            add_scroll_target(115, "VB_lll_2_0xe00ab90", 0, 12)
            add_scroll_target(115, "VB_lll_2_0xe00ac50", 0, 7)
            add_scroll_target(115, "VB_lll_2_0xe00acc0", 0, 9)
            add_scroll_target(115, "VB_lll_2_0xe00ad50", 0, 12)
            add_scroll_target(115, "VB_lll_2_0xe00ae10", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00aec0", 0, 9)
            add_scroll_target(115, "VB_lll_2_0xe00af50", 0, 6)
            add_scroll_target(115, "VB_lll_2_0xe00afb0", 0, 8)
            add_scroll_target(115, "VB_lll_2_0xe00b030", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00b0e0", 0, 9)
            add_scroll_target(115, "VB_lll_2_0xe00b170", 0, 9)
            add_scroll_target(115, "VB_lll_2_0xe00b200", 0, 9)
            add_scroll_target(115, "VB_lll_2_0xe00b290", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00b340", 0, 7)
            add_scroll_target(115, "VB_lll_2_0xe00b3b0", 0, 10)
            add_scroll_target(115, "VB_lll_2_0xe00b450", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00b500", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00b5b0", 0, 10)
            add_scroll_target(115, "VB_lll_2_0xe00b650", 0, 7)
            add_scroll_target(115, "VB_lll_2_0xe00b6c0", 0, 9)
            add_scroll_target(115, "VB_lll_2_0xe00b750", 0, 9)
            add_scroll_target(115, "VB_lll_2_0xe00b7e0", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00b890", 0, 10)
            add_scroll_target(115, "VB_lll_2_0xe00b930", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00b9e0", 0, 7)
            add_scroll_target(115, "VB_lll_2_0xe00ba50", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00bb00", 0, 8)
            add_scroll_target(115, "VB_lll_2_0xe00bb80", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00bc30", 0, 7)
            add_scroll_target(115, "VB_lll_2_0xe00bca0", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00bd50", 0, 4)
            add_scroll_target(115, "VB_lll_2_0xe00c1f0", 0, 10)
            add_scroll_target(115, "VB_lll_2_0xe00c290", 0, 12)
            add_scroll_target(115, "VB_lll_2_0xe00c350", 0, 7)
            add_scroll_target(115, "VB_lll_2_0xe00c3c0", 0, 7)
            add_scroll_target(115, "VB_lll_2_0xe00c430", 0, 10)
            add_scroll_target(115, "VB_lll_2_0xe00c4d0", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00c580", 0, 9)
            add_scroll_target(115, "VB_lll_2_0xe00c610", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00c6c0", 0, 9)
            add_scroll_target(115, "VB_lll_2_0xe00c750", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00c800", 0, 7)
            add_scroll_target(115, "VB_lll_2_0xe00c870", 0, 9)
            add_scroll_target(115, "VB_lll_2_0xe00c900", 0, 9)
            add_scroll_target(115, "VB_lll_2_0xe00c990", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00ca40", 0, 12)
            add_scroll_target(115, "VB_lll_2_0xe00cb00", 0, 7)
            add_scroll_target(115, "VB_lll_2_0xe00cb70", 0, 9)
            add_scroll_target(115, "VB_lll_2_0xe00cc00", 0, 9)
            add_scroll_target(115, "VB_lll_2_0xe00cc90", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00cd40", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00cdf0", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00cea0", 0, 9)
            add_scroll_target(115, "VB_lll_2_0xe00cf30", 0, 11)
            add_scroll_target(115, "VB_lll_2_0xe00cfe0", 0, 10)
            add_scroll_target(115, "VB_lll_2_0xe00d080", 0, 12)
            add_scroll_target(115, "VB_lll_2_0xe00d140", 0, 7)
            add_scroll_target(115, "VB_lll_2_0xe00d1b0", 0, 9)
            add_scroll_target(115, "VB_lll_2_0xe00d240", 0, 3)
            -- Count: 785

            add_scroll_target(116, "VB_lll_2_0xe00c1f0", 0, 10) -- Start VB
            add_scroll_target(116, "VB_lll_2_0xe00c290", 0, 12)
            add_scroll_target(116, "VB_lll_2_0xe00c350", 0, 7)
            add_scroll_target(116, "VB_lll_2_0xe00c3c0", 0, 7)
            add_scroll_target(116, "VB_lll_2_0xe00c430", 0, 10)
            add_scroll_target(116, "VB_lll_2_0xe00c4d0", 0, 11)
            add_scroll_target(116, "VB_lll_2_0xe00c580", 0, 9)
            add_scroll_target(116, "VB_lll_2_0xe00c610", 0, 11)
            add_scroll_target(116, "VB_lll_2_0xe00c6c0", 0, 9)
            add_scroll_target(116, "VB_lll_2_0xe00c750", 0, 11)
            add_scroll_target(116, "VB_lll_2_0xe00c800", 0, 7)
            add_scroll_target(116, "VB_lll_2_0xe00c870", 0, 9)
            add_scroll_target(116, "VB_lll_2_0xe00c900", 0, 9)
            add_scroll_target(116, "VB_lll_2_0xe00c990", 0, 11)
            add_scroll_target(116, "VB_lll_2_0xe00ca40", 0, 12)
            add_scroll_target(116, "VB_lll_2_0xe00cb00", 0, 7)
            add_scroll_target(116, "VB_lll_2_0xe00cb70", 0, 9)
            add_scroll_target(116, "VB_lll_2_0xe00cc00", 0, 9)
            add_scroll_target(116, "VB_lll_2_0xe00cc90", 0, 11)
            add_scroll_target(116, "VB_lll_2_0xe00cd40", 0, 11)
            add_scroll_target(116, "VB_lll_2_0xe00cdf0", 0, 11)
            add_scroll_target(116, "VB_lll_2_0xe00cea0", 0, 9)
            add_scroll_target(116, "VB_lll_2_0xe00cf30", 0, 11)
            add_scroll_target(116, "VB_lll_2_0xe00cfe0", 0, 10)
            add_scroll_target(116, "VB_lll_2_0xe00d080", 0, 12)
            add_scroll_target(116, "VB_lll_2_0xe00d140", 0, 7)
            add_scroll_target(116, "VB_lll_2_0xe00d1b0", 0, 9)
            add_scroll_target(116, "VB_lll_2_0xe00d240", 0, 3)
            -- Count: 264
            lll_2_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_DDD and np.currAreaIndex == 1 then
        if not ddd_1_scroll then
            add_scroll_target(117, "VB_ddd_1_0xe027ce0", 0, 9) -- Start VB
            add_scroll_target(117, "VB_ddd_1_0xe027d70", 0, 13)
            add_scroll_target(117, "VB_ddd_1_0xe027e40", 0, 11)
            add_scroll_target(117, "VB_ddd_1_0xe027ef0", 0, 9)
            add_scroll_target(117, "VB_ddd_1_0xe027f80", 0, 9)
            add_scroll_target(117, "VB_ddd_1_0xe028010", 0, 11)
            add_scroll_target(117, "VB_ddd_1_0xe0280c0", 0, 9)
            add_scroll_target(117, "VB_ddd_1_0xe028150", 0, 7)
            add_scroll_target(117, "VB_ddd_1_0xe0281c0", 0, 7)
            add_scroll_target(117, "VB_ddd_1_0xe028230", 0, 11)
            add_scroll_target(117, "VB_ddd_1_0xe0282e0", 0, 9)
            -- Count: 105

            add_scroll_target(118, "VB_ddd_1_0xe039c60", 0, 8) -- Start VB
            add_scroll_target(118, "VB_ddd_1_0xe039ce0", 0, 10)
            add_scroll_target(118, "VB_ddd_1_0xe039d80", 0, 11)
            add_scroll_target(118, "VB_ddd_1_0xe039e30", 0, 10)
            add_scroll_target(118, "VB_ddd_1_0xe039ed0", 0, 6)
            -- Count: 45

            add_scroll_target(119, "VB_ddd_1_0xe039f30", 0, 9) -- Start VB
            add_scroll_target(119, "VB_ddd_1_0xe039fc0", 0, 9)
            add_scroll_target(119, "VB_ddd_1_0xe03a050", 0, 7)
            add_scroll_target(119, "VB_ddd_1_0xe03a0c0", 0, 4)
            -- Count: 29

            add_scroll_target(120, "VB_ddd_1_0xe041c10", 0, 4) -- Start VB
            -- Count: 4

            add_scroll_target(121, "VB_ddd_1_0xe05e330", 0, 9) -- Start VB
            add_scroll_target(121, "VB_ddd_1_0xe05e3c0", 0, 11)
            add_scroll_target(121, "VB_ddd_1_0xe05e470", 0, 9)
            add_scroll_target(121, "VB_ddd_1_0xe05e500", 0, 3)
            add_scroll_target(121, "VB_ddd_1_0xe05e840", 0, 9)
            add_scroll_target(121, "VB_ddd_1_0xe05e8d0", 0, 11)
            add_scroll_target(121, "VB_ddd_1_0xe05e980", 0, 9)
            add_scroll_target(121, "VB_ddd_1_0xe05ea10", 0, 3)
            add_scroll_target(121, "VB_ddd_1_0xe05ebb0", 0, 9)
            add_scroll_target(121, "VB_ddd_1_0xe05ec40", 0, 11)
            add_scroll_target(121, "VB_ddd_1_0xe05ecf0", 0, 9)
            add_scroll_target(121, "VB_ddd_1_0xe05ed80", 0, 3)
            add_scroll_target(121, "VB_ddd_1_0xe05ef20", 0, 9)
            add_scroll_target(121, "VB_ddd_1_0xe05efb0", 0, 11)
            add_scroll_target(121, "VB_ddd_1_0xe05f060", 0, 9)
            add_scroll_target(121, "VB_ddd_1_0xe05f0f0", 0, 3)
            add_scroll_target(121, "VB_ddd_1_0xe05f290", 0, 9)
            add_scroll_target(121, "VB_ddd_1_0xe05f320", 0, 11)
            add_scroll_target(121, "VB_ddd_1_0xe05f3d0", 0, 9)
            add_scroll_target(121, "VB_ddd_1_0xe05f460", 0, 3)
            add_scroll_target(121, "VB_ddd_1_0xe05f600", 0, 9)
            add_scroll_target(121, "VB_ddd_1_0xe05f690", 0, 11)
            add_scroll_target(121, "VB_ddd_1_0xe05f740", 0, 9)
            add_scroll_target(121, "VB_ddd_1_0xe05f7d0", 0, 3)
            -- Count: 192

            add_scroll_target(122, "VB_ddd_1_0xe05e840", 0, 9) -- Start VB
            add_scroll_target(122, "VB_ddd_1_0xe05e8d0", 0, 11)
            add_scroll_target(122, "VB_ddd_1_0xe05e980", 0, 9)
            add_scroll_target(122, "VB_ddd_1_0xe05ea10", 0, 3)
            add_scroll_target(122, "VB_ddd_1_0xe05ebb0", 0, 9)
            add_scroll_target(122, "VB_ddd_1_0xe05ec40", 0, 11)
            add_scroll_target(122, "VB_ddd_1_0xe05ecf0", 0, 9)
            add_scroll_target(122, "VB_ddd_1_0xe05ed80", 0, 3)
            add_scroll_target(122, "VB_ddd_1_0xe05ef20", 0, 9)
            add_scroll_target(122, "VB_ddd_1_0xe05efb0", 0, 11)
            add_scroll_target(122, "VB_ddd_1_0xe05f060", 0, 9)
            add_scroll_target(122, "VB_ddd_1_0xe05f0f0", 0, 3)
            add_scroll_target(122, "VB_ddd_1_0xe05f290", 0, 9)
            add_scroll_target(122, "VB_ddd_1_0xe05f320", 0, 11)
            add_scroll_target(122, "VB_ddd_1_0xe05f3d0", 0, 9)
            add_scroll_target(122, "VB_ddd_1_0xe05f460", 0, 3)
            add_scroll_target(122, "VB_ddd_1_0xe05f600", 0, 9)
            add_scroll_target(122, "VB_ddd_1_0xe05f690", 0, 11)
            add_scroll_target(122, "VB_ddd_1_0xe05f740", 0, 9)
            add_scroll_target(122, "VB_ddd_1_0xe05f7d0", 0, 3)
            -- Count: 160

            add_scroll_target(123, "VB_ddd_1_0xe05ebb0", 0, 9) -- Start VB
            add_scroll_target(123, "VB_ddd_1_0xe05ec40", 0, 11)
            add_scroll_target(123, "VB_ddd_1_0xe05ecf0", 0, 9)
            add_scroll_target(123, "VB_ddd_1_0xe05ed80", 0, 3)
            add_scroll_target(123, "VB_ddd_1_0xe05ef20", 0, 9)
            add_scroll_target(123, "VB_ddd_1_0xe05efb0", 0, 11)
            add_scroll_target(123, "VB_ddd_1_0xe05f060", 0, 9)
            add_scroll_target(123, "VB_ddd_1_0xe05f0f0", 0, 3)
            add_scroll_target(123, "VB_ddd_1_0xe05f290", 0, 9)
            add_scroll_target(123, "VB_ddd_1_0xe05f320", 0, 11)
            add_scroll_target(123, "VB_ddd_1_0xe05f3d0", 0, 9)
            add_scroll_target(123, "VB_ddd_1_0xe05f460", 0, 3)
            add_scroll_target(123, "VB_ddd_1_0xe05f600", 0, 9)
            add_scroll_target(123, "VB_ddd_1_0xe05f690", 0, 11)
            add_scroll_target(123, "VB_ddd_1_0xe05f740", 0, 9)
            add_scroll_target(123, "VB_ddd_1_0xe05f7d0", 0, 3)
            -- Count: 128

            add_scroll_target(124, "VB_ddd_1_0xe05ef20", 0, 9) -- Start VB
            add_scroll_target(124, "VB_ddd_1_0xe05efb0", 0, 11)
            add_scroll_target(124, "VB_ddd_1_0xe05f060", 0, 9)
            add_scroll_target(124, "VB_ddd_1_0xe05f0f0", 0, 3)
            add_scroll_target(124, "VB_ddd_1_0xe05f290", 0, 9)
            add_scroll_target(124, "VB_ddd_1_0xe05f320", 0, 11)
            add_scroll_target(124, "VB_ddd_1_0xe05f3d0", 0, 9)
            add_scroll_target(124, "VB_ddd_1_0xe05f460", 0, 3)
            add_scroll_target(124, "VB_ddd_1_0xe05f600", 0, 9)
            add_scroll_target(124, "VB_ddd_1_0xe05f690", 0, 11)
            add_scroll_target(124, "VB_ddd_1_0xe05f740", 0, 9)
            add_scroll_target(124, "VB_ddd_1_0xe05f7d0", 0, 3)
            -- Count: 96

            add_scroll_target(125, "VB_ddd_1_0xe05f290", 0, 9) -- Start VB
            add_scroll_target(125, "VB_ddd_1_0xe05f320", 0, 11)
            add_scroll_target(125, "VB_ddd_1_0xe05f3d0", 0, 9)
            add_scroll_target(125, "VB_ddd_1_0xe05f460", 0, 3)
            add_scroll_target(125, "VB_ddd_1_0xe05f600", 0, 9)
            add_scroll_target(125, "VB_ddd_1_0xe05f690", 0, 11)
            add_scroll_target(125, "VB_ddd_1_0xe05f740", 0, 9)
            add_scroll_target(125, "VB_ddd_1_0xe05f7d0", 0, 3)
            -- Count: 64

            add_scroll_target(126, "VB_ddd_1_0xe05f600", 0, 9) -- Start VB
            add_scroll_target(126, "VB_ddd_1_0xe05f690", 0, 11)
            add_scroll_target(126, "VB_ddd_1_0xe05f740", 0, 9)
            add_scroll_target(126, "VB_ddd_1_0xe05f7d0", 0, 3)
            -- Count: 32

            add_scroll_target(127, "VB_ddd_1_0xe05fa90", 0, 9) -- Start VB
            add_scroll_target(127, "VB_ddd_1_0xe05fb20", 0, 11)
            add_scroll_target(127, "VB_ddd_1_0xe05fbd0", 0, 9)
            add_scroll_target(127, "VB_ddd_1_0xe05fc60", 0, 3)
            add_scroll_target(127, "VB_ddd_1_0xe05fe00", 0, 9)
            add_scroll_target(127, "VB_ddd_1_0xe05fe90", 0, 11)
            add_scroll_target(127, "VB_ddd_1_0xe05ff40", 0, 9)
            add_scroll_target(127, "VB_ddd_1_0xe05ffd0", 0, 3)
            add_scroll_target(127, "VB_ddd_1_0xe060170", 0, 9)
            add_scroll_target(127, "VB_ddd_1_0xe060200", 0, 11)
            add_scroll_target(127, "VB_ddd_1_0xe0602b0", 0, 9)
            add_scroll_target(127, "VB_ddd_1_0xe060340", 0, 3)
            -- Count: 96

            add_scroll_target(128, "VB_ddd_1_0xe05fe00", 0, 9) -- Start VB
            add_scroll_target(128, "VB_ddd_1_0xe05fe90", 0, 11)
            add_scroll_target(128, "VB_ddd_1_0xe05ff40", 0, 9)
            add_scroll_target(128, "VB_ddd_1_0xe05ffd0", 0, 3)
            add_scroll_target(128, "VB_ddd_1_0xe060170", 0, 9)
            add_scroll_target(128, "VB_ddd_1_0xe060200", 0, 11)
            add_scroll_target(128, "VB_ddd_1_0xe0602b0", 0, 9)
            add_scroll_target(128, "VB_ddd_1_0xe060340", 0, 3)
            -- Count: 64

            add_scroll_target(129, "VB_ddd_1_0xe060170", 0, 9) -- Start VB
            add_scroll_target(129, "VB_ddd_1_0xe060200", 0, 11)
            add_scroll_target(129, "VB_ddd_1_0xe0602b0", 0, 9)
            add_scroll_target(129, "VB_ddd_1_0xe060340", 0, 3)
            -- Count: 32

            add_scroll_target(130, "VB_ddd_1_0xe07b160", 0, 15) -- Start VB
            add_scroll_target(130, "VB_ddd_1_0xe07b250", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07b340", 0, 13)
            add_scroll_target(130, "VB_ddd_1_0xe07b410", 0, 13)
            add_scroll_target(130, "VB_ddd_1_0xe07b4e0", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07b5d0", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07b6c0", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07b7b0", 0, 13)
            add_scroll_target(130, "VB_ddd_1_0xe07b880", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07b970", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07ba60", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07bb50", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07bc40", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07bd30", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07be20", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07bf10", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07c000", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07c0f0", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07c1e0", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07c2d0", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07c3c0", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07c4b0", 0, 13)
            add_scroll_target(130, "VB_ddd_1_0xe07c580", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07c670", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07c760", 0, 13)
            add_scroll_target(130, "VB_ddd_1_0xe07c830", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07c920", 0, 13)
            add_scroll_target(130, "VB_ddd_1_0xe07c9f0", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07cae0", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07cbd0", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07ccc0", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07cdb0", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07cea0", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07cf90", 0, 13)
            add_scroll_target(130, "VB_ddd_1_0xe07d060", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07d150", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07d240", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07d330", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07d420", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07d510", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07d600", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07d6f0", 0, 13)
            add_scroll_target(130, "VB_ddd_1_0xe07d7c0", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07d8b0", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07d9a0", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07da90", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07db80", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07dc70", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07dd60", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07de50", 0, 13)
            add_scroll_target(130, "VB_ddd_1_0xe07df20", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07e010", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07e100", 0, 13)
            add_scroll_target(130, "VB_ddd_1_0xe07e1d0", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07e2c0", 0, 13)
            add_scroll_target(130, "VB_ddd_1_0xe07e390", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07e480", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07e570", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07e660", 0, 13)
            add_scroll_target(130, "VB_ddd_1_0xe07e730", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07e820", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07e910", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07ea00", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07eaf0", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07ebe0", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07ecd0", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07edc0", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07eeb0", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07efa0", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07f090", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07f180", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07f270", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07f360", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07f450", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07f540", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07f630", 0, 15)
            add_scroll_target(130, "VB_ddd_1_0xe07f720", 0, 12)
            -- Count: 1128

            add_scroll_target(131, "VB_ddd_1_0xe080d60", 0, 4) -- Start VB
            -- Count: 4
            ddd_1_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_WF and np.currAreaIndex == 1 then
        if not wf_1_scroll then
            add_scroll_target(132, "VB_wf_1_0xe04b590", 0, 6) -- Start VB
            -- Count: 6
            wf_1_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_WF and np.currAreaIndex == 2 then
        if not wf_2_scroll then
            add_scroll_target(133, "VB_wf_2_0xe00d600", 0, 4) -- Start VB
            -- Count: 4
            wf_2_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_CASTLE_COURTYARD and np.currAreaIndex == 1 then
        if not castle_courtyard_1_scroll then
            add_scroll_target(134, "VB_castle_courtyard_1_0xe037220", 0, 10) -- Start VB
            add_scroll_target(134, "VB_castle_courtyard_1_0xe0372c0", 0, 11)
            add_scroll_target(134, "VB_castle_courtyard_1_0xe037370", 0, 11)
            add_scroll_target(134, "VB_castle_courtyard_1_0xe037420", 0, 9)
            add_scroll_target(134, "VB_castle_courtyard_1_0xe0374b0", 0, 11)
            add_scroll_target(134, "VB_castle_courtyard_1_0xe037560", 0, 11)
            add_scroll_target(134, "VB_castle_courtyard_1_0xe037610", 0, 11)
            add_scroll_target(134, "VB_castle_courtyard_1_0xe0376c0", 0, 10)
            -- Count: 84

            add_scroll_target(135, "VB_castle_courtyard_1_0xe046760", 0, 11) -- Start VB
            add_scroll_target(135, "VB_castle_courtyard_1_0xe046810", 0, 11)
            add_scroll_target(135, "VB_castle_courtyard_1_0xe0468c0", 0, 11)
            add_scroll_target(135, "VB_castle_courtyard_1_0xe046970", 0, 10)
            add_scroll_target(135, "VB_castle_courtyard_1_0xe046a10", 0, 10)
            add_scroll_target(135, "VB_castle_courtyard_1_0xe046ab0", 0, 10)
            add_scroll_target(135, "VB_castle_courtyard_1_0xe046b50", 0, 9)
            add_scroll_target(135, "VB_castle_courtyard_1_0xe046be0", 0, 8)
            add_scroll_target(135, "VB_castle_courtyard_1_0xe046c60", 0, 6)
            -- Count: 86

            add_scroll_target(136, "VB_castle_courtyard_1_0xe049df0", 0, 15) -- Start VB
            add_scroll_target(136, "VB_castle_courtyard_1_0xe049ee0", 0, 15)
            add_scroll_target(136, "VB_castle_courtyard_1_0xe049fd0", 0, 15)
            add_scroll_target(136, "VB_castle_courtyard_1_0xe04a0c0", 0, 15)
            add_scroll_target(136, "VB_castle_courtyard_1_0xe04a1b0", 0, 15)
            add_scroll_target(136, "VB_castle_courtyard_1_0xe04a2a0", 0, 15)
            add_scroll_target(136, "VB_castle_courtyard_1_0xe04a390", 0, 15)
            add_scroll_target(136, "VB_castle_courtyard_1_0xe04a480", 0, 15)
            add_scroll_target(136, "VB_castle_courtyard_1_0xe04a570", 0, 15)
            add_scroll_target(136, "VB_castle_courtyard_1_0xe04a660", 0, 15)
            add_scroll_target(136, "VB_castle_courtyard_1_0xe04a750", 0, 12)
            -- Count: 162
            castle_courtyard_1_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_CASTLE_COURTYARD and np.currAreaIndex == 2 then
        if not castle_courtyard_2_scroll then
            add_scroll_target(137, "VB_castle_courtyard_2_0xe005910", 0, 7) -- Start VB
            add_scroll_target(137, "VB_castle_courtyard_2_0xe005980", 0, 8)
            add_scroll_target(137, "VB_castle_courtyard_2_0xe005a00", 0, 7)
            add_scroll_target(137, "VB_castle_courtyard_2_0xe005a70", 0, 8)
            add_scroll_target(137, "VB_castle_courtyard_2_0xe005af0", 0, 9)
            add_scroll_target(137, "VB_castle_courtyard_2_0xe005b80", 0, 8)
            add_scroll_target(137, "VB_castle_courtyard_2_0xe005c00", 0, 7)
            add_scroll_target(137, "VB_castle_courtyard_2_0xe005c70", 0, 7)
            add_scroll_target(137, "VB_castle_courtyard_2_0xe005ce0", 0, 7)
            add_scroll_target(137, "VB_castle_courtyard_2_0xe005d50", 0, 10)
            add_scroll_target(137, "VB_castle_courtyard_2_0xe005df0", 0, 10)
            add_scroll_target(137, "VB_castle_courtyard_2_0xe005e90", 0, 7)
            add_scroll_target(137, "VB_castle_courtyard_2_0xe005f00", 0, 9)
            add_scroll_target(137, "VB_castle_courtyard_2_0xe005f90", 0, 8)
            add_scroll_target(137, "VB_castle_courtyard_2_0xe006010", 0, 8)
            add_scroll_target(137, "VB_castle_courtyard_2_0xe006090", 0, 10)
            add_scroll_target(137, "VB_castle_courtyard_2_0xe006130", 0, 8)
            add_scroll_target(137, "VB_castle_courtyard_2_0xe0061b0", 0, 9)
            add_scroll_target(137, "VB_castle_courtyard_2_0xe006240", 0, 8)
            add_scroll_target(137, "VB_castle_courtyard_2_0xe0062c0", 0, 9)
            add_scroll_target(137, "VB_castle_courtyard_2_0xe006350", 0, 8)
            add_scroll_target(137, "VB_castle_courtyard_2_0xe0063d0", 0, 7)
            add_scroll_target(137, "VB_castle_courtyard_2_0xe006440", 0, 7)
            add_scroll_target(137, "VB_castle_courtyard_2_0xe0064b0", 0, 8)
            add_scroll_target(137, "VB_castle_courtyard_2_0xe006530", 0, 8)
            add_scroll_target(137, "VB_castle_courtyard_2_0xe0065b0", 0, 10)
            add_scroll_target(137, "VB_castle_courtyard_2_0xe006650", 0, 3)
            -- Count: 215

            add_scroll_target(138, "VB_castle_courtyard_2_0xe006680", 0, 4) -- Start VB
            -- Count: 4
            castle_courtyard_2_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_PSS and np.currAreaIndex == 2 then
        if not pss_2_scroll then
            add_scroll_target(139, "VB_pss_2_0xe03df60", 0, 10) -- Start VB
            add_scroll_target(139, "VB_pss_2_0xe03e000", 0, 11)
            add_scroll_target(139, "VB_pss_2_0xe03e0b0", 0, 11)
            add_scroll_target(139, "VB_pss_2_0xe03e160", 0, 9)
            add_scroll_target(139, "VB_pss_2_0xe03e1f0", 0, 11)
            add_scroll_target(139, "VB_pss_2_0xe03e2a0", 0, 11)
            add_scroll_target(139, "VB_pss_2_0xe03e350", 0, 11)
            add_scroll_target(139, "VB_pss_2_0xe03e400", 0, 10)
            -- Count: 84

            add_scroll_target(140, "VB_pss_2_0xe048720", 0, 11) -- Start VB
            add_scroll_target(140, "VB_pss_2_0xe0487d0", 0, 11)
            add_scroll_target(140, "VB_pss_2_0xe048880", 0, 11)
            add_scroll_target(140, "VB_pss_2_0xe048930", 0, 10)
            add_scroll_target(140, "VB_pss_2_0xe0489d0", 0, 10)
            add_scroll_target(140, "VB_pss_2_0xe048a70", 0, 10)
            add_scroll_target(140, "VB_pss_2_0xe048b10", 0, 9)
            add_scroll_target(140, "VB_pss_2_0xe048ba0", 0, 8)
            add_scroll_target(140, "VB_pss_2_0xe048c20", 0, 6)
            -- Count: 86

            add_scroll_target(141, "VB_pss_2_0xe065f10", 0, 11) -- Start VB
            add_scroll_target(141, "VB_pss_2_0xe065fc0", 0, 3)
            -- Count: 14

            add_scroll_target(142, "VB_pss_2_0xe05f400", 0, 15) -- Start VB
            add_scroll_target(142, "VB_pss_2_0xe05f4f0", 0, 15)
            add_scroll_target(142, "VB_pss_2_0xe05f5e0", 0, 15)
            add_scroll_target(142, "VB_pss_2_0xe05f6d0", 0, 15)
            add_scroll_target(142, "VB_pss_2_0xe05f7c0", 0, 15)
            add_scroll_target(142, "VB_pss_2_0xe05f8b0", 0, 15)
            add_scroll_target(142, "VB_pss_2_0xe05f9a0", 0, 15)
            add_scroll_target(142, "VB_pss_2_0xe05fa90", 0, 15)
            add_scroll_target(142, "VB_pss_2_0xe05fb80", 0, 15)
            add_scroll_target(142, "VB_pss_2_0xe05fc70", 0, 15)
            add_scroll_target(142, "VB_pss_2_0xe05fd60", 0, 12)
            -- Count: 162

            add_scroll_target(143, "VB_pss_2_0xe04a4c0", 0, 8) -- Start VB
            add_scroll_target(143, "VB_pss_2_0xe04a540", 0, 11)
            add_scroll_target(143, "VB_pss_2_0xe04a5f0", 0, 9)
            add_scroll_target(143, "VB_pss_2_0xe04a680", 0, 13)
            add_scroll_target(143, "VB_pss_2_0xe04a750", 0, 9)
            add_scroll_target(143, "VB_pss_2_0xe04a7e0", 0, 10)
            add_scroll_target(143, "VB_pss_2_0xe04a880", 0, 10)
            add_scroll_target(143, "VB_pss_2_0xe04a920", 0, 11)
            add_scroll_target(143, "VB_pss_2_0xe04a9d0", 0, 8)
            add_scroll_target(143, "VB_pss_2_0xe04aa50", 0, 9)
            add_scroll_target(143, "VB_pss_2_0xe04aae0", 0, 11)
            add_scroll_target(143, "VB_pss_2_0xe04ab90", 0, 9)
            add_scroll_target(143, "VB_pss_2_0xe04ac20", 0, 11)
            add_scroll_target(143, "VB_pss_2_0xe04acd0", 0, 7)
            add_scroll_target(143, "VB_pss_2_0xe04ad40", 0, 9)
            add_scroll_target(143, "VB_pss_2_0xe04add0", 0, 7)
            -- Count: 152
            pss_2_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_PSS and np.currAreaIndex == 3 then
        if not pss_3_scroll then
            add_scroll_target(144, "VB_pss_3_0xe056080", 0, 11) -- Start VB
            add_scroll_target(144, "VB_pss_3_0xe056130", 0, 11)
            add_scroll_target(144, "VB_pss_3_0xe0561e0", 0, 11)
            add_scroll_target(144, "VB_pss_3_0xe056290", 0, 8)
            add_scroll_target(144, "VB_pss_3_0xe056310", 0, 9)
            add_scroll_target(144, "VB_pss_3_0xe0563a0", 0, 11)
            add_scroll_target(144, "VB_pss_3_0xe056450", 0, 11)
            add_scroll_target(144, "VB_pss_3_0xe056500", 0, 3)
            -- Count: 75

            add_scroll_target(145, "VB_pss_3_0xe05b000", 0, 7) -- Start VB
            add_scroll_target(145, "VB_pss_3_0xe05b070", 0, 6)
            -- Count: 13

            add_scroll_target(146, "VB_pss_3_0xe05be50", 0, 7) -- Start VB
            add_scroll_target(146, "VB_pss_3_0xe05bec0", 0, 3)
            -- Count: 10

            add_scroll_target(147, "VB_pss_3_0xe05dc70", 0, 11) -- Start VB
            add_scroll_target(147, "VB_pss_3_0xe05dd20", 0, 9)
            add_scroll_target(147, "VB_pss_3_0xe05ddb0", 0, 10)
            add_scroll_target(147, "VB_pss_3_0xe05de50", 0, 10)
            add_scroll_target(147, "VB_pss_3_0xe05def0", 0, 11)
            add_scroll_target(147, "VB_pss_3_0xe05dfa0", 0, 11)
            add_scroll_target(147, "VB_pss_3_0xe05e050", 0, 10)
            add_scroll_target(147, "VB_pss_3_0xe05e0f0", 0, 9)
            add_scroll_target(147, "VB_pss_3_0xe05e180", 0, 11)
            add_scroll_target(147, "VB_pss_3_0xe05e230", 0, 11)
            add_scroll_target(147, "VB_pss_3_0xe05e2e0", 0, 13)
            add_scroll_target(147, "VB_pss_3_0xe05e3b0", 0, 10)
            add_scroll_target(147, "VB_pss_3_0xe05e450", 0, 7)
            add_scroll_target(147, "VB_pss_3_0xe05e4c0", 0, 11)
            add_scroll_target(147, "VB_pss_3_0xe05e570", 0, 11)
            add_scroll_target(147, "VB_pss_3_0xe05e620", 0, 10)
            add_scroll_target(147, "VB_pss_3_0xe05e6c0", 0, 11)
            add_scroll_target(147, "VB_pss_3_0xe05e770", 0, 8)
            add_scroll_target(147, "VB_pss_3_0xe05e7f0", 0, 12)
            add_scroll_target(147, "VB_pss_3_0xe05e8b0", 0, 8)
            add_scroll_target(147, "VB_pss_3_0xe05e930", 0, 10)
            add_scroll_target(147, "VB_pss_3_0xe05e9d0", 0, 11)
            add_scroll_target(147, "VB_pss_3_0xe05ea80", 0, 9)
            add_scroll_target(147, "VB_pss_3_0xe05eb10", 0, 9)
            add_scroll_target(147, "VB_pss_3_0xe05eba0", 0, 11)
            add_scroll_target(147, "VB_pss_3_0xe05ec50", 0, 7)
            add_scroll_target(147, "VB_pss_3_0xe05ecc0", 0, 11)
            add_scroll_target(147, "VB_pss_3_0xe05ed70", 0, 11)
            add_scroll_target(147, "VB_pss_3_0xe05ee20", 0, 11)
            add_scroll_target(147, "VB_pss_3_0xe05eed0", 0, 8)
            add_scroll_target(147, "VB_pss_3_0xe05ef50", 0, 8)
            add_scroll_target(147, "VB_pss_3_0xe05efd0", 0, 9)
            add_scroll_target(147, "VB_pss_3_0xe05f060", 0, 8)
            add_scroll_target(147, "VB_pss_3_0xe05f0e0", 0, 8)
            add_scroll_target(147, "VB_pss_3_0xe05f160", 0, 13)
            add_scroll_target(147, "VB_pss_3_0xe05f230", 0, 6)
            -- Count: 354

            add_scroll_target(148, "VB_pss_3_0xe05fed0", 0, 11) -- Start VB
            add_scroll_target(148, "VB_pss_3_0xe05ff80", 0, 10)
            add_scroll_target(148, "VB_pss_3_0xe060020", 0, 13)
            add_scroll_target(148, "VB_pss_3_0xe0600f0", 0, 3)
            -- Count: 37

            add_scroll_target(149, "VB_pss_3_0xe0674a0", 0, 15) -- Start VB
            add_scroll_target(149, "VB_pss_3_0xe067590", 0, 3)
            -- Count: 18
            pss_3_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_PSS and np.currAreaIndex == 4 then
        if not pss_4_scroll then
            add_scroll_target(150, "VB_pss_4_0xe001290", 0, 9) -- Start VB
            add_scroll_target(150, "VB_pss_4_0xe001320", 0, 13)
            add_scroll_target(150, "VB_pss_4_0xe0013f0", 0, 5)
            -- Count: 27
            pss_4_scroll = true
        end
    end


    if np.currLevelNum == LEVEL_COTMC and np.currAreaIndex == 1 then
        if not cotmc_1_scroll then
            add_scroll_target(151, "VB_cotmc_1_0xe00d3a0", 0, 10) -- Start VB
            add_scroll_target(151, "VB_cotmc_1_0xe00d440", 0, 11)
            add_scroll_target(151, "VB_cotmc_1_0xe00d4f0", 0, 4)
            -- Count: 25
            cotmc_1_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_TOTWC and np.currAreaIndex == 1 then
        if not totwc_1_scroll then
            add_scroll_target(152, "VB_totwc_1_0xe0891e0", 0, 11) -- Start VB
            add_scroll_target(152, "VB_totwc_1_0xe089290", 0, 10)
            add_scroll_target(152, "VB_totwc_1_0xe089330", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe0893e0", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe089490", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe089540", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe0895f0", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe0896a0", 0, 13)
            add_scroll_target(152, "VB_totwc_1_0xe089770", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe089820", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe0898d0", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe089980", 0, 9)
            add_scroll_target(152, "VB_totwc_1_0xe089a10", 0, 10)
            add_scroll_target(152, "VB_totwc_1_0xe089ab0", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe089b60", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe089c10", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe089cc0", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe089d70", 0, 10)
            add_scroll_target(152, "VB_totwc_1_0xe089e10", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe089ec0", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe089f70", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08a020", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08a0d0", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08a180", 0, 13)
            add_scroll_target(152, "VB_totwc_1_0xe08a250", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08a300", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08a3b0", 0, 13)
            add_scroll_target(152, "VB_totwc_1_0xe08a480", 0, 9)
            add_scroll_target(152, "VB_totwc_1_0xe08a510", 0, 9)
            add_scroll_target(152, "VB_totwc_1_0xe08a5a0", 0, 13)
            add_scroll_target(152, "VB_totwc_1_0xe08a670", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08a720", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08a7d0", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08a880", 0, 10)
            add_scroll_target(152, "VB_totwc_1_0xe08a920", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08a9d0", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08aa80", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08ab30", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08abe0", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08ac90", 0, 13)
            add_scroll_target(152, "VB_totwc_1_0xe08ad60", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08ae10", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08aec0", 0, 13)
            add_scroll_target(152, "VB_totwc_1_0xe08af90", 0, 9)
            add_scroll_target(152, "VB_totwc_1_0xe08b020", 0, 9)
            add_scroll_target(152, "VB_totwc_1_0xe08b0b0", 0, 13)
            add_scroll_target(152, "VB_totwc_1_0xe08b180", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08b230", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08b2e0", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08b390", 0, 10)
            add_scroll_target(152, "VB_totwc_1_0xe08b430", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08b4e0", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08b590", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08b640", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08b6f0", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08b7a0", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08b850", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08b900", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08b9b0", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08ba60", 0, 10)
            add_scroll_target(152, "VB_totwc_1_0xe08bb00", 0, 9)
            add_scroll_target(152, "VB_totwc_1_0xe08bb90", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08bc40", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08bcf0", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08bda0", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08be50", 0, 10)
            add_scroll_target(152, "VB_totwc_1_0xe08bef0", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08bfa0", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08c050", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08c100", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08c1b0", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08c260", 0, 13)
            add_scroll_target(152, "VB_totwc_1_0xe08c330", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08c3e0", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08c490", 0, 13)
            add_scroll_target(152, "VB_totwc_1_0xe08c560", 0, 10)
            add_scroll_target(152, "VB_totwc_1_0xe08c600", 0, 9)
            add_scroll_target(152, "VB_totwc_1_0xe08c690", 0, 13)
            add_scroll_target(152, "VB_totwc_1_0xe08c760", 0, 11)
            add_scroll_target(152, "VB_totwc_1_0xe08c810", 0, 11)
            -- Count: 878
            totwc_1_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_BOWSER_1 and np.currAreaIndex == 1 then
        if not bowser_1_1_scroll then
            add_scroll_target(153, "VB_bowser_1_1_0xe0037c0", 0, 13) -- Start VB
            add_scroll_target(153, "VB_bowser_1_1_0xe003890", 0, 11)
            add_scroll_target(153, "VB_bowser_1_1_0xe003940", 0, 13)
            add_scroll_target(153, "VB_bowser_1_1_0xe003a10", 0, 13)
            -- Count: 50

            add_scroll_target(154, "VB_bowser_1_1_0xe004980", 0, 13) -- Start VB
            add_scroll_target(154, "VB_bowser_1_1_0xe004a50", 0, 11)
            add_scroll_target(154, "VB_bowser_1_1_0xe004b00", 0, 13)
            add_scroll_target(154, "VB_bowser_1_1_0xe004bd0", 0, 13)
            -- Count: 50

            add_scroll_target(155, "VB_bowser_1_1_0xe005ba0", 0, 13) -- Start VB
            add_scroll_target(155, "VB_bowser_1_1_0xe005c70", 0, 11)
            add_scroll_target(155, "VB_bowser_1_1_0xe005d20", 0, 13)
            add_scroll_target(155, "VB_bowser_1_1_0xe005df0", 0, 13)
            -- Count: 50
            bowser_1_1_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_WMOTR and np.currAreaIndex == 1 then
        if not wmotr_1_scroll then
            add_scroll_target(156, "VB_wmotr_1_0xe014a60", 0, 11) -- Start VB
            add_scroll_target(156, "VB_wmotr_1_0xe014b10", 0, 11)
            add_scroll_target(156, "VB_wmotr_1_0xe014bc0", 0, 11)
            add_scroll_target(156, "VB_wmotr_1_0xe014c70", 0, 11)
            add_scroll_target(156, "VB_wmotr_1_0xe014d20", 0, 11)
            add_scroll_target(156, "VB_wmotr_1_0xe014dd0", 0, 9)
            add_scroll_target(156, "VB_wmotr_1_0xe014e60", 0, 10)
            add_scroll_target(156, "VB_wmotr_1_0xe014f00", 0, 11)
            add_scroll_target(156, "VB_wmotr_1_0xe014fb0", 0, 11)
            add_scroll_target(156, "VB_wmotr_1_0xe015060", 0, 9)
            add_scroll_target(156, "VB_wmotr_1_0xe0150f0", 0, 9)
            add_scroll_target(156, "VB_wmotr_1_0xe015180", 0, 13)
            add_scroll_target(156, "VB_wmotr_1_0xe015250", 0, 9)
            add_scroll_target(156, "VB_wmotr_1_0xe0152e0", 0, 11)
            add_scroll_target(156, "VB_wmotr_1_0xe015390", 0, 11)
            add_scroll_target(156, "VB_wmotr_1_0xe015440", 0, 11)
            add_scroll_target(156, "VB_wmotr_1_0xe0154f0", 0, 13)
            add_scroll_target(156, "VB_wmotr_1_0xe0155c0", 0, 11)
            add_scroll_target(156, "VB_wmotr_1_0xe015670", 0, 11)
            add_scroll_target(156, "VB_wmotr_1_0xe015720", 0, 9)
            add_scroll_target(156, "VB_wmotr_1_0xe0157b0", 0, 11)
            add_scroll_target(156, "VB_wmotr_1_0xe015860", 0, 10)
            add_scroll_target(156, "VB_wmotr_1_0xe015900", 0, 3)
            -- Count: 237

            add_scroll_target(157, "VB_wmotr_1_0xe016040", 0, 11) -- Start VB
            add_scroll_target(157, "VB_wmotr_1_0xe0160f0", 0, 11)
            add_scroll_target(157, "VB_wmotr_1_0xe0161a0", 0, 10)
            add_scroll_target(157, "VB_wmotr_1_0xe016240", 0, 9)
            add_scroll_target(157, "VB_wmotr_1_0xe0162d0", 0, 11)
            add_scroll_target(157, "VB_wmotr_1_0xe016380", 0, 11)
            add_scroll_target(157, "VB_wmotr_1_0xe016430", 0, 8)
            -- Count: 71

            add_scroll_target(158, "VB_wmotr_1_0xe0168a0", 0, 11) -- Start VB
            add_scroll_target(158, "VB_wmotr_1_0xe016950", 0, 11)
            add_scroll_target(158, "VB_wmotr_1_0xe016a00", 0, 11)
            add_scroll_target(158, "VB_wmotr_1_0xe016ab0", 0, 11)
            add_scroll_target(158, "VB_wmotr_1_0xe016b60", 0, 13)
            add_scroll_target(158, "VB_wmotr_1_0xe016c30", 0, 7)
            add_scroll_target(158, "VB_wmotr_1_0xe016ca0", 0, 13)
            add_scroll_target(158, "VB_wmotr_1_0xe016d70", 0, 13)
            add_scroll_target(158, "VB_wmotr_1_0xe016e40", 0, 13)
            add_scroll_target(158, "VB_wmotr_1_0xe016f10", 0, 9)
            add_scroll_target(158, "VB_wmotr_1_0xe016fa0", 0, 11)
            add_scroll_target(158, "VB_wmotr_1_0xe017050", 0, 13)
            add_scroll_target(158, "VB_wmotr_1_0xe017120", 0, 9)
            add_scroll_target(158, "VB_wmotr_1_0xe0171b0", 0, 11)
            add_scroll_target(158, "VB_wmotr_1_0xe017260", 0, 11)
            add_scroll_target(158, "VB_wmotr_1_0xe017310", 0, 11)
            add_scroll_target(158, "VB_wmotr_1_0xe0173c0", 0, 10)
            add_scroll_target(158, "VB_wmotr_1_0xe017460", 0, 11)
            add_scroll_target(158, "VB_wmotr_1_0xe017510", 0, 13)
            add_scroll_target(158, "VB_wmotr_1_0xe0175e0", 0, 11)
            add_scroll_target(158, "VB_wmotr_1_0xe017690", 0, 9)
            add_scroll_target(158, "VB_wmotr_1_0xe017720", 0, 12)
            add_scroll_target(158, "VB_wmotr_1_0xe0177e0", 0, 9)
            add_scroll_target(158, "VB_wmotr_1_0xe017870", 0, 5)
            -- Count: 258

            add_scroll_target(159, "VB_wmotr_1_0xe01a210", 0, 4) -- Start VB
            -- Count: 4
            wmotr_1_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_BOWSER_2 and np.currAreaIndex == 1 then
        if not bowser_2_1_scroll then
            add_scroll_target(160, "VB_bowser_2_1_0xe00b430", 0, 7) -- Start VB
            add_scroll_target(160, "VB_bowser_2_1_0xe00b4a0", 0, 11)
            add_scroll_target(160, "VB_bowser_2_1_0xe00b550", 0, 9)
            add_scroll_target(160, "VB_bowser_2_1_0xe00b5e0", 0, 13)
            add_scroll_target(160, "VB_bowser_2_1_0xe00b6b0", 0, 9)
            add_scroll_target(160, "VB_bowser_2_1_0xe00b740", 0, 7)
            add_scroll_target(160, "VB_bowser_2_1_0xe00b7b0", 0, 11)
            add_scroll_target(160, "VB_bowser_2_1_0xe00b860", 0, 9)
            add_scroll_target(160, "VB_bowser_2_1_0xe00b8f0", 0, 12)
            add_scroll_target(160, "VB_bowser_2_1_0xe00b9b0", 0, 12)
            add_scroll_target(160, "VB_bowser_2_1_0xe00ba70", 0, 11)
            add_scroll_target(160, "VB_bowser_2_1_0xe00bb20", 0, 11)
            add_scroll_target(160, "VB_bowser_2_1_0xe00bbd0", 0, 9)
            add_scroll_target(160, "VB_bowser_2_1_0xe00bc60", 0, 11)
            add_scroll_target(160, "VB_bowser_2_1_0xe00bd10", 0, 9)
            add_scroll_target(160, "VB_bowser_2_1_0xe00bda0", 0, 4)
            -- Count: 155

            add_scroll_target(161, "VB_bowser_2_1_0xe00f120", 0, 4) -- Start VB
            -- Count: 4
            bowser_2_1_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_TTM and np.currAreaIndex == 1 then
        if not ttm_1_scroll then
            add_scroll_target(162, "VB_ttm_1_0xe074f00", 0, 13) -- Start VB
            add_scroll_target(162, "VB_ttm_1_0xe074fd0", 0, 12)
            add_scroll_target(162, "VB_ttm_1_0xe075090", 0, 12)
            add_scroll_target(162, "VB_ttm_1_0xe075150", 0, 13)
            add_scroll_target(162, "VB_ttm_1_0xe075220", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe0752d0", 0, 12)
            add_scroll_target(162, "VB_ttm_1_0xe075390", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe075440", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe0754f0", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe0755a0", 0, 13)
            add_scroll_target(162, "VB_ttm_1_0xe075670", 0, 13)
            add_scroll_target(162, "VB_ttm_1_0xe075740", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe0757f0", 0, 14)
            add_scroll_target(162, "VB_ttm_1_0xe0758d0", 0, 12)
            add_scroll_target(162, "VB_ttm_1_0xe075990", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe075a40", 0, 12)
            add_scroll_target(162, "VB_ttm_1_0xe075b00", 0, 13)
            add_scroll_target(162, "VB_ttm_1_0xe075bd0", 0, 13)
            add_scroll_target(162, "VB_ttm_1_0xe075ca0", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe075d50", 0, 13)
            add_scroll_target(162, "VB_ttm_1_0xe075e20", 0, 14)
            add_scroll_target(162, "VB_ttm_1_0xe075f00", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe075fb0", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe076060", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe076110", 0, 9)
            add_scroll_target(162, "VB_ttm_1_0xe0761a0", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe076250", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe076300", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe0763b0", 0, 13)
            add_scroll_target(162, "VB_ttm_1_0xe076480", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe076530", 0, 9)
            add_scroll_target(162, "VB_ttm_1_0xe0765c0", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe076670", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe076720", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe0767d0", 0, 13)
            add_scroll_target(162, "VB_ttm_1_0xe0768a0", 0, 9)
            add_scroll_target(162, "VB_ttm_1_0xe076930", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe0769e0", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe076a90", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe076b40", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe076bf0", 0, 9)
            add_scroll_target(162, "VB_ttm_1_0xe076c80", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe076d30", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe076de0", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe076e90", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe076f40", 0, 11)
            add_scroll_target(162, "VB_ttm_1_0xe076ff0", 0, 4)
            -- Count: 531

            add_scroll_target(163, "VB_ttm_1_0xe0632a0", 0, 11) -- Start VB
            add_scroll_target(163, "VB_ttm_1_0xe063350", 0, 5)
            -- Count: 16

            add_scroll_target(164, "VB_ttm_1_0xe06b210", 0, 4) -- Start VB
            -- Count: 4
            ttm_1_scroll = true
        end
    end

    if np.currLevelNum == LEVEL_TTM and np.currAreaIndex == 2 then
        if not ttm_2_scroll then
            add_scroll_target(165, "VB_ttm_2_0xe0064b0", 0, 9) -- Start VB
            add_scroll_target(165, "VB_ttm_2_0xe006540", 0, 13)
            add_scroll_target(165, "VB_ttm_2_0xe006610", 0, 9)
            add_scroll_target(165, "VB_ttm_2_0xe0066a0", 0, 11)
            add_scroll_target(165, "VB_ttm_2_0xe006750", 0, 11)
            add_scroll_target(165, "VB_ttm_2_0xe006800", 0, 11)
            add_scroll_target(165, "VB_ttm_2_0xe0068b0", 0, 13)
            add_scroll_target(165, "VB_ttm_2_0xe006980", 0, 4)
            -- Count: 81

            add_scroll_target(166, "VB_ttm_2_0xe008450", 0, 11) -- Start VB
            add_scroll_target(166, "VB_ttm_2_0xe008500", 0, 13)
            add_scroll_target(166, "VB_ttm_2_0xe0085d0", 0, 14)
            add_scroll_target(166, "VB_ttm_2_0xe0086b0", 0, 13)
            add_scroll_target(166, "VB_ttm_2_0xe008780", 0, 11)
            add_scroll_target(166, "VB_ttm_2_0xe008830", 0, 13)
            add_scroll_target(166, "VB_ttm_2_0xe008900", 0, 11)
            add_scroll_target(166, "VB_ttm_2_0xe0089b0", 0, 14)
            add_scroll_target(166, "VB_ttm_2_0xe008a90", 0, 11)
            add_scroll_target(166, "VB_ttm_2_0xe008b40", 0, 13)
            add_scroll_target(166, "VB_ttm_2_0xe008c10", 0, 14)
            add_scroll_target(166, "VB_ttm_2_0xe008cf0", 0, 13)
            add_scroll_target(166, "VB_ttm_2_0xe008dc0", 0, 11)
            add_scroll_target(166, "VB_ttm_2_0xe008e70", 0, 13)
            add_scroll_target(166, "VB_ttm_2_0xe008f40", 0, 11)
            add_scroll_target(166, "VB_ttm_2_0xe008ff0", 0, 14)
            -- Count: 200
            ttm_2_scroll = true
        end
    end
end

hook_event(HOOK_ON_LEVEL_INIT, cg1_scrolls)
hook_event(HOOK_ON_WARP, scrollings)