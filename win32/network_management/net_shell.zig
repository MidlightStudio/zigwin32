//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (27)
//--------------------------------------------------------------------------------
pub const NETSH_ERROR_BASE = @as(u32, 15000);
pub const ERROR_NO_ENTRIES = @as(u32, 15000);
pub const ERROR_INVALID_SYNTAX = @as(u32, 15001);
pub const ERROR_PROTOCOL_NOT_IN_TRANSPORT = @as(u32, 15002);
pub const ERROR_NO_CHANGE = @as(u32, 15003);
pub const ERROR_CMD_NOT_FOUND = @as(u32, 15004);
pub const ERROR_ENTRY_PT_NOT_FOUND = @as(u32, 15005);
pub const ERROR_DLL_LOAD_FAILED = @as(u32, 15006);
pub const ERROR_INIT_DISPLAY = @as(u32, 15007);
pub const ERROR_TAG_ALREADY_PRESENT = @as(u32, 15008);
pub const ERROR_INVALID_OPTION_TAG = @as(u32, 15009);
pub const ERROR_NO_TAG = @as(u32, 15010);
pub const ERROR_MISSING_OPTION = @as(u32, 15011);
pub const ERROR_TRANSPORT_NOT_PRESENT = @as(u32, 15012);
pub const ERROR_SHOW_USAGE = @as(u32, 15013);
pub const ERROR_INVALID_OPTION_VALUE = @as(u32, 15014);
pub const ERROR_OKAY = @as(u32, 15015);
pub const ERROR_CONTINUE_IN_PARENT_CONTEXT = @as(u32, 15016);
pub const ERROR_SUPPRESS_OUTPUT = @as(u32, 15017);
pub const ERROR_HELPER_ALREADY_REGISTERED = @as(u32, 15018);
pub const ERROR_CONTEXT_ALREADY_REGISTERED = @as(u32, 15019);
pub const ERROR_PARSING_FAILURE = @as(u32, 15020);
pub const MAX_NAME_LEN = @as(u32, 48);
pub const NETSH_VERSION_50 = @as(u32, 20480);
pub const NETSH_MAX_TOKEN_LENGTH = @as(u32, 64);
pub const NETSH_MAX_CMD_TOKEN_LENGTH = @as(u32, 128);
pub const DEFAULT_CONTEXT_PRIORITY = @as(u32, 100);

//--------------------------------------------------------------------------------
// Section: Types (20)
//--------------------------------------------------------------------------------
pub const NS_CMD_FLAGS = extern enum(i32) {
    PRIVATE = 1,
    INTERACTIVE = 2,
    LOCAL = 8,
    ONLINE = 16,
    HIDDEN = 32,
    LIMIT_MASK = 65535,
    PRIORITY = -2147483648,
};
pub const CMD_FLAG_PRIVATE = NS_CMD_FLAGS.PRIVATE;
pub const CMD_FLAG_INTERACTIVE = NS_CMD_FLAGS.INTERACTIVE;
pub const CMD_FLAG_LOCAL = NS_CMD_FLAGS.LOCAL;
pub const CMD_FLAG_ONLINE = NS_CMD_FLAGS.ONLINE;
pub const CMD_FLAG_HIDDEN = NS_CMD_FLAGS.HIDDEN;
pub const CMD_FLAG_LIMIT_MASK = NS_CMD_FLAGS.LIMIT_MASK;
pub const CMD_FLAG_PRIORITY = NS_CMD_FLAGS.PRIORITY;

pub const NS_REQS = extern enum(i32) {
    ZERO = 0,
    PRESENT = 1,
    ALLOW_MULTIPLE = 2,
    ONE_OR_MORE = 3,
};
pub const NS_REQ_ZERO = NS_REQS.ZERO;
pub const NS_REQ_PRESENT = NS_REQS.PRESENT;
pub const NS_REQ_ALLOW_MULTIPLE = NS_REQS.ALLOW_MULTIPLE;
pub const NS_REQ_ONE_OR_MORE = NS_REQS.ONE_OR_MORE;

pub const NS_EVENTS = extern enum(i32) {
    LOOP = 65536,
    LAST_N = 1,
    LAST_SECS = 2,
    FROM_N = 4,
    FROM_START = 8,
};
pub const NS_EVENT_LOOP = NS_EVENTS.LOOP;
pub const NS_EVENT_LAST_N = NS_EVENTS.LAST_N;
pub const NS_EVENT_LAST_SECS = NS_EVENTS.LAST_SECS;
pub const NS_EVENT_FROM_N = NS_EVENTS.FROM_N;
pub const NS_EVENT_FROM_START = NS_EVENTS.FROM_START;

