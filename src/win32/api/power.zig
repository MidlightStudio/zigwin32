//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Functions (8)
//--------------------------------------------------------------------------------
pub extern "POWRPROF" fn PowerWriteACValueIndex(
    RootPowerKey: HKEY,
    SchemeGuid: *const Guid,
    SubGroupOfPowerSettingsGuid: ?*const Guid,
    PowerSettingGuid: ?*const Guid,
    AcValueIndex: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "POWRPROF" fn PowerWriteDCValueIndex(
    RootPowerKey: HKEY,
    SchemeGuid: *const Guid,
    SubGroupOfPowerSettingsGuid: ?*const Guid,
    PowerSettingGuid: ?*const Guid,
    DcValueIndex: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "POWRPROF" fn PowerReadACValueIndex(
    RootPowerKey: HKEY,
    SchemeGuid: ?*const Guid,
    SubGroupOfPowerSettingsGuid: ?*const Guid,
    PowerSettingGuid: ?*const Guid,
    AcValueIndex: *u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "POWRPROF" fn PowerReadDCValueIndex(
    RootPowerKey: HKEY,
    SchemeGuid: ?*const Guid,
    SubGroupOfPowerSettingsGuid: ?*const Guid,
    PowerSettingGuid: ?*const Guid,
    DcValueIndex: *u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "POWRPROF" fn PowerReadACDefaultIndex(
    RootPowerKey: HKEY,
    SchemePersonalityGuid: *const Guid,
    SubGroupOfPowerSettingsGuid: ?*const Guid,
    PowerSettingGuid: *const Guid,
    AcDefaultIndex: *u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "POWRPROF" fn PowerReadDCDefaultIndex(
    RootPowerKey: HKEY,
    SchemePersonalityGuid: *const Guid,
    SubGroupOfPowerSettingsGuid: ?*const Guid,
    PowerSettingGuid: *const Guid,
    DcDefaultIndex: *u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "POWRPROF" fn PowerWriteACDefaultIndex(
    RootSystemPowerKey: HKEY,
    SchemePersonalityGuid: *const Guid,
    SubGroupOfPowerSettingsGuid: ?*const Guid,
    PowerSettingGuid: *const Guid,
    DefaultAcIndex: u32,
) callconv(@import("std").os.windows.WINAPI) u32;

pub extern "POWRPROF" fn PowerWriteDCDefaultIndex(
    RootSystemPowerKey: HKEY,
    SchemePersonalityGuid: *const Guid,
    SubGroupOfPowerSettingsGuid: ?*const Guid,
    PowerSettingGuid: *const Guid,
    DefaultDcIndex: u32,
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
// Section: Imports (2)
//--------------------------------------------------------------------------------
const Guid = @import("../zig.zig").Guid;
const HKEY = @import("windows_programming.zig").HKEY;

test {
    const constant_export_count = 0;
    const type_export_count = 0;
    const enum_value_export_count = 0;
    const com_iface_id_export_count = 0;
    const com_class_id_export_count = 0;
    const func_export_count = 8;
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