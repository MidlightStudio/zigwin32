//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (9)
//--------------------------------------------------------------------------------
pub const WEB_SOCKET_HANDLE__ = extern struct {
    unused: i32,
};

pub const WEB_SOCKET_CLOSE_STATUS = extern enum(i32) {
    WEB_SOCKET_SUCCESS_CLOSE_STATUS = 1000,
    WEB_SOCKET_ENDPOINT_UNAVAILABLE_CLOSE_STATUS = 1001,
    WEB_SOCKET_PROTOCOL_ERROR_CLOSE_STATUS = 1002,
    WEB_SOCKET_INVALID_DATA_TYPE_CLOSE_STATUS = 1003,
    WEB_SOCKET_EMPTY_CLOSE_STATUS = 1005,
    WEB_SOCKET_ABORTED_CLOSE_STATUS = 1006,
    WEB_SOCKET_INVALID_PAYLOAD_CLOSE_STATUS = 1007,
    WEB_SOCKET_POLICY_VIOLATION_CLOSE_STATUS = 1008,
    WEB_SOCKET_MESSAGE_TOO_BIG_CLOSE_STATUS = 1009,
    WEB_SOCKET_UNSUPPORTED_EXTENSIONS_CLOSE_STATUS = 1010,
    WEB_SOCKET_SERVER_ERROR_CLOSE_STATUS = 1011,
    WEB_SOCKET_SECURE_HANDSHAKE_ERROR_CLOSE_STATUS = 1015,
};
pub const WEB_SOCKET_SUCCESS_CLOSE_STATUS = WEB_SOCKET_CLOSE_STATUS.WEB_SOCKET_SUCCESS_CLOSE_STATUS;
pub const WEB_SOCKET_ENDPOINT_UNAVAILABLE_CLOSE_STATUS = WEB_SOCKET_CLOSE_STATUS.WEB_SOCKET_ENDPOINT_UNAVAILABLE_CLOSE_STATUS;
pub const WEB_SOCKET_PROTOCOL_ERROR_CLOSE_STATUS = WEB_SOCKET_CLOSE_STATUS.WEB_SOCKET_PROTOCOL_ERROR_CLOSE_STATUS;
pub const WEB_SOCKET_INVALID_DATA_TYPE_CLOSE_STATUS = WEB_SOCKET_CLOSE_STATUS.WEB_SOCKET_INVALID_DATA_TYPE_CLOSE_STATUS;
pub const WEB_SOCKET_EMPTY_CLOSE_STATUS = WEB_SOCKET_CLOSE_STATUS.WEB_SOCKET_EMPTY_CLOSE_STATUS;
pub const WEB_SOCKET_ABORTED_CLOSE_STATUS = WEB_SOCKET_CLOSE_STATUS.WEB_SOCKET_ABORTED_CLOSE_STATUS;
pub const WEB_SOCKET_INVALID_PAYLOAD_CLOSE_STATUS = WEB_SOCKET_CLOSE_STATUS.WEB_SOCKET_INVALID_PAYLOAD_CLOSE_STATUS;
pub const WEB_SOCKET_POLICY_VIOLATION_CLOSE_STATUS = WEB_SOCKET_CLOSE_STATUS.WEB_SOCKET_POLICY_VIOLATION_CLOSE_STATUS;
pub const WEB_SOCKET_MESSAGE_TOO_BIG_CLOSE_STATUS = WEB_SOCKET_CLOSE_STATUS.WEB_SOCKET_MESSAGE_TOO_BIG_CLOSE_STATUS;
pub const WEB_SOCKET_UNSUPPORTED_EXTENSIONS_CLOSE_STATUS = WEB_SOCKET_CLOSE_STATUS.WEB_SOCKET_UNSUPPORTED_EXTENSIONS_CLOSE_STATUS;
pub const WEB_SOCKET_SERVER_ERROR_CLOSE_STATUS = WEB_SOCKET_CLOSE_STATUS.WEB_SOCKET_SERVER_ERROR_CLOSE_STATUS;
pub const WEB_SOCKET_SECURE_HANDSHAKE_ERROR_CLOSE_STATUS = WEB_SOCKET_CLOSE_STATUS.WEB_SOCKET_SECURE_HANDSHAKE_ERROR_CLOSE_STATUS;