pub const NS_MODE_CHANGE = extern enum(i32) {
    COMMIT = 0,
    UNCOMMIT = 1,
    FLUSH = 2,
    COMMIT_STATE = 3,
    SAVE = 4,
};
pub const NETSH_COMMIT = NS_MODE_CHANGE.COMMIT;
pub const NETSH_UNCOMMIT = NS_MODE_CHANGE.UNCOMMIT;
pub const NETSH_FLUSH = NS_MODE_CHANGE.FLUSH;
pub const NETSH_COMMIT_STATE = NS_MODE_CHANGE.COMMIT_STATE;
pub const NETSH_SAVE = NS_MODE_CHANGE.SAVE;

pub const TOKEN_VALUE = extern struct {
    pwszToken: [*:0]const u16,
    dwValue: u32,
};

pub const PGET_RESOURCE_STRING_FN = fn(
    dwMsgID: u32,
    lpBuffer: PWSTR,
    nBufferMax: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub const PNS_CONTEXT_COMMIT_FN = fn(
    dwAction: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub const PNS_CONTEXT_CONNECT_FN = fn(
    pwszMachine: [*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) u32;

pub const PNS_CONTEXT_DUMP_FN = fn(
    pwszRouter: [*:0]const u16,
    ppwcArguments: [*]PWSTR,
    dwArgCount: u32,
    pvData: *const c_void,
) callconv(@import("std").os.windows.WINAPI) u32;

pub const PNS_DLL_STOP_FN = fn(
    dwReserved: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub const PNS_HELPER_START_FN = fn(
    pguidParent: *const Guid,
    dwVersion: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub const PNS_HELPER_STOP_FN = fn(
    dwReserved: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub const PFN_HANDLE_CMD = fn(
    pwszMachine: [*:0]const u16,
    ppwcArguments: [*]PWSTR,
    dwCurrentIndex: u32,
    dwArgCount: u32,
    dwFlags: u32,
    pvData: *const c_void,
    pbDone: *BOOL,
) callconv(@import("std").os.windows.WINAPI) u32;

pub const PNS_OSVERSIONCHECK = fn(
    CIMOSType: u32,
    CIMOSProductSuite: u32,
    CIMOSVersion: [*:0]const u16,
    CIMOSBuildNumber: [*:0]const u16,
    CIMServicePackMajorVersion: [*:0]const u16,
    CIMServicePackMinorVersion: [*:0]const u16,
    uiReserved: u32,
    dwReserved: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub const NS_HELPER_ATTRIBUTES = extern struct {
    Anonymous: extern union {
        Anonymous: extern struct {
            dwVersion: u32,
            dwReserved: u32,
        },
        _ullAlign: u64,
    },
    guidHelper: Guid,
    pfnStart: PNS_HELPER_START_FN,
    pfnStop: PNS_HELPER_STOP_FN,
};

pub const CMD_ENTRY = extern struct {
    pwszCmdToken: [*:0]const u16,
    pfnCmdHandler: PFN_HANDLE_CMD,
    dwShortCmdHelpToken: u32,
    dwCmdHlpToken: u32,
    dwFlags: u32,
    pOsVersionCheck: PNS_OSVERSIONCHECK,
};

pub const CMD_GROUP_ENTRY = extern struct {
    pwszCmdGroupToken: [*:0]const u16,
    dwShortCmdHelpToken: u32,
    ulCmdGroupSize: u32,
    dwFlags: u32,
    pCmdGroup: *CMD_ENTRY,
    pOsVersionCheck: PNS_OSVERSIONCHECK,
};

pub const NS_CONTEXT_ATTRIBUTES = extern struct {
    Anonymous: extern union {
        Anonymous: extern struct {
            dwVersion: u32,
            dwReserved: u32,
        },
        _ullAlign: u64,
    },
    pwszContext: PWSTR,
    guidHelper: Guid,
    dwFlags: u32,
    ulPriority: u32,
    ulNumTopCmds: u32,
    pTopCmds: *CMD_ENTRY,
    ulNumGroups: u32,
    pCmdGroups: *CMD_GROUP_ENTRY,
    pfnCommitFn: PNS_CONTEXT_COMMIT_FN,
    pfnDumpFn: PNS_CONTEXT_DUMP_FN,
    pfnConnectFn: PNS_CONTEXT_CONNECT_FN,
    pReserved: *c_void,
    pfnOsVersionCheck: PNS_OSVERSIONCHECK,
};

pub const TAG_TYPE = extern struct {
    pwszTag: [*:0]const u16,
    dwRequired: u32,
    bPresent: BOOL,
};

pub const PNS_DLL_INIT_FN = fn(
    dwNetshVersion: u32,
    pReserved: *c_void,
) callconv(@import("std").os.windows.WINAPI) u32;


//--------------------------------------------------------------------------------
// Section: Functions (8)
//--------------------------------------------------------------------------------
// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "NETSH" fn MatchEnumTag(
    hModule: HANDLE,
    pwcArg: [*:0]const u16,
    dwNumArg: u32,
    pEnumTable: *const TOKEN_VALUE,
    pdwValue: *u32,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "NETSH" fn MatchToken(
    pwszUserToken: [*:0]const u16,
    pwszCmdToken: [*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "NETSH" fn PreprocessCommand(
    hModule: HANDLE,
    ppwcArguments: [*]PWSTR,
    dwCurrentIndex: u32,
    dwArgCount: u32,
    pttTags: ?[*]TAG_TYPE,
    dwTagCount: u32,
    dwMinArgs: u32,
    dwMaxArgs: u32,
    pdwTagType: ?*u32,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "NETSH" fn PrintError(
    hModule: HANDLE,
    dwErrId: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "NETSH" fn PrintMessageFromModule(
    hModule: HANDLE,
    dwMsgId: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "NETSH" fn PrintMessage(
    pwszFormat: [*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "NETSH" fn RegisterContext(
    pChildContext: *const NS_CONTEXT_ATTRIBUTES,
) callconv(@import("std").os.windows.WINAPI) u32;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "NETSH" fn RegisterHelper(
    pguidParentContext: *const Guid,
    pfnRegisterSubContext: *const NS_HELPER_ATTRIBUTES,
) callconv(@import("std").os.windows.WINAPI) u32;


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
// Section: Imports (4)
//--------------------------------------------------------------------------------
const Guid = @import("../zig.zig").Guid;
const PWSTR = @import("../system/system_services.zig").PWSTR;
const HANDLE = @import("../system/system_services.zig").HANDLE;
const BOOL = @import("../system/system_services.zig").BOOL;

test {
    // The following '_ = <FuncPtrType>' lines are a workaround for https://github.com/ziglang/zig/issues/4476
    if (@hasDecl(@This(), "PGET_RESOURCE_STRING_FN")) { _ = PGET_RESOURCE_STRING_FN; }
    if (@hasDecl(@This(), "PNS_CONTEXT_COMMIT_FN")) { _ = PNS_CONTEXT_COMMIT_FN; }
    if (@hasDecl(@This(), "PNS_CONTEXT_CONNECT_FN")) { _ = PNS_CONTEXT_CONNECT_FN; }
    if (@hasDecl(@This(), "PNS_CONTEXT_DUMP_FN")) { _ = PNS_CONTEXT_DUMP_FN; }
    if (@hasDecl(@This(), "PNS_DLL_STOP_FN")) { _ = PNS_DLL_STOP_FN; }
    if (@hasDecl(@This(), "PNS_HELPER_START_FN")) { _ = PNS_HELPER_START_FN; }
    if (@hasDecl(@This(), "PNS_HELPER_STOP_FN")) { _ = PNS_HELPER_STOP_FN; }
    if (@hasDecl(@This(), "PFN_HANDLE_CMD")) { _ = PFN_HANDLE_CMD; }
    if (@hasDecl(@This(), "PNS_OSVERSIONCHECK")) { _ = PNS_OSVERSIONCHECK; }
    if (@hasDecl(@This(), "PNS_DLL_INIT_FN")) { _ = PNS_DLL_INIT_FN; }

    @setEvalBranchQuota(
        @import("std").meta.declarations(@This()).len * 3
    );

    // reference all the pub declarations
    if (!@import("std").builtin.is_test) return;
    inline for (@import("std").meta.declarations(@This())) |decl| {
        if (decl.is_pub) {
            _ = decl;
        }
    }
}