//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (3)
//--------------------------------------------------------------------------------
pub const NAMED_PIPE_HANDLE_STATE = extern enum(u32) {
    NOWAIT = 1,
    READMODE_MESSAGE = 2,
};
pub const PIPE_NOWAIT = NAMED_PIPE_HANDLE_STATE.NOWAIT;
pub const PIPE_READMODE_MESSAGE = NAMED_PIPE_HANDLE_STATE.READMODE_MESSAGE;

pub const WAIT_NAMED_PIPE_TIME_OUT_FLAGS = extern enum(u32) {
    USE_DEFAULT_WAIT = 0,
    WAIT_FOREVER = 4294967295,
};
pub const NMPWAIT_USE_DEFAULT_WAIT = WAIT_NAMED_PIPE_TIME_OUT_FLAGS.USE_DEFAULT_WAIT;
pub const NMPWAIT_WAIT_FOREVER = WAIT_NAMED_PIPE_TIME_OUT_FLAGS.WAIT_FOREVER;

pub const NAMED_PIPE_INFO_FLAGS = extern enum(u32) {
    CLIENT_END = 0,
    SERVER_END = 1,
    TYPE_BYTE = 0,
    TYPE_MESSAGE = 4,
    _,
    pub fn initFlags(o: struct {
        CLIENT_END: u1 = 0,
        SERVER_END: u1 = 0,
        TYPE_BYTE: u1 = 0,
        TYPE_MESSAGE: u1 = 0,
    }) NAMED_PIPE_INFO_FLAGS {
        return @intToEnum(NAMED_PIPE_INFO_FLAGS,
              (if (o.CLIENT_END == 1) @enumToInt(NAMED_PIPE_INFO_FLAGS.CLIENT_END) else 0)
            | (if (o.SERVER_END == 1) @enumToInt(NAMED_PIPE_INFO_FLAGS.SERVER_END) else 0)
            | (if (o.TYPE_BYTE == 1) @enumToInt(NAMED_PIPE_INFO_FLAGS.TYPE_BYTE) else 0)
            | (if (o.TYPE_MESSAGE == 1) @enumToInt(NAMED_PIPE_INFO_FLAGS.TYPE_MESSAGE) else 0)
        );
    }
};
pub const PIPE_CLIENT_END = NAMED_PIPE_INFO_FLAGS.CLIENT_END;
pub const PIPE_SERVER_END = NAMED_PIPE_INFO_FLAGS.SERVER_END;
pub const PIPE_TYPE_BYTE = NAMED_PIPE_INFO_FLAGS.TYPE_BYTE;
pub const PIPE_TYPE_MESSAGE = NAMED_PIPE_INFO_FLAGS.TYPE_MESSAGE;


//--------------------------------------------------------------------------------
// Section: Functions (22)
//--------------------------------------------------------------------------------
// TODO: this type is limited to platform 'windows5.0'
pub extern "KERNEL32" fn CreateNamedPipeA(
    lpName: [*:0]const u8,
    dwOpenMode: u32,
    dwPipeMode: u32,
    nMaxInstances: u32,
    nOutBufferSize: u32,
    nInBufferSize: u32,
    nDefaultTimeOut: u32,
    lpSecurityAttributes: ?*SECURITY_ATTRIBUTES,
) callconv(@import("std").os.windows.WINAPI) HANDLE;

