/// @func ce_byte_array_to_hex(bytes)
/// @desc Converts an array of number between 0..255 into a string of
/// hexadecimal representations of each number.
/// @param {array} bytes The array with numbers.
/// @return {string} The resulting string.
function ce_byte_array_to_hex(bytes)
{
	var _bytes = bytes;
	var _str = "";
	var _size = array_length(_bytes);
	for (var i = 0; i < _size; ++i)
	{
		_str += ce_byte_to_hex(_bytes[i]);
	}
	return _str;
}

/// @func ce_byte_to_hex(byte)
/// @desc Converts a number in range 0..255 into a hexadecimal representation.
/// @param {real} byte The number to convert.
/// @return {string} The hexadecimal representation.
function ce_byte_to_hex(byte)
{
	gml_pragma("forceinline");
	var _byte = byte;
	return (ce_nibble_to_hex(_byte & 0xF) + ce_nibble_to_hex((_byte & 0xF0) >> 4));
}

/// @func ce_nibble_to_hex(nibble)
/// @desc Converts a number in range 0..15 into its hexadecimal representation.
/// @param {real} nibble The number to convert.
/// @return {string} The hexadecimal representation.
function ce_nibble_to_hex(nibble)
{
	gml_pragma("forceinline");
	static __ce_nibble_to_hex_array = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"];
	return __ce_nibble_to_hex_array[nibble];
}