pub const WEB_SOCKET_PROPERTY_TYPE = extern enum(i32) {
    WEB_SOCKET_RECEIVE_BUFFER_SIZE_PROPERTY_TYPE = 0,
    WEB_SOCKET_SEND_BUFFER_SIZE_PROPERTY_TYPE = 1,
    WEB_SOCKET_DISABLE_MASKING_PROPERTY_TYPE = 2,
    WEB_SOCKET_ALLOCATED_BUFFER_PROPERTY_TYPE = 3,
    WEB_SOCKET_DISABLE_UTF8_VERIFICATION_PROPERTY_TYPE = 4,
    WEB_SOCKET_KEEPALIVE_INTERVAL_PROPERTY_TYPE = 5,
    WEB_SOCKET_SUPPORTED_VERSIONS_PROPERTY_TYPE = 6,
};
pub const WEB_SOCKET_RECEIVE_BUFFER_SIZE_PROPERTY_TYPE = WEB_SOCKET_PROPERTY_TYPE.WEB_SOCKET_RECEIVE_BUFFER_SIZE_PROPERTY_TYPE;
pub const WEB_SOCKET_SEND_BUFFER_SIZE_PROPERTY_TYPE = WEB_SOCKET_PROPERTY_TYPE.WEB_SOCKET_SEND_BUFFER_SIZE_PROPERTY_TYPE;
pub const WEB_SOCKET_DISABLE_MASKING_PROPERTY_TYPE = WEB_SOCKET_PROPERTY_TYPE.WEB_SOCKET_DISABLE_MASKING_PROPERTY_TYPE;
pub const WEB_SOCKET_ALLOCATED_BUFFER_PROPERTY_TYPE = WEB_SOCKET_PROPERTY_TYPE.WEB_SOCKET_ALLOCATED_BUFFER_PROPERTY_TYPE;
pub const WEB_SOCKET_DISABLE_UTF8_VERIFICATION_PROPERTY_TYPE = WEB_SOCKET_PROPERTY_TYPE.WEB_SOCKET_DISABLE_UTF8_VERIFICATION_PROPERTY_TYPE;
pub const WEB_SOCKET_KEEPALIVE_INTERVAL_PROPERTY_TYPE = WEB_SOCKET_PROPERTY_TYPE.WEB_SOCKET_KEEPALIVE_INTERVAL_PROPERTY_TYPE;
pub const WEB_SOCKET_SUPPORTED_VERSIONS_PROPERTY_TYPE = WEB_SOCKET_PROPERTY_TYPE.WEB_SOCKET_SUPPORTED_VERSIONS_PROPERTY_TYPE;

pub const WEB_SOCKET_ACTION_QUEUE = extern enum(i32) {
    WEB_SOCKET_SEND_ACTION_QUEUE = 1,
    WEB_SOCKET_RECEIVE_ACTION_QUEUE = 2,
    WEB_SOCKET_ALL_ACTION_QUEUE = 3,
};
pub const WEB_SOCKET_SEND_ACTION_QUEUE = WEB_SOCKET_ACTION_QUEUE.WEB_SOCKET_SEND_ACTION_QUEUE;
pub const WEB_SOCKET_RECEIVE_ACTION_QUEUE = WEB_SOCKET_ACTION_QUEUE.WEB_SOCKET_RECEIVE_ACTION_QUEUE;
pub const WEB_SOCKET_ALL_ACTION_QUEUE = WEB_SOCKET_ACTION_QUEUE.WEB_SOCKET_ALL_ACTION_QUEUE;

