//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (6)
//--------------------------------------------------------------------------------
pub const DPI_AWARENESS = extern enum(i32) {
    INVALID = -1,
    UNAWARE = 0,
    SYSTEM_AWARE = 1,
    PER_MONITOR_AWARE = 2,
};
pub const DPI_AWARENESS_INVALID = DPI_AWARENESS.INVALID;
pub const DPI_AWARENESS_UNAWARE = DPI_AWARENESS.UNAWARE;
pub const DPI_AWARENESS_SYSTEM_AWARE = DPI_AWARENESS.SYSTEM_AWARE;
pub const DPI_AWARENESS_PER_MONITOR_AWARE = DPI_AWARENESS.PER_MONITOR_AWARE;

pub const DPI_HOSTING_BEHAVIOR = extern enum(i32) {
    INVALID = -1,
    DEFAULT = 0,
    MIXED = 1,
};
pub const DPI_HOSTING_BEHAVIOR_INVALID = DPI_HOSTING_BEHAVIOR.INVALID;
pub const DPI_HOSTING_BEHAVIOR_DEFAULT = DPI_HOSTING_BEHAVIOR.DEFAULT;
pub const DPI_HOSTING_BEHAVIOR_MIXED = DPI_HOSTING_BEHAVIOR.MIXED;

pub const DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS = extern enum(i32) {
    DCDC_DEFAULT = 0,
    DCDC_DISABLE_FONT_UPDATE = 1,
    DCDC_DISABLE_RELAYOUT = 2,
};
pub const DCDC_DEFAULT = DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS.DCDC_DEFAULT;
pub const DCDC_DISABLE_FONT_UPDATE = DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS.DCDC_DISABLE_FONT_UPDATE;
pub const DCDC_DISABLE_RELAYOUT = DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS.DCDC_DISABLE_RELAYOUT;

pub const DIALOG_DPI_CHANGE_BEHAVIORS = extern enum(i32) {
    DDC_DEFAULT = 0,
    DDC_DISABLE_ALL = 1,
    DDC_DISABLE_RESIZE = 2,
    DDC_DISABLE_CONTROL_RELAYOUT = 4,
};
pub const DDC_DEFAULT = DIALOG_DPI_CHANGE_BEHAVIORS.DDC_DEFAULT;
pub const DDC_DISABLE_ALL = DIALOG_DPI_CHANGE_BEHAVIORS.DDC_DISABLE_ALL;
pub const DDC_DISABLE_RESIZE = DIALOG_DPI_CHANGE_BEHAVIORS.DDC_DISABLE_RESIZE;
pub const DDC_DISABLE_CONTROL_RELAYOUT = DIALOG_DPI_CHANGE_BEHAVIORS.DDC_DISABLE_CONTROL_RELAYOUT;

pub const PROCESS_DPI_AWARENESS = extern enum(i32) {
    PROCESS_DPI_UNAWARE = 0,
    PROCESS_SYSTEM_DPI_AWARE = 1,
    PROCESS_PER_MONITOR_DPI_AWARE = 2,
};
pub const PROCESS_DPI_UNAWARE = PROCESS_DPI_AWARENESS.PROCESS_DPI_UNAWARE;
pub const PROCESS_SYSTEM_DPI_AWARE = PROCESS_DPI_AWARENESS.PROCESS_SYSTEM_DPI_AWARE;
pub const PROCESS_PER_MONITOR_DPI_AWARE = PROCESS_DPI_AWARENESS.PROCESS_PER_MONITOR_DPI_AWARE;

pub const MONITOR_DPI_TYPE = extern enum(i32) {
    MDT_EFFECTIVE_DPI = 0,
    MDT_ANGULAR_DPI = 1,
    MDT_RAW_DPI = 2,
    MDT_DEFAULT = 0,
};
pub const MDT_EFFECTIVE_DPI = MONITOR_DPI_TYPE.MDT_EFFECTIVE_DPI;
pub const MDT_ANGULAR_DPI = MONITOR_DPI_TYPE.MDT_ANGULAR_DPI;
pub const MDT_RAW_DPI = MONITOR_DPI_TYPE.MDT_RAW_DPI;
pub const MDT_DEFAULT = MONITOR_DPI_TYPE.MDT_DEFAULT;


//--------------------------------------------------------------------------------
// Section: Functions (28)
//--------------------------------------------------------------------------------
pub extern "UxTheme" fn OpenThemeDataForDpi(
    hwnd: HWND,
    pszClassList: [*:0]const u16,
    dpi: u32,
) callconv(@import("std").os.windows.WINAPI) ?*c_void;

