//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (23)
//--------------------------------------------------------------------------------
pub const EXCEPTION_DISPOSITION = extern enum(i32) {
    ExceptionContinueExecution = 0,
    ExceptionContinueSearch = 1,
    ExceptionNestedException = 2,
    ExceptionCollidedUnwind = 3,
};
pub const ExceptionContinueExecution = EXCEPTION_DISPOSITION.ExceptionContinueExecution;
pub const ExceptionContinueSearch = EXCEPTION_DISPOSITION.ExceptionContinueSearch;
pub const ExceptionNestedException = EXCEPTION_DISPOSITION.ExceptionNestedException;
pub const ExceptionCollidedUnwind = EXCEPTION_DISPOSITION.ExceptionCollidedUnwind;

pub const COMPARTMENT_ID = extern enum(i32) {
    UNSPECIFIED_COMPARTMENT_ID = 0,
    DEFAULT_COMPARTMENT_ID = 1,
};
pub const UNSPECIFIED_COMPARTMENT_ID = COMPARTMENT_ID.UNSPECIFIED_COMPARTMENT_ID;
pub const DEFAULT_COMPARTMENT_ID = COMPARTMENT_ID.DEFAULT_COMPARTMENT_ID;

pub const LUID = extern struct {
    LowPart: u32,
    HighPart: i32,
};

pub const QUAD = extern struct {
    Anonymous: QUAD._Anonymous_e__Union,
    const _Anonymous_e__Union = u32; // TODO: generate this nested type!
};

pub const EVENT_TYPE = extern enum(i32) {
    NotificationEvent = 0,
    SynchronizationEvent = 1,
};
pub const NotificationEvent = EVENT_TYPE.NotificationEvent;
pub const SynchronizationEvent = EVENT_TYPE.SynchronizationEvent;

pub const TIMER_TYPE = extern enum(i32) {
    NotificationTimer = 0,
    SynchronizationTimer = 1,
};
pub const NotificationTimer = TIMER_TYPE.NotificationTimer;
pub const SynchronizationTimer = TIMER_TYPE.SynchronizationTimer;

pub const WAIT_TYPE = extern enum(i32) {
    WaitAll = 0,
    WaitAny = 1,
    WaitNotification = 2,
    WaitDequeue = 3,
};
pub const WaitAll = WAIT_TYPE.WaitAll;
pub const WaitAny = WAIT_TYPE.WaitAny;
pub const WaitNotification = WAIT_TYPE.WaitNotification;
pub const WaitDequeue = WAIT_TYPE.WaitDequeue;

pub const CSTRING = extern struct {
    Length: u16,
    MaximumLength: u16,
    Buffer: *const i8,
};

pub const LIST_ENTRY = extern struct {
    Flink: *LIST_ENTRY,
    Blink: *LIST_ENTRY,
};

pub const SINGLE_LIST_ENTRY = extern struct {
    Next: *SINGLE_LIST_ENTRY,
};

pub const RTL_BALANCED_NODE = extern struct {
    Anonymous1: RTL_BALANCED_NODE._Anonymous1_e__Union,
    Anonymous2: RTL_BALANCED_NODE._Anonymous2_e__Union,
    const _Anonymous1_e__Union = u32; // TODO: generate this nested type!
    const _Anonymous2_e__Union = u32; // TODO: generate this nested type!
};

pub const LIST_ENTRY32 = extern struct {
    Flink: u32,
    Blink: u32,
};

pub const LIST_ENTRY64 = extern struct {
    Flink: u64,
    Blink: u64,
};

pub const SINGLE_LIST_ENTRY32 = extern struct {
    Next: u32,
};

pub const WNF_STATE_NAME = extern struct {
    Data: [2]u32,
};

pub const STRING32 = extern struct {
    Length: u16,
    MaximumLength: u16,
    Buffer: u32,
};

pub const STRING64 = extern struct {
    Length: u16,
    MaximumLength: u16,
    Buffer: u64,
};

pub const OBJECT_ATTRIBUTES64 = extern struct {
    Length: u32,
    RootDirectory: u64,
    ObjectName: u64,
    Attributes: u32,
    SecurityDescriptor: u64,
    SecurityQualityOfService: u64,
};

