//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Functions (3)
//--------------------------------------------------------------------------------
pub extern "WSClient" fn CheckDeveloperLicense(
    pExpiration: *FILETIME,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "WSClient" fn AcquireDeveloperLicense(
    hwndParent: HWND,
    pExpiration: *FILETIME,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "WSClient" fn RemoveDeveloperLicense(
    hwndParent: HWND,
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
// Section: Imports (3)
//--------------------------------------------------------------------------------
const FILETIME = @import("windows_programming.zig").FILETIME;
const HWND = @import("windows_and_messaging.zig").HWND;
const HRESULT = @import("com.zig").HRESULT;

test {
    const constant_export_count = 0;
    const type_export_count = 0;
    const enum_value_export_count = 0;
    const com_iface_id_export_count = 0;
    const com_class_id_export_count = 0;
    const func_export_count = 3;
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