// TODO: this type is limited to platform 'windows5.0'
pub extern "KERNEL32" fn GetNamedPipeHandleStateA(
    hNamedPipe: HANDLE,
    lpState: ?*NAMED_PIPE_HANDLE_STATE,
    lpCurInstances: ?*u32,
    lpMaxCollectionCount: ?*u32,
    lpCollectDataTimeout: ?*u32,
    lpUserName: ?[*:0]u8,
    nMaxUserNameSize: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "KERNEL32" fn CallNamedPipeA(
    lpNamedPipeName: [*:0]const u8,
    // TODO: what to do with BytesParamIndex 2?
    lpInBuffer: ?*c_void,
    nInBufferSize: u32,
    // TODO: what to do with BytesParamIndex 4?
    lpOutBuffer: ?*c_void,
    nOutBufferSize: u32,
    lpBytesRead: *u32,
    nTimeOut: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "KERNEL32" fn WaitNamedPipeA(
    lpNamedPipeName: [*:0]const u8,
    nTimeOut: WAIT_NAMED_PIPE_TIME_OUT_FLAGS,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows6.0.6000'
pub extern "KERNEL32" fn GetNamedPipeClientComputerNameA(
    Pipe: HANDLE,
    // TODO: what to do with BytesParamIndex 2?
    ClientComputerName: PSTR,
    ClientComputerNameLength: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows6.0.6000'
pub extern "KERNEL32" fn GetNamedPipeClientProcessId(
    Pipe: HANDLE,
    ClientProcessId: *u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows6.0.6000'
pub extern "KERNEL32" fn GetNamedPipeClientSessionId(
    Pipe: HANDLE,
    ClientSessionId: *u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows6.0.6000'
pub extern "KERNEL32" fn GetNamedPipeServerProcessId(
    Pipe: HANDLE,
    ServerProcessId: *u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows6.0.6000'
pub extern "KERNEL32" fn GetNamedPipeServerSessionId(
    Pipe: HANDLE,
    ServerSessionId: *u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "KERNEL32" fn CreatePipe(
    hReadPipe: *HANDLE,
    hWritePipe: *HANDLE,
    lpPipeAttributes: ?*SECURITY_ATTRIBUTES,
    nSize: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "KERNEL32" fn ConnectNamedPipe(
    hNamedPipe: HANDLE,
    lpOverlapped: ?*OVERLAPPED,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "KERNEL32" fn DisconnectNamedPipe(
    hNamedPipe: HANDLE,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "KERNEL32" fn SetNamedPipeHandleState(
    hNamedPipe: HANDLE,
    lpMode: ?*u32,
    lpMaxCollectionCount: ?*u32,
    lpCollectDataTimeout: ?*u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "KERNEL32" fn PeekNamedPipe(
    hNamedPipe: HANDLE,
    // TODO: what to do with BytesParamIndex 2?
    lpBuffer: ?*c_void,
    nBufferSize: u32,
    lpBytesRead: ?*u32,
    lpTotalBytesAvail: ?*u32,
    lpBytesLeftThisMessage: ?*u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "KERNEL32" fn TransactNamedPipe(
    hNamedPipe: HANDLE,
    // TODO: what to do with BytesParamIndex 2?
    lpInBuffer: ?*c_void,
    nInBufferSize: u32,
    // TODO: what to do with BytesParamIndex 4?
    lpOutBuffer: ?*c_void,
    nOutBufferSize: u32,
    lpBytesRead: *u32,
    lpOverlapped: ?*OVERLAPPED,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "KERNEL32" fn CreateNamedPipeW(
    lpName: [*:0]const u16,
    dwOpenMode: u32,
    dwPipeMode: u32,
    nMaxInstances: u32,
    nOutBufferSize: u32,
    nInBufferSize: u32,
    nDefaultTimeOut: u32,
    lpSecurityAttributes: ?*SECURITY_ATTRIBUTES,
) callconv(@import("std").os.windows.WINAPI) HANDLE;

pub extern "KERNEL32" fn WaitNamedPipeW(
    lpNamedPipeName: [*:0]const u16,
    nTimeOut: WAIT_NAMED_PIPE_TIME_OUT_FLAGS,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "KERNEL32" fn GetNamedPipeClientComputerNameW(
    Pipe: HANDLE,
    // TODO: what to do with BytesParamIndex 2?
    ClientComputerName: PWSTR,
    ClientComputerNameLength: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.1.2600'
pub extern "ADVAPI32" fn ImpersonateNamedPipeClient(
    hNamedPipe: HANDLE,
) callconv(@import("std").os.windows.WINAPI) BOOL;

// TODO: this type is limited to platform 'windows5.0'
pub extern "KERNEL32" fn GetNamedPipeInfo(
    hNamedPipe: HANDLE,
    lpFlags: ?*NAMED_PIPE_INFO_FLAGS,
    lpOutBufferSize: ?*u32,
    lpInBufferSize: ?*u32,
    lpMaxInstances: ?*u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "KERNEL32" fn GetNamedPipeHandleStateW(
    hNamedPipe: HANDLE,
    lpState: ?*NAMED_PIPE_HANDLE_STATE,
    lpCurInstances: ?*u32,
    lpMaxCollectionCount: ?*u32,
    lpCollectDataTimeout: ?*u32,
    lpUserName: ?[*:0]u16,
    nMaxUserNameSize: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "KERNEL32" fn CallNamedPipeW(
    lpNamedPipeName: [*:0]const u16,
    // TODO: what to do with BytesParamIndex 2?
    lpInBuffer: ?*c_void,
    nInBufferSize: u32,
    // TODO: what to do with BytesParamIndex 4?
    lpOutBuffer: ?*c_void,
    nOutBufferSize: u32,
    lpBytesRead: *u32,
    nTimeOut: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;


//--------------------------------------------------------------------------------
// Section: Unicode Aliases (5)
//--------------------------------------------------------------------------------
pub usingnamespace switch (@import("../zig.zig").unicode_mode) {
    .ansi => struct {
        pub const CreateNamedPipe = CreateNamedPipeA;
        pub const GetNamedPipeHandleState = GetNamedPipeHandleStateA;
        pub const CallNamedPipe = CallNamedPipeA;
        pub const WaitNamedPipe = WaitNamedPipeA;
        pub const GetNamedPipeClientComputerName = GetNamedPipeClientComputerNameA;
    },
    .wide => struct {
        pub const CreateNamedPipe = CreateNamedPipeW;
        pub const GetNamedPipeHandleState = GetNamedPipeHandleStateW;
        pub const CallNamedPipe = CallNamedPipeW;
        pub const WaitNamedPipe = WaitNamedPipeW;
        pub const GetNamedPipeClientComputerName = GetNamedPipeClientComputerNameW;
    },
    .unspecified => if (@import("builtin").is_test) struct {
        pub const CreateNamedPipe = *opaque{};
        pub const GetNamedPipeHandleState = *opaque{};
        pub const CallNamedPipe = *opaque{};
        pub const WaitNamedPipe = *opaque{};
        pub const GetNamedPipeClientComputerName = *opaque{};
    } else struct {
        pub const CreateNamedPipe = @compileError("'CreateNamedPipe' requires that UNICODE be set to true or false in the root module");
        pub const GetNamedPipeHandleState = @compileError("'GetNamedPipeHandleState' requires that UNICODE be set to true or false in the root module");
        pub const CallNamedPipe = @compileError("'CallNamedPipe' requires that UNICODE be set to true or false in the root module");
        pub const WaitNamedPipe = @compileError("'WaitNamedPipe' requires that UNICODE be set to true or false in the root module");
        pub const GetNamedPipeClientComputerName = @compileError("'GetNamedPipeClientComputerName' requires that UNICODE be set to true or false in the root module");
    },
};
//--------------------------------------------------------------------------------
// Section: Imports (6)
//--------------------------------------------------------------------------------
const SECURITY_ATTRIBUTES = @import("../security.zig").SECURITY_ATTRIBUTES;
const HANDLE = @import("../foundation.zig").HANDLE;
const PSTR = @import("../foundation.zig").PSTR;
const PWSTR = @import("../foundation.zig").PWSTR;
const BOOL = @import("../foundation.zig").BOOL;
const OVERLAPPED = @import("../system/system_services.zig").OVERLAPPED;

test {
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