pub const WEB_SOCKET_BUFFER_TYPE = extern enum(i32) {
    WEB_SOCKET_UTF8_MESSAGE_BUFFER_TYPE = -2147483648,
    WEB_SOCKET_UTF8_FRAGMENT_BUFFER_TYPE = -2147483647,
    WEB_SOCKET_BINARY_MESSAGE_BUFFER_TYPE = -2147483646,
    WEB_SOCKET_BINARY_FRAGMENT_BUFFER_TYPE = -2147483645,
    WEB_SOCKET_CLOSE_BUFFER_TYPE = -2147483644,
    WEB_SOCKET_PING_PONG_BUFFER_TYPE = -2147483643,
    WEB_SOCKET_UNSOLICITED_PONG_BUFFER_TYPE = -2147483642,
};
pub const WEB_SOCKET_UTF8_MESSAGE_BUFFER_TYPE = WEB_SOCKET_BUFFER_TYPE.WEB_SOCKET_UTF8_MESSAGE_BUFFER_TYPE;
pub const WEB_SOCKET_UTF8_FRAGMENT_BUFFER_TYPE = WEB_SOCKET_BUFFER_TYPE.WEB_SOCKET_UTF8_FRAGMENT_BUFFER_TYPE;
pub const WEB_SOCKET_BINARY_MESSAGE_BUFFER_TYPE = WEB_SOCKET_BUFFER_TYPE.WEB_SOCKET_BINARY_MESSAGE_BUFFER_TYPE;
pub const WEB_SOCKET_BINARY_FRAGMENT_BUFFER_TYPE = WEB_SOCKET_BUFFER_TYPE.WEB_SOCKET_BINARY_FRAGMENT_BUFFER_TYPE;
pub const WEB_SOCKET_CLOSE_BUFFER_TYPE = WEB_SOCKET_BUFFER_TYPE.WEB_SOCKET_CLOSE_BUFFER_TYPE;
pub const WEB_SOCKET_PING_PONG_BUFFER_TYPE = WEB_SOCKET_BUFFER_TYPE.WEB_SOCKET_PING_PONG_BUFFER_TYPE;
pub const WEB_SOCKET_UNSOLICITED_PONG_BUFFER_TYPE = WEB_SOCKET_BUFFER_TYPE.WEB_SOCKET_UNSOLICITED_PONG_BUFFER_TYPE;

pub const WEB_SOCKET_ACTION = extern enum(i32) {
    WEB_SOCKET_NO_ACTION = 0,
    WEB_SOCKET_SEND_TO_NETWORK_ACTION = 1,
    WEB_SOCKET_INDICATE_SEND_COMPLETE_ACTION = 2,
    WEB_SOCKET_RECEIVE_FROM_NETWORK_ACTION = 3,
    WEB_SOCKET_INDICATE_RECEIVE_COMPLETE_ACTION = 4,
};
pub const WEB_SOCKET_NO_ACTION = WEB_SOCKET_ACTION.WEB_SOCKET_NO_ACTION;
pub const WEB_SOCKET_SEND_TO_NETWORK_ACTION = WEB_SOCKET_ACTION.WEB_SOCKET_SEND_TO_NETWORK_ACTION;
pub const WEB_SOCKET_INDICATE_SEND_COMPLETE_ACTION = WEB_SOCKET_ACTION.WEB_SOCKET_INDICATE_SEND_COMPLETE_ACTION;
pub const WEB_SOCKET_RECEIVE_FROM_NETWORK_ACTION = WEB_SOCKET_ACTION.WEB_SOCKET_RECEIVE_FROM_NETWORK_ACTION;
pub const WEB_SOCKET_INDICATE_RECEIVE_COMPLETE_ACTION = WEB_SOCKET_ACTION.WEB_SOCKET_INDICATE_RECEIVE_COMPLETE_ACTION;

pub const WEB_SOCKET_PROPERTY = extern struct {
    Type: WEB_SOCKET_PROPERTY_TYPE,
    pvValue: *c_void,
    ulValueSize: u32,
};

pub const WEB_SOCKET_HTTP_HEADER = extern struct {
    pcName: [*]u8,
    ulNameLength: u32,
    pcValue: [*]u8,
    ulValueLength: u32,
};

pub const WEB_SOCKET_BUFFER = u32; // TODO: implement StructOrUnion types?