pub extern "USER32" fn SetDialogControlDpiChangeBehavior(
    hWnd: HWND,
    mask: DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS,
    values: DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "USER32" fn GetDialogControlDpiChangeBehavior(
    hWnd: HWND,
) callconv(@import("std").os.windows.WINAPI) DIALOG_CONTROL_DPI_CHANGE_BEHAVIORS;

pub extern "USER32" fn SetDialogDpiChangeBehavior(
    hDlg: HWND,
    mask: DIALOG_DPI_CHANGE_BEHAVIORS,
    values: DIALOG_DPI_CHANGE_BEHAVIORS,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "USER32" fn GetDialogDpiChangeBehavior(
    hDlg: HWND,
) callconv(@import("std").os.windows.WINAPI) DIALOG_DPI_CHANGE_BEHAVIORS;

pub extern "USER32" fn GetSystemMetricsForDpi(
    nIndex: i32,
    dpi: u32,
) callconv(@import("std").os.windows.WINAPI) i32;

pub extern "USER32" fn AdjustWindowRectExForDpi(
    lpRect: *RECT,
    dwStyle: u32,
    bMenu: BOOL,
    dwExStyle: u32,
    dpi: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "USER32" fn LogicalToPhysicalPointForPerMonitorDPI(
    hWnd: HWND,
    lpPoint: *POINT,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "USER32" fn PhysicalToLogicalPointForPerMonitorDPI(
    hWnd: HWND,
    lpPoint: *POINT,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "USER32" fn SystemParametersInfoForDpi(
    uiAction: u32,
    uiParam: u32,
    pvParam: ?*c_void,
    fWinIni: u32,
    dpi: u32,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "USER32" fn SetThreadDpiAwarenessContext(
    dpiContext: ?*c_void,
) callconv(@import("std").os.windows.WINAPI) ?*c_void;

pub extern "USER32" fn GetThreadDpiAwarenessContext(
) callconv(@import("std").os.windows.WINAPI) ?*c_void;

pub extern "USER32" fn GetWindowDpiAwarenessContext(
    hwnd: HWND,
) callconv(@import("std").os.windows.WINAPI) ?*c_void;

pub extern "USER32" fn GetAwarenessFromDpiAwarenessContext(
    value: ?*c_void,
) callconv(@import("std").os.windows.WINAPI) DPI_AWARENESS;

pub extern "USER32" fn GetDpiFromDpiAwarenessContext(
    value: ?*c_void,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "USER32" fn AreDpiAwarenessContextsEqual(
    dpiContextA: ?*c_void,
    dpiContextB: ?*c_void,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "USER32" fn IsValidDpiAwarenessContext(
    value: ?*c_void,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "USER32" fn GetDpiForWindow(
    hwnd: HWND,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "USER32" fn GetDpiForSystem(
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "USER32" fn GetSystemDpiForProcess(
    hProcess: HANDLE,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "USER32" fn EnableNonClientDpiScaling(
    hwnd: HWND,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "USER32" fn SetProcessDpiAwarenessContext(
    value: ?*c_void,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "USER32" fn SetThreadDpiHostingBehavior(
    value: DPI_HOSTING_BEHAVIOR,
) callconv(@import("std").os.windows.WINAPI) DPI_HOSTING_BEHAVIOR;

pub extern "USER32" fn GetThreadDpiHostingBehavior(
) callconv(@import("std").os.windows.WINAPI) DPI_HOSTING_BEHAVIOR;

pub extern "USER32" fn GetWindowDpiHostingBehavior(
    hwnd: HWND,
) callconv(@import("std").os.windows.WINAPI) DPI_HOSTING_BEHAVIOR;

pub extern "api-ms-win-shcore-scaling-l1-1-1" fn SetProcessDpiAwareness(
    value: PROCESS_DPI_AWARENESS,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "api-ms-win-shcore-scaling-l1-1-1" fn GetProcessDpiAwareness(
    hprocess: HANDLE,
    value: *PROCESS_DPI_AWARENESS,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "api-ms-win-shcore-scaling-l1-1-1" fn GetDpiForMonitor(
    hmonitor: HMONITOR,
    dpiType: MONITOR_DPI_TYPE,
    dpiX: *u32,
    dpiY: *u32,
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
const HMONITOR = @import("gdi.zig").HMONITOR;
const PWSTR = @import("system_services.zig").PWSTR;
const HRESULT = @import("com.zig").HRESULT;
const POINT = @import("display_devices.zig").POINT;
const RECT = @import("display_devices.zig").RECT;
const HANDLE = @import("system_services.zig").HANDLE;
const BOOL = @import("system_services.zig").BOOL;
const HWND = @import("windows_and_messaging.zig").HWND;

test {
    const constant_export_count = 0;
    const type_export_count = 6;
    const enum_value_export_count = 21;
    const com_iface_id_export_count = 0;
    const com_class_id_export_count = 0;
    const func_export_count = 28;
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