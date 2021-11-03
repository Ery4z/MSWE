from nbtlib import (
    Byte,
    ByteArray,
    Compound,
    Double,
    File,
    Float,
    Int,
    IntArray,
    List,
    Long,
    LongArray,
    Short,
    String,
)

__all__ = [
    "bytes_for_valid_tags",
    "out_of_range_numeric_tags",
    "literal_values_for_tags",
    "invalid_literals",
    "nbt_files",
]


# fmt: off
bytes_for_valid_tags = [

    # Byte tag
    ("big", b"\x00", Byte(0)),
    ("big", b"\xFF", Byte(-1)),
    ("big", b"\x7F", Byte(127)),
    ("big", b"\x80", Byte(-128)),
    ("little", b"\x00", Byte(0)),
    ("little", b"\xFF", Byte(-1)),
    ("little", b"\x7F", Byte(127)),
    ("little", b"\x80", Byte(-128)),

    # Short tag
    ("big", b"\x00\x00", Short(0)),
    ("big", b"\xFF\xFF", Short(-1)),
    ("big", b"\x7F\xFF", Short(32767)),
    ("big", b"\x80\x00", Short(-32768)),
    ("little", b"\x00\x00", Short(0)),
    ("little", b"\xFF\xFF", Short(-1)),
    ("little", b"\xFF\x7F", Short(32767)),
    ("little", b"\x00\x80", Short(-32768)),

    # Int tag
    ("big", b"\x00\x00\x00\x00", Int(0)),
    ("big", b"\xFF\xFF\xFF\xFF", Int(-1)),
    ("big", b"\x7F\xFF\xFF\xFF", Int(2147483647)),
    ("big", b"\x80\x00\x00\x00", Int(-2147483648)),
    ("little", b"\x00\x00\x00\x00", Int(0)),
    ("little", b"\xFF\xFF\xFF\xFF", Int(-1)),
    ("little", b"\xFF\xFF\xFF\x7F", Int(2147483647)),
    ("little", b"\x00\x00\x00\x80", Int(-2147483648)),

    # Long tag
    ("big", b"\x00\x00\x00\x00\x00\x00\x00\x00", Long(0)),
    ("big", b"\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF", Long(-1)),
    ("big", b"\x7F\xFF\xFF\xFF\xFF\xFF\xFF\xFF", Long(9223372036854775807)),
    ("big", b"\x80\x00\x00\x00\x00\x00\x00\x00", Long(-9223372036854775808)),
    ("little", b"\x00\x00\x00\x00\x00\x00\x00\x00", Long(0)),
    ("little", b"\xFF\xFF\xFF\xFF\xFF\xFF\xFF\xFF", Long(-1)),
    ("little", b"\xFF\xFF\xFF\xFF\xFF\xFF\xFF\x7F", Long(9223372036854775807)),
    ("little", b"\x00\x00\x00\x00\x00\x00\x00\x80", Long(-9223372036854775808)),

    # Float tag
    ("big", b"\x00\x00\x00\x00", Float(0)),
    ("big", b"\xbf\x80\x00\x00", Float(-1)),
    ("big", b">\xff\x182", Float(0.49823147058486938)),
    ("little", b"\x00\x00\x00\x00", Float(0)),
    ("little", b"\x00\x00\x80\xbf", Float(-1)),
    ("little", b"2\x18\xff>", Float(0.49823147058486938)),

    # Double tag
    ("big", b"\x00\x00\x00\x00\x00\x00\x00\x00", Double(0)),
    ("big", b"\xbf\xf0\x00\x00\x00\x00\x00\x00", Double(-1)),
    ("big", b"?\xdf\x8fk\xbb\xffj^", Double(0.49312871321823148)),
    ("little", b"\x00\x00\x00\x00\x00\x00\x00\x00", Double(0)),
    ("little", b"\x00\x00\x00\x00\x00\x00\xf0\xbf", Double(-1)),
    ("little", b"^j\xff\xbbk\x8f\xdf?", Double(0.49312871321823148)),

    # ByteArray tag
    ("big", b"\x00\x00\x00\x00", ByteArray([])),
    ("big", b"\x00\x00\x00\x01\xff", ByteArray([-1])),
    ("big", b"\x00\x00\x00\x03\x01\x02\x03", ByteArray([1, 2, 3])),
    ("little", b"\x00\x00\x00\x00", ByteArray([])),
    ("little", b"\x01\x00\x00\x00\xff", ByteArray([-1])),
    ("little", b"\x03\x00\x00\x00\x01\x02\x03", ByteArray([1, 2, 3])),

    # String tag
    ("big", b"\x00\x00", String("")),
    ("big", b"\x00\x0bhello world", String("hello world")),
    ("big", b"\x00\x06\xc3\x85\xc3\x84\xc3\x96", String("ÅÄÖ")),
    ("little", b"\x00\x00", String("")),
    ("little", b"\x0b\x00hello world", String("hello world")),
    ("little", b"\x06\x00\xc3\x85\xc3\x84\xc3\x96", String("ÅÄÖ")),

    # List tag
    ("big", b"\x02\x00\x00\x00\x00", List[Short]([])),
    ("big", b"\x01\x00\x00\x00\x04\x05\xf7\x12\x40", List[Byte]([Byte(5), Byte(-9), Byte(18), Byte(64)])),
    ("big", b"\x08\x00\x00\x00\x02\x00\x05hello\x00\x05world", List[String]([String("hello"), String("world")])),
    ("big", b"\t\x00\x00\x00\x02\x03\x00\x00\x00\x01\x00\x00\x00*\x08\x00\x00\x00\x01\x00\x05hello", List[List]([List[Int]([Int(42)]), List[String]([String("hello")])])),
    ("little", b"\x02\x00\x00\x00\x00", List[Short]([])),
    ("little", b"\x01\x04\x00\x00\x00\x05\xf7\x12\x40", List[Byte]([Byte(5), Byte(-9), Byte(18), Byte(64)])),
    ("little", b"\x08\x02\x00\x00\x00\x05\x00hello\x05\x00world", List[String]([String("hello"), String("world")])),
    ("little", b"\t\x02\x00\x00\x00\x03\x01\x00\x00\x00*\x00\x00\x00\x08\x01\x00\x00\x00\x05\x00hello", List[List]([List[Int]([Int(42)]), List[String]([String("hello")])])),

    # Compound tag
    ("big", b"\x00", Compound({})),
    ("big", b"\x03\x00\x03foo\x00\x00\x00*\x00", Compound({"foo": Int(42)})),
    ("big", b"\x01\x00\x01a\x00\x01\x00\x01b\x01\x00", Compound({"a": Byte(0), "b": Byte(1)})),
    ("little", b"\x00", Compound({})),
    ("little", b"\x03\x03\x00foo*\x00\x00\x00\x00", Compound({"foo": Int(42)})),
    ("little", b"\x01\x01\x00a\x00\x01\x01\x00b\x01\x00", Compound({"a": Byte(0), "b": Byte(1)})),

    # IntArray tag
    ("big", b"\x00\x00\x00\x00", IntArray([])),
    ("big", b"\x00\x00\x00\x01\xff\xff\xff\xff", IntArray([-1])),
    ("big", b"\x00\x00\x00\x02\x00\x00\x00\x01\x00\x00\x00\x02", IntArray([1, 2])),
    ("little", b"\x00\x00\x00\x00", IntArray([])),
    ("little", b"\x01\x00\x00\x00\xff\xff\xff\xff", IntArray([-1])),
    ("little", b"\x02\x00\x00\x00\x01\x00\x00\x00\x02\x00\x00\x00", IntArray([1, 2])),

    # LongArray tag
    ("big", b"\x00\x00\x00\x00", LongArray([])),
    ("big", b"\x00\x00\x00\x01\xff\xff\xff\xff\xff\xff\xff\xff", LongArray([-1])),
    ("big", b"\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x02", LongArray([1, 2])),
    ("little", b"\x00\x00\x00\x00", LongArray([])),
    ("little", b"\x01\x00\x00\x00\xff\xff\xff\xff\xff\xff\xff\xff", LongArray([-1])),
    ("little", b"\x02\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x02\x00\x00\x00\x00\x00\x00\x00", LongArray([1, 2])),

]
# fmt: on