//--------------------------------------------------------------------------------
// Section: Functions (13)
//--------------------------------------------------------------------------------
pub extern "websocket" fn WebSocketCreateClientHandle(
    pProperties: [*]const WEB_SOCKET_PROPERTY,
    ulPropertyCount: u32,
    phWebSocket: **WEB_SOCKET_HANDLE__,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "websocket" fn WebSocketBeginClientHandshake(
    hWebSocket: *WEB_SOCKET_HANDLE__,
    pszSubprotocols: ?[*]?PSTR,
    ulSubprotocolCount: u32,
    pszExtensions: ?[*]?PSTR,
    ulExtensionCount: u32,
    pInitialHeaders: ?[*]const WEB_SOCKET_HTTP_HEADER,
    ulInitialHeaderCount: u32,
    pAdditionalHeaders: [*]*WEB_SOCKET_HTTP_HEADER,
    pulAdditionalHeaderCount: *u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "websocket" fn WebSocketEndClientHandshake(
    hWebSocket: *WEB_SOCKET_HANDLE__,
    pResponseHeaders: [*]const WEB_SOCKET_HTTP_HEADER,
    ulReponseHeaderCount: u32,
    pulSelectedExtensions: ?[*]u32,
    pulSelectedExtensionCount: ?*u32,
    pulSelectedSubprotocol: ?*u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "websocket" fn WebSocketCreateServerHandle(
    pProperties: [*]const WEB_SOCKET_PROPERTY,
    ulPropertyCount: u32,
    phWebSocket: **WEB_SOCKET_HANDLE__,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "websocket" fn WebSocketBeginServerHandshake(
    hWebSocket: *WEB_SOCKET_HANDLE__,
    pszSubprotocolSelected: ?[*:0]const u8,
    pszExtensionSelected: ?[*]?PSTR,
    ulExtensionSelectedCount: u32,
    pRequestHeaders: [*]const WEB_SOCKET_HTTP_HEADER,
    ulRequestHeaderCount: u32,
    pResponseHeaders: [*]*WEB_SOCKET_HTTP_HEADER,
    pulResponseHeaderCount: *u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "websocket" fn WebSocketEndServerHandshake(
    hWebSocket: *WEB_SOCKET_HANDLE__,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "websocket" fn WebSocketSend(
    hWebSocket: *WEB_SOCKET_HANDLE__,
    BufferType: WEB_SOCKET_BUFFER_TYPE,
    pBuffer: ?*WEB_SOCKET_BUFFER,
    Context: ?*c_void,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "websocket" fn WebSocketReceive(
    hWebSocket: *WEB_SOCKET_HANDLE__,
    pBuffer: ?*WEB_SOCKET_BUFFER,
    pvContext: ?*c_void,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "websocket" fn WebSocketGetAction(
    hWebSocket: *WEB_SOCKET_HANDLE__,
    eActionQueue: WEB_SOCKET_ACTION_QUEUE,
    pDataBuffers: [*]WEB_SOCKET_BUFFER,
    pulDataBufferCount: *u32,
    pAction: *WEB_SOCKET_ACTION,
    pBufferType: *WEB_SOCKET_BUFFER_TYPE,
    pvApplicationContext: ?*?*c_void,
    pvActionContext: **c_void,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "websocket" fn WebSocketCompleteAction(
    hWebSocket: *WEB_SOCKET_HANDLE__,
    pvActionContext: *c_void,
    ulBytesTransferred: u32,
) callconv(@import("std").os.windows.WINAPI) void;

pub extern "websocket" fn WebSocketAbortHandle(
    hWebSocket: *WEB_SOCKET_HANDLE__,
) callconv(@import("std").os.windows.WINAPI) void;

pub extern "websocket" fn WebSocketDeleteHandle(
    hWebSocket: *WEB_SOCKET_HANDLE__,
) callconv(@import("std").os.windows.WINAPI) void;

pub extern "websocket" fn WebSocketGetGlobalProperty(
    eType: WEB_SOCKET_PROPERTY_TYPE,
    pvValue: [*]u8,
    ulSize: *u32,
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
// Section: Imports (2)
//--------------------------------------------------------------------------------
const PSTR = @import("system_services.zig").PSTR;
const HRESULT = @import("com.zig").HRESULT;

test {
    const constant_export_count = 0;
    const type_export_count = 9;
    const enum_value_export_count = 34;
    const com_iface_id_export_count = 0;
    const com_class_id_export_count = 0;
    const func_export_count = 13;
    const unicode_alias_count = 0;
    const import_count = 2;
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