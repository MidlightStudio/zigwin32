//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (13)
//--------------------------------------------------------------------------------
const IID_IPhraseSink_Value = @import("../zig.zig").Guid.initString("cc906ff0-c058-101a-b554-08002b33b0e6");
pub const IID_IPhraseSink = &IID_IPhraseSink_Value;
pub const IPhraseSink = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        PutSmallPhrase: fn(
            self: *const IPhraseSink,
            pwcNoun: [*:0]const u16,
            cwcNoun: u32,
            pwcModifier: [*:0]const u16,
            cwcModifier: u32,
            ulAttachmentType: u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        PutPhrase: fn(
            self: *const IPhraseSink,
            pwcPhrase: [*:0]const u16,
            cwcPhrase: u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IPhraseSink_PutSmallPhrase(self: *const T, pwcNoun: [*:0]const u16, cwcNoun: u32, pwcModifier: [*:0]const u16, cwcModifier: u32, ulAttachmentType: u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IPhraseSink.VTable, self.vtable).PutSmallPhrase(@ptrCast(*const IPhraseSink, self), pwcNoun, cwcNoun, pwcModifier, cwcModifier, ulAttachmentType);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IPhraseSink_PutPhrase(self: *const T, pwcPhrase: [*:0]const u16, cwcPhrase: u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IPhraseSink.VTable, self.vtable).PutPhrase(@ptrCast(*const IPhraseSink, self), pwcPhrase, cwcPhrase);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

pub const WORDREP_BREAK_TYPE = extern enum(i32) {
    WORDREP_BREAK_EOW = 0,
    WORDREP_BREAK_EOS = 1,
    WORDREP_BREAK_EOP = 2,
    WORDREP_BREAK_EOC = 3,
};
pub const WORDREP_BREAK_EOW = WORDREP_BREAK_TYPE.WORDREP_BREAK_EOW;
pub const WORDREP_BREAK_EOS = WORDREP_BREAK_TYPE.WORDREP_BREAK_EOS;
pub const WORDREP_BREAK_EOP = WORDREP_BREAK_TYPE.WORDREP_BREAK_EOP;
pub const WORDREP_BREAK_EOC = WORDREP_BREAK_TYPE.WORDREP_BREAK_EOC;

pub const DBKINDENUM = extern enum(i32) {
    DBKIND_GUID_NAME = 0,
    DBKIND_GUID_PROPID = 1,
    DBKIND_NAME = 2,
    DBKIND_PGUID_NAME = 3,
    DBKIND_PGUID_PROPID = 4,
    DBKIND_PROPID = 5,
    DBKIND_GUID = 6,
};
pub const DBKIND_GUID_NAME = DBKINDENUM.DBKIND_GUID_NAME;
pub const DBKIND_GUID_PROPID = DBKINDENUM.DBKIND_GUID_PROPID;
pub const DBKIND_NAME = DBKINDENUM.DBKIND_NAME;
pub const DBKIND_PGUID_NAME = DBKINDENUM.DBKIND_PGUID_NAME;
pub const DBKIND_PGUID_PROPID = DBKINDENUM.DBKIND_PGUID_PROPID;
pub const DBKIND_PROPID = DBKINDENUM.DBKIND_PROPID;
pub const DBKIND_GUID = DBKINDENUM.DBKIND_GUID;

pub const DBID = extern struct {
    uGuid: DBID._uGuid_e__Union,
    eKind: u32,
    uName: DBID._uName_e__Union,
    const _uGuid_e__Union = u32; // TODO: generate this nested type!
    const _uName_e__Union = u32; // TODO: generate this nested type!
};

pub const CI_STATE = extern struct {
    cbStruct: u32,
    cWordList: u32,
    cPersistentIndex: u32,
    cQueries: u32,
    cDocuments: u32,
    cFreshTest: u32,
    dwMergeProgress: u32,
    eState: u32,
    cFilteredDocuments: u32,
    cTotalDocuments: u32,
    cPendingScans: u32,
    dwIndexSize: u32,
    cUniqueKeys: u32,
    cSecQDocuments: u32,
    dwPropCacheSize: u32,
};

pub const FULLPROPSPEC = extern struct {
    guidPropSet: Guid,
    psProperty: PROPSPEC,
};

pub const IFILTER_INIT = extern enum(i32) {
    CANON_PARAGRAPHS = 1,
    HARD_LINE_BREAKS = 2,
    CANON_HYPHENS = 4,
    CANON_SPACES = 8,
    APPLY_INDEX_ATTRIBUTES = 16,
    APPLY_OTHER_ATTRIBUTES = 32,
    APPLY_CRAWL_ATTRIBUTES = 256,
    INDEXING_ONLY = 64,
    SEARCH_LINKS = 128,
    FILTER_OWNED_VALUE_OK = 512,
    FILTER_AGGRESSIVE_BREAK = 1024,
    DISABLE_EMBEDDED = 2048,
    EMIT_FORMATTING = 4096,
};
pub const IFILTER_INIT_CANON_PARAGRAPHS = IFILTER_INIT.CANON_PARAGRAPHS;
pub const IFILTER_INIT_HARD_LINE_BREAKS = IFILTER_INIT.HARD_LINE_BREAKS;
pub const IFILTER_INIT_CANON_HYPHENS = IFILTER_INIT.CANON_HYPHENS;
pub const IFILTER_INIT_CANON_SPACES = IFILTER_INIT.CANON_SPACES;
pub const IFILTER_INIT_APPLY_INDEX_ATTRIBUTES = IFILTER_INIT.APPLY_INDEX_ATTRIBUTES;
pub const IFILTER_INIT_APPLY_OTHER_ATTRIBUTES = IFILTER_INIT.APPLY_OTHER_ATTRIBUTES;
pub const IFILTER_INIT_APPLY_CRAWL_ATTRIBUTES = IFILTER_INIT.APPLY_CRAWL_ATTRIBUTES;
pub const IFILTER_INIT_INDEXING_ONLY = IFILTER_INIT.INDEXING_ONLY;
pub const IFILTER_INIT_SEARCH_LINKS = IFILTER_INIT.SEARCH_LINKS;
pub const IFILTER_INIT_FILTER_OWNED_VALUE_OK = IFILTER_INIT.FILTER_OWNED_VALUE_OK;
pub const IFILTER_INIT_FILTER_AGGRESSIVE_BREAK = IFILTER_INIT.FILTER_AGGRESSIVE_BREAK;
pub const IFILTER_INIT_DISABLE_EMBEDDED = IFILTER_INIT.DISABLE_EMBEDDED;
pub const IFILTER_INIT_EMIT_FORMATTING = IFILTER_INIT.EMIT_FORMATTING;

pub const IFILTER_FLAGS = extern enum(i32) {
    OLE_PROPERTIES = 1,
};
pub const IFILTER_FLAGS_OLE_PROPERTIES = IFILTER_FLAGS.OLE_PROPERTIES;

pub const CHUNKSTATE = extern enum(i32) {
    CHUNK_TEXT = 1,
    CHUNK_VALUE = 2,
    CHUNK_FILTER_OWNED_VALUE = 4,
};
pub const CHUNK_TEXT = CHUNKSTATE.CHUNK_TEXT;
pub const CHUNK_VALUE = CHUNKSTATE.CHUNK_VALUE;
pub const CHUNK_FILTER_OWNED_VALUE = CHUNKSTATE.CHUNK_FILTER_OWNED_VALUE;

pub const CHUNK_BREAKTYPE = extern enum(i32) {
    CHUNK_NO_BREAK = 0,
    CHUNK_EOW = 1,
    CHUNK_EOS = 2,
    CHUNK_EOP = 3,
    CHUNK_EOC = 4,
};
pub const CHUNK_NO_BREAK = CHUNK_BREAKTYPE.CHUNK_NO_BREAK;
pub const CHUNK_EOW = CHUNK_BREAKTYPE.CHUNK_EOW;
pub const CHUNK_EOS = CHUNK_BREAKTYPE.CHUNK_EOS;
pub const CHUNK_EOP = CHUNK_BREAKTYPE.CHUNK_EOP;
pub const CHUNK_EOC = CHUNK_BREAKTYPE.CHUNK_EOC;

pub const FILTERREGION = extern struct {
    idChunk: u32,
    cwcStart: u32,
    cwcExtent: u32,
};

pub const STAT_CHUNK = extern struct {
    idChunk: u32,
    breakType: CHUNK_BREAKTYPE,
    flags: CHUNKSTATE,
    locale: u32,
    attribute: FULLPROPSPEC,
    idChunkSource: u32,
    cwcStartSource: u32,
    cwcLenSource: u32,
};

const IID_IFilter_Value = @import("../zig.zig").Guid.initString("89bcb740-6119-101a-bcb7-00dd010655af");
pub const IID_IFilter = &IID_IFilter_Value;
pub const IFilter = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        Init: fn(
            self: *const IFilter,
            grfFlags: u32,
            cAttributes: u32,
            aAttributes: [*]const FULLPROPSPEC,
            pFlags: *u32,
        ) callconv(@import("std").os.windows.WINAPI) i32,
        GetChunk: fn(
            self: *const IFilter,
            pStat: *STAT_CHUNK,
        ) callconv(@import("std").os.windows.WINAPI) i32,
        GetText: fn(
            self: *const IFilter,
            pcwcBuffer: *u32,
            awcBuffer: [*:0]u16,
        ) callconv(@import("std").os.windows.WINAPI) i32,
        GetValue: fn(
            self: *const IFilter,
            ppPropValue: **PROPVARIANT,
        ) callconv(@import("std").os.windows.WINAPI) i32,
        BindRegion: fn(
            self: *const IFilter,
            origPos: FILTERREGION,
            riid: *const Guid,
            ppunk: **c_void,
        ) callconv(@import("std").os.windows.WINAPI) i32,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IFilter_Init(self: *const T, grfFlags: u32, cAttributes: u32, aAttributes: [*]const FULLPROPSPEC, pFlags: *u32) callconv(.Inline) i32 {
            return @ptrCast(*const IFilter.VTable, self.vtable).Init(@ptrCast(*const IFilter, self), grfFlags, cAttributes, aAttributes, pFlags);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IFilter_GetChunk(self: *const T, pStat: *STAT_CHUNK) callconv(.Inline) i32 {
            return @ptrCast(*const IFilter.VTable, self.vtable).GetChunk(@ptrCast(*const IFilter, self), pStat);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IFilter_GetText(self: *const T, pcwcBuffer: *u32, awcBuffer: [*:0]u16) callconv(.Inline) i32 {
            return @ptrCast(*const IFilter.VTable, self.vtable).GetText(@ptrCast(*const IFilter, self), pcwcBuffer, awcBuffer);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IFilter_GetValue(self: *const T, ppPropValue: **PROPVARIANT) callconv(.Inline) i32 {
            return @ptrCast(*const IFilter.VTable, self.vtable).GetValue(@ptrCast(*const IFilter, self), ppPropValue);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IFilter_BindRegion(self: *const T, origPos: FILTERREGION, riid: *const Guid, ppunk: **c_void) callconv(.Inline) i32 {
            return @ptrCast(*const IFilter.VTable, self.vtable).BindRegion(@ptrCast(*const IFilter, self), origPos, riid, ppunk);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};


//--------------------------------------------------------------------------------
// Section: Functions (4)
//--------------------------------------------------------------------------------
pub extern "query" fn LoadIFilter(
    pwcsPath: [*:0]const u16,
    pUnkOuter: *IUnknown,
    ppIUnk: **c_void,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "query" fn LoadIFilterEx(
    pwcsPath: [*:0]const u16,
    dwFlags: u32,
    riid: *const Guid,
    ppIUnk: **c_void,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "query" fn BindIFilterFromStorage(
    pStg: *IStorage,
    pUnkOuter: *IUnknown,
    ppIUnk: **c_void,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "query" fn BindIFilterFromStream(
    pStm: *IStream,
    pUnkOuter: *IUnknown,
    ppIUnk: **c_void,
) callconv(@import("std").os.windows.WINAPI) HRESULT;


//--------------------------------------------------------------------------------
// Section: Unicode Aliases (0)
//--------------------------------------------------------------------------------
pub usingnamespace switch (@import("../zig.zig").unicode_mode) {
    .ansi => struct {
    },
    .wide => struct {
    },
    .unspecified => if (@import("builtin").is_test) struct {
    } else struct {
    },
};
//--------------------------------------------------------------------------------
// Section: Imports (8)
//--------------------------------------------------------------------------------
const Guid = @import("../zig.zig").Guid;
const IStream = @import("structured_storage.zig").IStream;
const PWSTR = @import("system_services.zig").PWSTR;
const PROPSPEC = @import("structured_storage.zig").PROPSPEC;
const IUnknown = @import("com.zig").IUnknown;
const HRESULT = @import("com.zig").HRESULT;
const PROPVARIANT = @import("structured_storage.zig").PROPVARIANT;
const IStorage = @import("structured_storage.zig").IStorage;

test {
    const constant_export_count = 0;
    const type_export_count = 13;
    const enum_value_export_count = 33;
    const com_iface_id_export_count = 2;
    const com_class_id_export_count = 0;
    const func_export_count = 4;
    const unicode_alias_count = 0;
    const import_count = 8;
    @setEvalBranchQuota(
        constant_export_count +
        type_export_count +
        enum_value_export_count +
        com_iface_id_export_count * 2 + // * 2 for value and ptr
        com_class_id_export_count * 2 + // * 2 for value and ptr
        func_export_count +
        unicode_alias_count +
        import_count +
        2 // TODO: why do I need these extra 2?
    );
    @import("std").testing.refAllDecls(@This());
}