out_of_range_numeric_tags = [
    (Byte, -129),
    (Byte, 128),
    (Short, -32769),
    (Short, 32768),
    (Int, -2147483649),
    (Int, 2147483648),
    (Long, -9223372036854775809),
    (Long, 9223372036854775808),
]


unsigned_values_for_integer_tags = [
    (Byte(-1), 255),
    (Byte(-128), 128),
    (Short(-1), 65535),
    (Short(-32768), 32768),
    (Int(-1), 4294967295),
    (Int(-2147483648), 2147483648),
    (Long(-1), 18446744073709551615),
    (Long(-9223372036854775808), 9223372036854775808),
]


# fmt: off
literal_values_for_tags = [

    # Byte tag
    ("0b", Byte(0)),
    ("-1b", Byte(-1)),
    ("127b", Byte(127)),
    ("-128b", Byte(-128)),
    ("128b", String("128b")),
    ("-129b", String("-129b")),

    # Short tag
    ("0s", Short(0)),
    ("-1s", Short(-1)),
    ("32767s", Short(32767)),
    ("-32768s", Short(-32768)),
    ("32768s", String("32768s")),
    ("-32769s", String("-32769s")),

    # Int tag
    ("0", Int(0)),
    ("-1", Int(-1)),
    ("2147483647", Int(2147483647)),
    ("-2147483648", Int(-2147483648)),
    ("2147483648", String("2147483648")),
    ("-2147483649", String("-2147483649")),

    # Long tag
    ("0l", Long(0)),
    ("-1l", Long(-1)),
    ("9223372036854775807l", Long(9223372036854775807)),
    ("-9223372036854775808l", Long(-9223372036854775808)),
    ("9223372036854775808l", String("9223372036854775808l")),
    ("-9223372036854775809l", String("-9223372036854775809l")),

    # Float tag
    ("0.0f", Float(0)),
    ("-1.0f", Float(-1)),
    ("56.487f", Float(56.487)),
    ("1.2e02f", Float(120)),
    ("82e+289f", Float(8.2e290)),
    ("1E-52f", Float(1e-52)),
    ("1.5E+2f", Float(150)),

    # Double tag
    ("0.0d", Double(0)),
    ("-1.0d", Double(-1)),
    ("0.493128713218d", Double(0.493128713218)),
    ("7.2", Double(7.2)),
    ("1.0e10", Double(1e10)),
    ("7e-72d", Double(7e-72)),
    ("7.3E2d", Double(730)),
    (".2E+2", Double(20)),

    # ByteArray tag
    ("[B;]", ByteArray([])),
    ("[B;-1b]", ByteArray([-1])),
    ("[B;1b,2b,3b]", ByteArray([1, 2, 3])),

    # String tag
    ('""', String('')),
    ("foo-bar.", String("foo-bar.")),
    ('"hello world"', String("hello world")),
    ('"我"', String("我")),
    ('"Å\\"Ä\\\\Ö"', String('Å"Ä\\Ö')),
    ('"\\"\\\\"', String('"\\')),
    ("2a", String("2a")),
    ('"3.0f"', String('3.0f')),
    ("+72foo", String("+72foo")),
    ("03b", String("03b")),
    ("4e-3l", String("4e-3l")),
    ("4e3l", String("4e3l")),
    ("14e+5", String("14e+5")),
    ("3.3s", String("3.3s")),
    ("''", String("")),
    ("'\"'", String('"')),
    ('"\'"', String("'")),
    ('"\\""', String('"')),
    ("'\\''", String("'")),
    ('"\\\\\'\\""', String('\\\'"')),

    # Literal aliases
    ("true", Byte(1)),
    ("false", Byte(0)),
    ("True", Byte(1)),
    ("FaLse", Byte(0)),

    # List tag
    ("[]", List[Short]([])),
    ("[5b,-9b,18b,64b]", List[Byte]([5, -9, 18, 64])),
    ('[hello,world,"\\"\\\\"]', List[String](["hello", "world", '"\\'])),
    ("[[],[2]]", List[List[Int]]([[], [2]])),
    ("[[[],[1]],[]]", List[List[List[Int]]]([[[], [1]], []])),
    ("[[],[[],[]]]", List[List[List]]([[], [[], []]])),
    ("[[],[[[[[[[[[[],[[[[5,1]],[]]]]]]]]]]],[[[[]]]]]]", List[List[List[List[List[List[List[List[List[List[List[List[List[List[Int]]]]]]]]]]]]]]([[], [[[[[[[[[[], [[[[5, 1]], []]]]]]]]]]], [[[[]]]]]])),
    ("[[42],[hello]]", List[List]([List[Int]([42]), List[String](["hello"])])),
    ("[[[[],[[[]]]]],[[[[],[5]]]]]", List[List[List[List[List]]]]([[[[], [List[List]([[]])]]], [[[List[Int]([]), List[Int]([Int(5)])]]]])),
    ("[[[],[[]]],[[hello]]]", List[List[List]]([[List[List]([]), List[List]([[]])], [List([String("hello")])]])),
    ("[[1],[[]]]", List([List([Int(1)]), List([List([])])])),

    # Compound tag
    ("{}", Compound({})),
    ("{foo:42}", Compound({"foo": Int(42)})),
    ("{a:0b,b:1b}", Compound({"a": Byte(0), "b": Byte(1)})),
    ('{"hello world":foo}', Compound({"hello world": String("foo")})),
    ('{"\\"blah\\\\\\"":1.2d}', Compound({'"blah\\"': Double(1.2)})),
    ('{"jso\\\\\\\\n":"t\\\\\\\\nest"}', Compound({"jso\\\\n": String("t\\\\nest")})),
    ("{42:bar}", Compound({"42": String("bar")})),
    ("{-42abc:   thing}", Compound({"-42abc": String("thing")})),
    ("{+77.7f:[B;1b]}", Compound({"+77.7f": ByteArray([1])})),

    # IntArray tag
    ("[I;]", IntArray([])),
    ("[I;-1]", IntArray([-1])),
    ("[I;1,2]", IntArray([1, 2])),

    # LongArray tag
    ("[L;]", LongArray([])),
    ("[L;-1l]", LongArray([-1])),
    ("[L;1l,2l]", LongArray([1, 2])),

]
# fmt: on


