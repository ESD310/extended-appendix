----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2024 08:51:06 AM
-- Design Name: 
-- Module Name: Correlator_TOF - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Correlator_TOF is
    generic (
        input_size : positive := 500;
        word_size : positive := 12
    );
    Port ( 
            clk : in STD_LOGIC; -- 12 MHz clock
            start : in STD_LOGIC;
            Sample : in STD_LOGIC_VECTOR (word_size-1 downto 0);
            sample_ready : in STD_LOGIC;
            samples_to_run : in STD_LOGIC_VECTOR (15 downto 0);
            TOF_out : out STD_LOGIC_VECTOR (15 downto 0);
            TOF_ready : out STD_LOGIC;
            currentStateDebug : out std_logic_vector (3 downto 0)
            
            );
end Correlator_TOF;

architecture Behavioral of Correlator_TOF is
    type xcorr_states is (shift,multiply_1, multiply_2, summize_1, summize_2, compare,wait_4_idle, idle, stopped); -- de states
    type sample_shift_register  is array (0 to input_size-1) of std_logic_vector(word_size-1 downto 0); -- Den som kan holdes vores samples
    type xcorr_temp_result is array (0 to input_size -1) of unsigned(2*word_size-1 downto 0); --kan optimeres til log2(a*b)
    
    
    constant init_sample_shift_register : sample_shift_register := (
0 => x"800",  
1 => x"809",  2 => x"821",  3 => x"839",  4 => x"842",  5 => x"82f",  6 => x"800",  7 => x"7be",  8 => x"77e",  9 => x"758",  10 => x"75e",  11 => x"798",  12 => x"7fd",  13 => x"875",  14 => x"8dc",  15 => x"912",  16 => x"8fe",  17 => x"89e",  18 => x"804",  19 => x"758",  20 => x"6c9",  21 => x"685",  22 => x"6a5",  23 => x"72a",  24 => x"7f7",  25 => x"8d7",  26 => x"98d",  27 => x"9e1",  28 => x"9b5",  29 => x"90c",  30 => x"80d",  31 => x"6fa",  32 => x"61e",  33 => x"5ba",  34 => x"5f1",  35 => x"6bc",  36 => x"7ec",  37 => x"932",  38 => x"a34",  39 => x"aa8",  40 => x"a66",  41 => x"979",  42 => x"819",  43 => x"6a3",  44 => x"57b",  45 => x"4f7",  46 => x"542",  47 => x"650",  48 => x"7de",  49 => x"985",  50 => x"ad1",  
51 => x"b65",  52 => x"b11",  53 => x"9e4",  54 => x"829",  55 => x"653",  56 => x"4e3",  57 => x"43f",  58 => x"49b",  59 => x"5e6",  60 => x"7cd",  61 => x"9d0",  62 => x"b64",  63 => x"c18",  64 => x"bb5",  65 => x"a4d",  66 => x"83c",  67 => x"60d",  68 => x"456",  69 => x"392",  70 => x"3fc",  71 => x"57f",  72 => x"7b8",  73 => x"a13",  74 => x"beb",  75 => x"cbf",  76 => x"c4f",  77 => x"ab2",  78 => x"852",  79 => x"5ce",  80 => x"3d5",  81 => x"2f2",  82 => x"367",  83 => x"51c",  84 => x"7a2",  85 => x"a4d",  86 => x"c65",  87 => x"d59",  88 => x"cdf",  89 => x"b12",  90 => x"86a",  91 => x"599",  92 => x"361",  93 => x"25f",  94 => x"2dd",  95 => x"4bf",  96 => x"789",  97 => x"a7e",  98 => x"cd3",  99 => x"de4",  100 => x"d63",
101 => x"b6d",  102 => x"884",  103 => x"56c",  104 => x"2fb",  105 => x"1db",  106 => x"25e",  107 => x"467",  108 => x"76e",  109 => x"aa6",  110 => x"d32",  111 => x"e60",  112 => x"ddb",  113 => x"bc1",  114 => x"89f",  115 => x"548",  116 => x"2a3",  117 => x"167",  118 => x"1ed",  119 => x"416",  120 => x"752",  121 => x"ac5",  122 => x"d83",  123 => x"ecc",  124 => x"e45",  125 => x"c0e",  126 => x"8bb",  127 => x"52d",  128 => x"259",  129 => x"103",  130 => x"18a",  131 => x"3cd",  132 => x"736",  133 => x"adc",  134 => x"dc6",  135 => x"f28",  136 => x"ea2",  137 => x"c53",  138 => x"8d7",  139 => x"51a",  140 => x"21e",  141 => x"0af",  142 => x"134",  143 => x"38c",  144 => x"71a",  145 => x"aeb",  146 => x"dfa",  147 => x"f73",  148 => x"ef0",  149 => x"c90",  150 => x"8f3",
151 => x"510",  152 => x"1f0",  153 => x"06c",  154 => x"0ed",  155 => x"354",  156 => x"6fe",  157 => x"af2",  158 => x"e20",  159 => x"fae",  160 => x"f2f",  161 => x"cc3",  162 => x"90e",  163 => x"50c",  164 => x"1d1",  165 => x"039",  166 => x"0b5",  167 => x"325",  168 => x"6e4",  169 => x"af2",  170 => x"e39",  171 => x"fd9",  172 => x"f60",  173 => x"cee",  174 => x"928",  175 => x"510",  176 => x"1bf",  177 => x"017",  178 => x"08c",  179 => x"2ff",  180 => x"6cb",  181 => x"aea",  182 => x"e45",  183 => x"ff3",  184 => x"f82",  185 => x"d0f",  186 => x"940",  187 => x"51a",  188 => x"1b9",  189 => x"004",  190 => x"071",  191 => x"2e3",  192 => x"6b3",  193 => x"add",  194 => x"e44",  195 => x"fff",  196 => x"f96",  197 => x"d27",  198 => x"957",  199 => x"52a",  200 => x"1c0",
201 => x"000",  202 => x"064",  203 => x"2d0",  204 => x"69e",  205 => x"acb",  206 => x"e38",  207 => x"ffb",  208 => x"f9d",  209 => x"d36",  210 => x"96b",  211 => x"540",  212 => x"1d1",  213 => x"00b",  214 => x"064",  215 => x"2c5",  216 => x"68b",  217 => x"ab3",  218 => x"e21",  219 => x"fea",  220 => x"f96",  221 => x"d3b",  222 => x"97c",  223 => x"559",  224 => x"1ed",  225 => x"022",  226 => x"071",  227 => x"2c4",  228 => x"67b",  229 => x"a98",  230 => x"e00",  231 => x"fcd",  232 => x"f83",  233 => x"d38",  234 => x"98b",  235 => x"576",  236 => x"212",  237 => x"045",  238 => x"08a",  239 => x"2cb",  240 => x"66e",  241 => x"a79",  242 => x"dd7",  243 => x"fa4",  244 => x"f65",  245 => x"d2d",  246 => x"996",  247 => x"596",  248 => x"23f",  249 => x"073",  250 => x"0ad",
251 => x"2da",  252 => x"664",  253 => x"a58",  254 => x"da7",  255 => x"f71",  256 => x"f3d",  257 => x"d1b",  258 => x"99f",  259 => x"5b9",  260 => x"273",  261 => x"0ab",  262 => x"0da",  263 => x"2f0",  264 => x"65d",  265 => x"a34",  266 => x"d70",  267 => x"f35",  268 => x"f0b",  269 => x"d01",  270 => x"9a5",  271 => x"5dd",  272 => x"2ac",  273 => x"0eb",  274 => x"110",  275 => x"30d",  276 => x"658",  277 => x"a10",  278 => x"d34",  279 => x"ef1",  280 => x"ed2",  281 => x"ce1",  282 => x"9a8",  283 => x"602",  284 => x"2ea",  285 => x"132",  286 => x"14d",  287 => x"330",  288 => x"657",  289 => x"9ea",  290 => x"cf4",  291 => x"ea7",  292 => x"e91",  293 => x"cbc",  294 => x"9a7",  295 => x"628",  296 => x"32c",  297 => x"17f",  298 => x"190",  299 => x"358",  300 => x"659",
301 => x"9c5",  302 => x"cb1",  303 => x"e58",  304 => x"e4b",  305 => x"c91",  306 => x"9a4",  307 => x"64d",  308 => x"371",  309 => x"1d1",  310 => x"1d9",  311 => x"384",  312 => x"65d",  313 => x"99f",  314 => x"c6b",  315 => x"e04",  316 => x"e00",  317 => x"c63",  318 => x"99f",  319 => x"672",  320 => x"3b7",  321 => x"225",  322 => x"226",  323 => x"3b5",  324 => x"664",  325 => x"97b",  326 => x"c25",  327 => x"dae",  328 => x"db2",  329 => x"c31",  330 => x"997",  331 => x"696",  332 => x"3fe",  333 => x"27c",  334 => x"276",  335 => x"3e8",  336 => x"66d",  337 => x"957",  338 => x"bde",  339 => x"d57",  340 => x"d61",  341 => x"bfc",  342 => x"98c",  343 => x"6b9",  344 => x"445",  345 => x"2d4",  346 => x"2c7",  347 => x"41e",  348 => x"679",  349 => x"935",  350 => x"b97",
351 => x"cff",  352 => x"d0e",  353 => x"bc6",  354 => x"980",  355 => x"6db",  356 => x"48b",  357 => x"32c",  358 => x"31a",  359 => x"455",  360 => x"686",  361 => x"914",  362 => x"b52",  363 => x"ca7",  364 => x"cbb",  365 => x"b8e",  366 => x"972",  367 => x"6fa",  368 => x"4cf",  369 => x"384",  370 => x"36d",  371 => x"48d",  372 => x"694",  373 => x"8f6",  374 => x"b0e",  375 => x"c50",  376 => x"c69",  377 => x"b55",  378 => x"963",  379 => x"718",  380 => x"512",  381 => x"3da",  382 => x"3bf",  383 => x"4c6",  384 => x"6a4",  385 => x"8d9",  386 => x"acc",  387 => x"bfb",  388 => x"c17",  389 => x"b1d",  390 => x"952",  391 => x"734",  392 => x"553",  393 => x"42e",  394 => x"410",  395 => x"4fe",  396 => x"6b5",  397 => x"8be",  398 => x"a8d",  399 => x"ba9",  400 => x"bc7",
401 => x"ae5",  402 => x"941",  403 => x"74d",  404 => x"590",  405 => x"47e",  406 => x"45f",  407 => x"536",  408 => x"6c7",  409 => x"8a6",  410 => x"a51",  411 => x"b59",  412 => x"b7a",  413 => x"aae",  414 => x"92f",  415 => x"765",  416 => x"5cb",  417 => x"4cc",  418 => x"4ab",  419 => x"56c",  420 => x"6d9",  421 => x"88f",  422 => x"a18",  423 => x"b0d",  424 => x"b2f",  425 => x"a78",  426 => x"91c",  427 => x"77a",  428 => x"602",  429 => x"516",  430 => x"4f4",  431 => x"5a1",  432 => x"6ec",  433 => x"87b",  434 => x"9e3",  435 => x"ac5",  436 => x"ae8",  437 => x"a44",  438 => x"90a",  439 => x"78e",  440 => x"636",  441 => x"55d",  442 => x"53a",  443 => x"5d4",  444 => x"6ff",  445 => x"868",  446 => x"9b1",  447 => x"a81",  448 => x"aa4",  449 => x"a13",  450 => x"8f7",
451 => x"79f",  452 => x"666",  453 => x"59f",  454 => x"57c",  455 => x"605",  456 => x"711",  457 => x"858",  458 => x"982",  459 => x"a41",  460 => x"a63",  461 => x"9e3",  462 => x"8e5",  463 => x"7ae",  464 => x"693",  465 => x"5dd",  466 => x"5ba",  467 => x"633",  468 => x"723",  469 => x"84a",  470 => x"957",  471 => x"a05",  472 => x"a27",  473 => x"9b6",  474 => x"8d3",  475 => x"7bc",  476 => x"6bc",  477 => x"616",  478 => x"5f5",  479 => x"65f",  480 => x"735",  481 => x"83d",  482 => x"930",  483 => x"9ce",  484 => x"9ee",  485 => x"98b",  486 => x"8c1",  487 => x"7c8",  488 => x"6e2",  489 => x"64b",  490 => x"62b",  491 => x"688",  492 => x"746",  493 => x"832",  494 => x"90c",  495 => x"99b",  496 => x"9ba",  497 => x"964",  498 => x"8b1",  499 => x"7d2"
 );

    signal test_sample_reg : sample_shift_register := init_sample_shift_register; --registret vi tester imod.
    signal sample_buffer : sample_shift_register := (others=>(others => '0')); --sampleren ADC'en fodrer i
    signal sample_counter : unsigned(15 downto 0) := (others=> '0');


