library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lfsr_prng is
    Port (
        clk   : in  STD_LOGIC;
        reset : in  STD_LOGIC;
        q     : out STD_LOGIC_VECTOR(3 downto 0)
    );
end lfsr_prng;

architecture Behavioral of lfsr_prng is
    signal reg : STD_LOGIC_VECTOR(3 downto 0) := "0001";
begin

    process(clk, reset)
        variable feedback : STD_LOGIC;
    begin
        if reset = '1' then
            reg <= "0001";
        elsif rising_edge(clk) then
            -- ✅ FIXED taps: x^4 + x + 1
            feedback := reg(3) xor reg(0);

            reg <= feedback & reg(3 downto 1);
        end if;
    end process;

    q <= reg;

end Behavioral;