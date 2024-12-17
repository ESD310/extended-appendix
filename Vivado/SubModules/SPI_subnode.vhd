library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity SPI_subnode is
  Port (
        -- SPI ports
        CS      : in std_logic := '1';
        MISO    : out std_logic;
        SCK     : in std_logic;
        
        CLK     : in std_logic;
        X_pos   : in std_logic_vector(21 downto 0) := "0001111010000100100001";
        Y_pos   : in std_logic_vector(21 downto 0) := "0001111010000100100010";
        Z_pos   : in std_logic_vector(21 downto 0) := "0001111010000100100011";
        ToF     : in std_logic_vector(12 downto 0) := "0000000000000"
  );
end SPI_subnode;

architecture Behavioral of SPI_subnode is
  type state_type is (IDLE, LOAD_VECTOR, SHIFT, NEXT_VECTOR, DONE);
  signal current_state : state_type := IDLE;

  signal bit_count   : integer range 0 to 23 := 0;  -- bit counter for 24-bit transfer
  signal byte_count  : integer range 0 to 3 := 0;   -- byte counter for 3 vectors
  signal shift_out   : std_logic_vector(23 downto 0) := (others => '0');  -- shift register for transmitting
  signal miso_reg    : std_logic := '0';  -- register for MISO output

  -- To detect SCK edges
    signal sck_sync   : std_logic_vector(1 downto 0) := "00"; -- Synkroniseringsregister
    signal sck_falling: std_logic := '0'; -- Detektion af faldende flanke
    signal sck_prev    : std_logic := '1';  -- previous SCK value


begin

  -- MISO output controlled based on CS signal
  MISO <= miso_reg when CS = '0' else 'Z';  -- 'Z' state when CS is not asserted

  -- Process for detecting falling edge of SCK
process (CLK)
begin
  if rising_edge(CLK) then
    if CS = '0' then
      -- Synkroniser det asynkrone SCK
      sck_sync(0) <= SCK;
      sck_sync(1) <= sck_sync(0);

      -- Detekter faldende flanke
      sck_falling <= sck_sync(1) and not sck_sync(0);
    else
      sck_falling <= '0'; -- Reset, når CS ikke er aktiv
    end if;
  end if;
end process;

  -- Process for state transitions and bit counting, driven by CLK
  process (CLK, CS)
  begin
    if CS = '1' then
      -- Reset all state variables when CS is high (inactive)
      bit_count <= 0;
      byte_count <= 0;
      shift_out <= (others => '0');
      current_state <= IDLE;

    elsif rising_edge(CLK) then
      case current_state is
        when IDLE =>
          if CS = '0' then  -- When the chip select goes low, start communication
            current_state <= LOAD_VECTOR;
          end if;

        when LOAD_VECTOR =>
          -- Load the corresponding vector into the shift register based on the byte count
          case byte_count is
            when 0 =>
              shift_out <= "00" & X_pos;
            when 1 =>
              shift_out <= "00" & Y_pos;
            when 2 =>
              shift_out <= "00" & Z_pos;
            when 3 =>
               shift_out <= "00000000000" & ToF;
            when others =>
              shift_out <= (others => '0');  -- Default case to avoid issues
          end case;
          current_state <= SHIFT;  -- Go to the shift-out state

        when SHIFT =>
          if sck_falling = '1' then  -- On falling edge of SCK
            miso_reg <= shift_out(23);  -- Send the MSB first
            shift_out <= shift_out(22 downto 0) & '0';  -- Shift the register left
            bit_count <= bit_count + 1;

            if bit_count = 23 then  -- After 21 bits
              current_state <= NEXT_VECTOR;
              bit_count <= 0;  -- Reset bit count for the next vector
            end if;
          end if;

        when NEXT_VECTOR =>
          -- Increment byte counter, and decide whether to go to LOAD_VECTOR or DONE
          if byte_count = 3 then
            byte_count <= 0;  -- Reset byte count if all vectors are sent
            current_state <= DONE;
          else
            byte_count <= byte_count + 1;
            current_state <= LOAD_VECTOR;
          end if;

        when DONE =>
          if CS = '1' then  -- Wait for CS to go high (end of communication)
            miso_reg <= '0';
            current_state <= IDLE;
          end if;

        when others =>
          current_state <= IDLE;
      end case;
    end if;
  end process;

end Behavioral;
