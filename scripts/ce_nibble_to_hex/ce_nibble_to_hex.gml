/// @func ce_nibble_to_hex(nibble)
/// @desc Converts a number in range 0..15 into its hexadecimal representation.
/// @param {real} nibble The number to convert.
/// @return {string} The hexadecimal representation.
gml_pragma("forceinline");
return global.__ce_nibble_to_hex_array[argument0];