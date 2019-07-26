library ieee;
use ieee.std_logic_1164.all;

entity core_msa_wrapper is
    port
    (
        clk        : in std_logic;

        worker_sel : in std_logic_vector(5 downto 0);

        data_in    : in std_logic_vector(7 downto 0);
        status_in  : in std_logic_vector(7 downto 0);

        data_out   : out std_logic_vector(7 downto 0);
        status_out : out std_logic_vector(7 downto 0)
    );
end core_msa_wrapper;

architecture behavioral of core_msa_wrapper is
    component core_hash_wrapper is
        port
        (
            clk          : in std_logic;

            worker_sel   : in std_logic_vector(4 downto 0);

            data_in      : in std_logic_vector(7 downto 0);
            status_in    : in std_logic_vector(7 downto 0);

            data_out     : out std_logic_vector(7 downto 0);
            status_out   : out std_logic_vector(7 downto 0);

            msa_val_i_16 : out std_logic_vector(31 downto 0);
            msa_val_i_15 : out std_logic_vector(31 downto 0);
            msa_val_i_7  : out std_logic_vector(31 downto 0);
            msa_val_i_2  : out std_logic_vector(31 downto 0);
            msa_val_new  : in std_logic_vector(31 downto 0)
        );
    end component;

    component msa_extender is
        port
        (
            msa_i16 : in std_logic_vector(31 downto 0);
            msa_i15 : in std_logic_vector(31 downto 0);
            msa_i7  : in std_logic_vector(31 downto 0);
            msa_i2  : in std_logic_vector(31 downto 0);

            msa_out  :  out std_logic_vector(31 downto 0)
        );
    end component;

    -- signals for the msa extender
    signal msa_i16_in  : std_logic_vector(31 downto 0) := (others => '0');
    signal msa_i15_in  : std_logic_vector(31 downto 0) := (others => '0');
    signal msa_i7_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal msa_i2_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal msa_new_out : std_logic_vector(31 downto 0) := (others => '0');

    -- signals for the core hash wrappers
    signal chw1_worker_sel : std_logic_vector(4 downto 0) := (others => '0');
    signal chw1_data_in    : std_logic_vector(7 downto 0) := (others => '0');
    signal chw1_status_in  : std_logic_vector(7 downto 0) := (others => '0');
    signal chw1_data_out   : std_logic_vector(7 downto 0) := (others => '0');
    signal chw1_status_out : std_logic_vector(7 downto 0) := (others => '0');

    signal chw1_msa_in_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_msa_in_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_msa_in_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_msa_in_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_msa_new    : std_logic_vector(31 downto 0) := (others => '0');

    signal chw2_worker_sel : std_logic_vector(4 downto 0) := (others => '0');
    signal chw2_data_in    : std_logic_vector(7 downto 0) := (others => '0');
    signal chw2_status_in  : std_logic_vector(7 downto 0) := (others => '0');
    signal chw2_data_out   : std_logic_vector(7 downto 0) := (others => '0');
    signal chw2_status_out : std_logic_vector(7 downto 0) := (others => '0');

    signal chw2_msa_in_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_msa_in_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_msa_in_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_msa_in_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_msa_new    : std_logic_vector(31 downto 0) := (others => '0');
begin

    msa_xtnd : msa_extender
        port map
        (
            msa_i16 => msa_i16_in,
            msa_i15 => msa_i15_in,
            msa_i7  => msa_i7_in,
            msa_i2  => msa_i2_in,
            msa_out => msa_new_out
        );

    chw1 : core_hash_wrapper
        port map
        (
            clk          => clk,
            worker_sel   => chw1_worker_sel,
            data_in      => chw1_data_in,
            status_in    => chw1_status_in,
            data_out     => chw1_data_out,
            status_out   => chw1_status_out,

            msa_val_i_16 => chw1_msa_in_i16,
            msa_val_i_15 => chw1_msa_in_i15,
            msa_val_i_7  => chw1_msa_in_i7,
            msa_val_i_2  => chw1_msa_in_i2,

            msa_val_new  => chw1_msa_new
        );

    chw2 : core_hash_wrapper
        port map
        (
            clk          => clk,
            worker_sel   => chw2_worker_sel,
            data_in      => chw2_data_in,
            status_in    => chw2_status_in,
            data_out     => chw2_data_out,
            status_out   => chw2_status_out,

            msa_val_i_16 => chw2_msa_in_i16,
            msa_val_i_15 => chw2_msa_in_i15,
            msa_val_i_7  => chw2_msa_in_i7,
            msa_val_i_2  => chw2_msa_in_i2,

            msa_val_new  => chw2_msa_new
        );
end behavioral;