pub const OBJECT_ATTRIBUTES32 = extern struct {
    Length: u32,
    RootDirectory: u32,
    ObjectName: u32,
    Attributes: u32,
    SecurityDescriptor: u32,
    SecurityQualityOfService: u32,
};

pub const OBJECTID = extern struct {
    Lineage: Guid,
    Uniquifier: u32,
};

pub const EXCEPTION_ROUTINE = fn(
    ExceptionRecord: *EXCEPTION_RECORD,
    EstablisherFrame: *c_void,
    ContextRecord: *CONTEXT,
    DispatcherContext: *c_void,
) callconv(@import("std").os.windows.WINAPI) EXCEPTION_DISPOSITION;

pub const NT_PRODUCT_TYPE = extern enum(i32) {
    NtProductWinNt = 1,
    NtProductLanManNt = 2,
    NtProductServer = 3,
};
pub const NtProductWinNt = NT_PRODUCT_TYPE.NtProductWinNt;
pub const NtProductLanManNt = NT_PRODUCT_TYPE.NtProductLanManNt;
pub const NtProductServer = NT_PRODUCT_TYPE.NtProductServer;

pub const SUITE_TYPE = extern enum(i32) {
    SmallBusiness = 0,
    Enterprise = 1,
    BackOffice = 2,
    CommunicationServer = 3,
    TerminalServer = 4,
    SmallBusinessRestricted = 5,
    EmbeddedNT = 6,
    DataCenter = 7,
    SingleUserTS = 8,
    Personal = 9,
    Blade = 10,
    EmbeddedRestricted = 11,
    SecurityAppliance = 12,
    StorageServer = 13,
    ComputeServer = 14,
    WHServer = 15,
    PhoneNT = 16,
    MultiUserTS = 17,
    MaxSuiteType = 18,
};
pub const SmallBusiness = SUITE_TYPE.SmallBusiness;
pub const Enterprise = SUITE_TYPE.Enterprise;
pub const BackOffice = SUITE_TYPE.BackOffice;
pub const CommunicationServer = SUITE_TYPE.CommunicationServer;
pub const TerminalServer = SUITE_TYPE.TerminalServer;
pub const SmallBusinessRestricted = SUITE_TYPE.SmallBusinessRestricted;
pub const EmbeddedNT = SUITE_TYPE.EmbeddedNT;
pub const DataCenter = SUITE_TYPE.DataCenter;
pub const SingleUserTS = SUITE_TYPE.SingleUserTS;
pub const Personal = SUITE_TYPE.Personal;
pub const Blade = SUITE_TYPE.Blade;
pub const EmbeddedRestricted = SUITE_TYPE.EmbeddedRestricted;
pub const SecurityAppliance = SUITE_TYPE.SecurityAppliance;
pub const StorageServer = SUITE_TYPE.StorageServer;
pub const ComputeServer = SUITE_TYPE.ComputeServer;
pub const WHServer = SUITE_TYPE.WHServer;
pub const PhoneNT = SUITE_TYPE.PhoneNT;
pub const MultiUserTS = SUITE_TYPE.MultiUserTS;
pub const MaxSuiteType = SUITE_TYPE.MaxSuiteType;


//--------------------------------------------------------------------------------
// Section: Functions (0)
//--------------------------------------------------------------------------------

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
// Section: Imports (3)
//--------------------------------------------------------------------------------
const Guid = @import("../zig.zig").Guid;
const CONTEXT = @import("debug.zig").CONTEXT;
const EXCEPTION_RECORD = @import("debug.zig").EXCEPTION_RECORD;

test {
    // The following '_ = <FuncPtrType>' lines are a workaround for https://github.com/ziglang/zig/issues/4476
    _ = EXCEPTION_ROUTINE;

    const constant_export_count = 0;
    const type_export_count = 23;
    const enum_value_export_count = 36;
    const com_iface_id_export_count = 0;
    const com_class_id_export_count = 0;
    const func_export_count = 0;
    const unicode_alias_count = 0;
    const import_count = 3;
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