begin

process(sample_ready, clk, start)
    variable summize_temp : unsigned(3*word_size-1 downto 0) := (others=> '0');
    variable xcorr_temp : xcorr_temp_result :=(others=>(others => '0'));
    variable state : xcorr_states := stopped;

    variable clock_at_max_corr : unsigned(15 downto 0) := (others=>'0');
    variable max_corr_score : unsigned(3*word_size-1 downto 0) := (others=> '0');

begin
    if rising_edge(clk) then
        case state is
            when shift =>
                currentStateDebug <= std_logic_vector(to_unsigned(1, 4));                
                for i in input_size-1 downto 1 loop
                    sample_buffer(i) <= sample_buffer(i-1);
                end loop;
                sample_buffer(0) <= sample;
                
                state := multiply_1;
            when multiply_1 =>
                for i in input_size-1 downto input_size/2 loop
                    xcorr_temp(i) := unsigned(sample_buffer(i))* unsigned(test_sample_reg(i));
                end loop; --ganger det hele sammen og gemmer det i et temp array.
                state := multiply_2;
                
                
            when multiply_2 =>
                currentStateDebug <= std_logic_vector(to_unsigned(2, 4));                

                for i in (input_size/2)-1 downto 0 loop
                    xcorr_temp(i) := unsigned(sample_buffer(i))* unsigned(test_sample_reg(i));
                end loop; --ganger det hele sammen og gemmer det i et temp array.
                state := summize_1;
                
                
                
            when summize_1 => -- lægger det hele sammen
                summize_temp := (others=>'0'); 
                for i in input_size-1 downto (input_size/2) loop -- vi tæller fra 0 af
                    summize_temp := summize_temp + xcorr_temp(i);
                end loop ;
                state := summize_2;
                
                
            when summize_2 => -- lægger det hele sammen 2
                currentStateDebug <= std_logic_vector(to_unsigned(3, 4));                
                for i in (input_size/2)-1 downto 0 loop -- vi tæller fra 0 af
                    summize_temp := summize_temp + xcorr_temp(i);
                end loop ;
                state := compare; -- hopper i idle state vi er i mål                
            
            
            
            when compare => -- sammenligner og noterer om vores clock skal huskes
                currentStateDebug <= std_logic_vector(to_unsigned(4, 4));
                if(unsigned(max_corr_score) < unsigned(summize_temp)) then
                currentStateDebug <= std_logic_vector(to_unsigned(5, 4));
                    clock_at_max_corr := sample_counter;
                    max_corr_score := unsigned(summize_temp);
                end if;
                
                if(unsigned(sample_counter) > unsigned(samples_to_run)) then --Hvis vi har kørt den tid vi ville så stopper vi
                currentStateDebug <= std_logic_vector(to_unsigned(6, 4));
                    state := stopped;
                    TOF_ready <= '1';
                    TOF_out <= std_logic_vector(clock_at_max_corr);
                else
                    state := idle; --Hopper til idle så vi kan køre næste sample
                end if;
                
                
            when idle =>
                currentStateDebug <= std_logic_vector(to_unsigned(10, 4));
                if sample_ready = '1' then
                    currentStateDebug <= std_logic_vector(to_unsigned(0, 4));                
                    sample_counter <= sample_counter + 1;
                    state := shift; --starter svinet
                end if;
            
            
            when stopped =>
                TOF_ready <= '0';
                currentStateDebug <= std_logic_vector(to_unsigned(7, 4));
                if start = '1' then
                currentStateDebug <= std_logic_vector(to_unsigned(8, 4));
                    sample_counter <= (others => '0');
                    max_corr_score := (others => '0');

                    xcorr_temp :=(others=>(others => '0'));
                    sample_buffer <= (others=>(others => '0'));
                currentStateDebug <= std_logic_vector(to_unsigned(9, 4));
                    state := idle;
                 currentStateDebug <= std_logic_vector(to_unsigned(11, 4));   
                end if; 
                currentStateDebug <= std_logic_vector(to_unsigned(12, 4));
            when others =>
                currentStateDebug <= std_logic_vector(to_unsigned(13, 4));
                state := idle;
                currentStateDebug <= std_logic_vector(to_unsigned(14 , 4));
        end case;
    end if;
end process;
end Behavioral;