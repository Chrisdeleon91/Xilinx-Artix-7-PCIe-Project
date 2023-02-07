library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity register_files is
    port(
	    clock        :in std_logic;
		reset        :in std_logic;
	
	
        addr_regs      :in std_logic_vector ( 31 downto 0 );
		read_regs      :in std_logic;
		write_regs     :in std_logic;
		readdata_regs  :out std_logic_vector ( 63 downto 0 );
		writedata_regs :in std_logic_vector ( 63 downto 0 )
		
		
	);
end register_files;

architecture register_files_arch of register_files is


signal reg1:std_logic_vector ( 63 downto 0 );
signal reg2:std_logic_vector ( 63 downto 0 );
signal reg3:std_logic_vector ( 63 downto 0 );
signal reg4:std_logic_vector ( 63 downto 0 );
signal reg5:std_logic_vector ( 63 downto 0 );
signal reg6:std_logic_vector ( 63 downto 0 );
signal reg7:std_logic_vector ( 63 downto 0 );

begin



process (clock,reset,read_regs,reg1,reg2,reg3,reg4,reg5,reg6) --read
begin
    if (reset = '0') then
        readdata_regs <= (others => '0');
	elsif (rising_edge (clock)) then
        if (read_regs = '1') then
		    case addr_regs is
			    when x"00000000" => readdata_regs <= reg1;
		        when x"00000004" => readdata_regs <= reg2;
		        when x"00000008" => readdata_regs <= reg3;
		        when x"0000000C" => readdata_regs <= reg4;
		        when x"00000010" => readdata_regs <= reg5;
		        when x"00000014" => readdata_regs <= reg6;
		                                             
			    when others      => readdata_regs <= x"9876987698769876";
			
		    end case;
		end if;
	end if;
end process;


process (clock,reset,write_regs) --write
begin
    if (reset = '0') then
        reg1 <= (others => '0');
		reg2 <= (others => '0');
		reg3 <= (others => '0');
		reg4 <= (others => '0');
		reg5 <= (others => '0');
		reg6 <= (others => '0');
		
	elsif (rising_edge (clock)) then
        if (write_regs = '1') then
		    case addr_regs is
			    when x"00000000" => reg1 <= writedata_regs;
		        when x"00000004" => reg2 <= writedata_regs;
		        when x"00000008" => reg3 <= writedata_regs;
		        when x"0000000C" => reg4 <= writedata_regs;
		        when x"00000010" => reg5 <= writedata_regs;
		        when x"00000014" => reg6 <= writedata_regs;
		                                             
			    when others      => null;
			
		    end case;
		end if;
	end if;
end process;










end register_files_arch;