invalid_literals = [
    '"\\"',
    '"\\n"',
    '"\\\\\\"',
    '{"\\":1}',
    "[a,1]",
    "[[],[],1b]",
    "[[],[],1b]",
    "[L;5l,4l,3]",
    "{hello,world}",
    "{with space: 5}",
    '{\\": no}',
    "{foo: [1,2}",
    "{error: [test]]}",
    "[{,{}]",
    '"\\\'"',
    "'\\\"'",
]


# fmt: off
nbt_files = [
    (
        "tests/nbt_files/hello_world.nbt", File({
            "name": String("Bananrama")
        }, root_name="hello world")
    ),
    (
        "tests/nbt_files/bigtest.nbt", File({
            "nested compound test": Compound({
                "egg": Compound({
                    "name": String("Eggbert"), "value": Float(0.5)
                }),
                "ham": Compound({
                    "name": String("Hampus"), "value": Float(0.75)
                })
            }),
            "intTest": Int(2147483647),
            "byteTest": Byte(127),
            "stringTest": String("HELLO WORLD THIS IS A TEST STRING ÅÄÖ!"),
            "listTest (long)": List[Long]([11, 12, 13, 14, 15]),
            "doubleTest": Double(0.49312871321823148),
            "floatTest": Float(0.49823147058486938),
            "longTest": Long(9223372036854775807),
            "listTest (compound)": List[Compound]([
                Compound({
                    "created-on": Long(1264099775885),
                    "name": String("Compound tag #0")
                }),
                Compound({
                    "created-on": Long(1264099775885),
                    "name": String("Compound tag #1")
                })
            ]),
            "byteArrayTest (the first 1000 values of (n*n*255+n*7)%100, starting with n=0 (0, 62, 34, 16, 8, ...))": ByteArray([
                (n**2 * 255 + n*7) % 100 for n in range(1000)
            ]),
            "shortTest": Short(32767)
        }, root_name="Level", gzipped=True)
    ),
]
# fmt: on
