var PLUGIN_INFO =
<KeySnailPlugin>
    <name>Option key as meta key</name>
    <description>Use option key as meta key instead of command key</description>
    <version>0.1</version>
    <updateURL>https://dl.dropbox.com/u/313738/keysnail/option-as-meta.ks.js</updateURL>
    <author mail="cxx_@livedoor.com" homepage="http://twitter.com/cxx">cxx</author>
    <license>The MIT License</license>
    <minVersion>1.6.1</minVersion>
    <include>main</include>
    <options>
        <option>
            <name>option_as_meta.layout</name>
            <type>string</type>
            <description>US (default) or JIS</description>
        </option>
    </options>
</KeySnailPlugin>;

var nonAsciiCharCode2Key = {
    229: "M-a",
    8747: "M-b",
    231: "M-c",
    8706: "M-d",
    //: "M-e",
    402: "M-f",
    169: "M-g",
    729: "M-h",
    //: "M-i",
    8710: "M-j",
    730: "M-k",
    172: "M-l",
    181: "M-m",
    //: "M-n",
    248: "M-o",
    960: "M-p",
    339: "M-q",
    174: "M-r",
    223: "M-s",
    8224: "M-t",
    //: "M-u",
    8730: "M-v",
    8721: "M-w",
    8776: "M-x",
    165: "M-y",
    937: "M-z",

    197: "M-A",
    305: "M-B",
    199: "M-C",
    206: "M-D",
    180: "M-E",
    207: "M-F",
    733: "M-G",
    211: "M-H",
    710: "M-I",
    212: "M-J",
    63743: "M-K",
    210: "M-L",
    194: "M-M",
    732: "M-N",
    216: "M-O",
    8719: "M-P",
    338: "M-Q",
    8240: "M-R",
    205: "M-S",
    711: "M-T",
    168: "M-U",
    9674: "M-V",
    8222: "M-W",
    731: "M-X",
    193: "M-Y",
    184: "M-Z",

    186: "M-0",
    161: "M-1",
    8482: "M-2",
    163: "M-3",
    162: "M-4",
    8734: "M-5",
    167: "M-6",
    182: "M-7",
    8226: "M-8",
    170: "M-9",

    160: "M-SPC",
    8260: "M-!",
    8249: "M-#",
    8250: "M-$",
    64257: "M-%",
    8804: "M-,",
    8211: "M--",
    8805: "M-.",
    247: "M-/",
    8230: "M-;",
    175: "M-<",
    728: "M->",
    191: "M-?",
};

var layoutSpecificKeys = {
    US: {
        198: "M-\"",
        8225: "M-&",
        230: "M-'",
        183: "M-(",
        8218: "M-)",
        176: "M-*",
        177: "M-+",
        218: "M-:",
        8800: "M-=",
        8364: "M-@",
        8220: "M-[",
        171: "M-\\",
        8216: "M-]",
        64258: "M-^",
        8212: "M-_",
        8221: "M-{",
        8217: "M-}"
    },
    JIS: {
        8364: "M-\"",
        64258: "M-&",
        8225: "M-'",
        176: "M-(",
        183: "M-)",
        198: "M-*",
        218: "M-+",
        230: "M-:",
        8212: "M-=",
        8220: "M-@",
        8216: "M-[",
        171: "M-]",
        8800: "M-^",
        8221: "M-`",
        8217: "M-{",
        187: "M-}",
        177: "M-~"
    }
};

layoutSpecificKeys = layoutSpecificKeys[plugins.options["option_as_meta.layout"] || "US"];
for (var charCode in layoutSpecificKeys)
    nonAsciiCharCode2Key[charCode] = layoutSpecificKeys[charCode];

key.keyEventToString_ = key.keyEventToString;
key.keyEventToString = function (aEvent) {
    if (aEvent.metaKey)
        return null;
    var key = this.keyEventToString_(aEvent);
    if (key === null && aEvent.charCode in nonAsciiCharCode2Key)
        key = nonAsciiCharCode2Key[aEvent.charCode];
    return key;
};
