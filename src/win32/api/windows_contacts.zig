//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (7)
//--------------------------------------------------------------------------------
const CLSID_Contact_Value = @import("../zig.zig").Guid.initString("61b68808-8eee-4fd1-acb8-3d804c8db056");
pub const CLSID_Contact = &CLSID_Contact_Value;

const CLSID_ContactManager_Value = @import("../zig.zig").Guid.initString("7165c8ab-af88-42bd-86fd-5310b4285a02");
pub const CLSID_ContactManager = &CLSID_ContactManager_Value;

const IID_IContactManager_Value = @import("../zig.zig").Guid.initString("ad553d98-deb1-474a-8e17-fc0c2075b738");
pub const IID_IContactManager = &IID_IContactManager_Value;
pub const IContactManager = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        Initialize: fn(
            self: *const IContactManager,
            pszAppName: [*:0]const u16,
            pszAppVersion: [*:0]const u16,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Load: fn(
            self: *const IContactManager,
            pszContactID: [*:0]const u16,
            ppContact: **IContact,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        MergeContactIDs: fn(
            self: *const IContactManager,
            pszNewContactID: [*:0]const u16,
            pszOldContactID: [*:0]const u16,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetMeContact: fn(
            self: *const IContactManager,
            ppMeContact: **IContact,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetMeContact: fn(
            self: *const IContactManager,
            pMeContact: *IContact,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetContactCollection: fn(
            self: *const IContactManager,
            ppContactCollection: **IContactCollection,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactManager_Initialize(self: *const T, pszAppName: [*:0]const u16, pszAppVersion: [*:0]const u16) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactManager.VTable, self.vtable).Initialize(@ptrCast(*const IContactManager, self), pszAppName, pszAppVersion);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactManager_Load(self: *const T, pszContactID: [*:0]const u16, ppContact: **IContact) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactManager.VTable, self.vtable).Load(@ptrCast(*const IContactManager, self), pszContactID, ppContact);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactManager_MergeContactIDs(self: *const T, pszNewContactID: [*:0]const u16, pszOldContactID: [*:0]const u16) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactManager.VTable, self.vtable).MergeContactIDs(@ptrCast(*const IContactManager, self), pszNewContactID, pszOldContactID);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactManager_GetMeContact(self: *const T, ppMeContact: **IContact) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactManager.VTable, self.vtable).GetMeContact(@ptrCast(*const IContactManager, self), ppMeContact);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactManager_SetMeContact(self: *const T, pMeContact: *IContact) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactManager.VTable, self.vtable).SetMeContact(@ptrCast(*const IContactManager, self), pMeContact);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactManager_GetContactCollection(self: *const T, ppContactCollection: **IContactCollection) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactManager.VTable, self.vtable).GetContactCollection(@ptrCast(*const IContactManager, self), ppContactCollection);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

const IID_IContactCollection_Value = @import("../zig.zig").Guid.initString("b6afa338-d779-11d9-8bde-f66bad1e3f3a");
pub const IID_IContactCollection = &IID_IContactCollection_Value;
pub const IContactCollection = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        Reset: fn(
            self: *const IContactCollection,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Next: fn(
            self: *const IContactCollection,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetCurrent: fn(
            self: *const IContactCollection,
            ppContact: **IContact,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactCollection_Reset(self: *const T) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactCollection.VTable, self.vtable).Reset(@ptrCast(*const IContactCollection, self));
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactCollection_Next(self: *const T) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactCollection.VTable, self.vtable).Next(@ptrCast(*const IContactCollection, self));
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactCollection_GetCurrent(self: *const T, ppContact: **IContact) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactCollection.VTable, self.vtable).GetCurrent(@ptrCast(*const IContactCollection, self), ppContact);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

const IID_IContactProperties_Value = @import("../zig.zig").Guid.initString("70dd27dd-5cbd-46e8-bef0-23b6b346288f");
pub const IID_IContactProperties = &IID_IContactProperties_Value;
pub const IContactProperties = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        GetString: fn(
            self: *const IContactProperties,
            pszPropertyName: [*:0]const u16,
            dwFlags: u32,
            pszValue: [*:0]u16,
            cchValue: u32,
            pdwcchPropertyValueRequired: *u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetDate: fn(
            self: *const IContactProperties,
            pszPropertyName: [*:0]const u16,
            dwFlags: u32,
            pftDateTime: *FILETIME,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetBinary: fn(
            self: *const IContactProperties,
            pszPropertyName: [*:0]const u16,
            dwFlags: u32,
            pszContentType: [*:0]u16,
            cchContentType: u32,
            pdwcchContentTypeRequired: *u32,
            ppStream: **IStream,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetLabels: fn(
            self: *const IContactProperties,
            pszArrayElementName: [*:0]const u16,
            dwFlags: u32,
            pszLabels: [*:0]u16,
            cchLabels: u32,
            pdwcchLabelsRequired: *u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetString: fn(
            self: *const IContactProperties,
            pszPropertyName: [*:0]const u16,
            dwFlags: u32,
            pszValue: [*:0]const u16,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetDate: fn(
            self: *const IContactProperties,
            pszPropertyName: [*:0]const u16,
            dwFlags: u32,
            ftDateTime: FILETIME,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetBinary: fn(
            self: *const IContactProperties,
            pszPropertyName: [*:0]const u16,
            dwFlags: u32,
            pszContentType: [*:0]const u16,
            pStream: *IStream,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        SetLabels: fn(
            self: *const IContactProperties,
            pszArrayElementName: [*:0]const u16,
            dwFlags: u32,
            dwLabelCount: u32,
            ppszLabels: [*]*PWSTR,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        CreateArrayNode: fn(
            self: *const IContactProperties,
            pszArrayName: [*:0]const u16,
            dwFlags: u32,
            fAppend: BOOL,
            pszNewArrayElementName: [*:0]u16,
            cchNewArrayElementName: u32,
            pdwcchNewArrayElementNameRequired: *u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        DeleteProperty: fn(
            self: *const IContactProperties,
            pszPropertyName: [*:0]const u16,
            dwFlags: u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        DeleteArrayNode: fn(
            self: *const IContactProperties,
            pszArrayElementName: [*:0]const u16,
            dwFlags: u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        DeleteLabels: fn(
            self: *const IContactProperties,
            pszArrayElementName: [*:0]const u16,
            dwFlags: u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetPropertyCollection: fn(
            self: *const IContactProperties,
            ppPropertyCollection: **IContactPropertyCollection,
            dwFlags: u32,
            pszMultiValueName: [*:0]const u16,
            dwLabelCount: u32,
            ppszLabels: [*]*PWSTR,
            fAnyLabelMatches: BOOL,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactProperties_GetString(self: *const T, pszPropertyName: [*:0]const u16, dwFlags: u32, pszValue: [*:0]u16, cchValue: u32, pdwcchPropertyValueRequired: *u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactProperties.VTable, self.vtable).GetString(@ptrCast(*const IContactProperties, self), pszPropertyName, dwFlags, pszValue, cchValue, pdwcchPropertyValueRequired);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactProperties_GetDate(self: *const T, pszPropertyName: [*:0]const u16, dwFlags: u32, pftDateTime: *FILETIME) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactProperties.VTable, self.vtable).GetDate(@ptrCast(*const IContactProperties, self), pszPropertyName, dwFlags, pftDateTime);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactProperties_GetBinary(self: *const T, pszPropertyName: [*:0]const u16, dwFlags: u32, pszContentType: [*:0]u16, cchContentType: u32, pdwcchContentTypeRequired: *u32, ppStream: **IStream) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactProperties.VTable, self.vtable).GetBinary(@ptrCast(*const IContactProperties, self), pszPropertyName, dwFlags, pszContentType, cchContentType, pdwcchContentTypeRequired, ppStream);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactProperties_GetLabels(self: *const T, pszArrayElementName: [*:0]const u16, dwFlags: u32, pszLabels: [*:0]u16, cchLabels: u32, pdwcchLabelsRequired: *u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactProperties.VTable, self.vtable).GetLabels(@ptrCast(*const IContactProperties, self), pszArrayElementName, dwFlags, pszLabels, cchLabels, pdwcchLabelsRequired);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactProperties_SetString(self: *const T, pszPropertyName: [*:0]const u16, dwFlags: u32, pszValue: [*:0]const u16) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactProperties.VTable, self.vtable).SetString(@ptrCast(*const IContactProperties, self), pszPropertyName, dwFlags, pszValue);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactProperties_SetDate(self: *const T, pszPropertyName: [*:0]const u16, dwFlags: u32, ftDateTime: FILETIME) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactProperties.VTable, self.vtable).SetDate(@ptrCast(*const IContactProperties, self), pszPropertyName, dwFlags, ftDateTime);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactProperties_SetBinary(self: *const T, pszPropertyName: [*:0]const u16, dwFlags: u32, pszContentType: [*:0]const u16, pStream: *IStream) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactProperties.VTable, self.vtable).SetBinary(@ptrCast(*const IContactProperties, self), pszPropertyName, dwFlags, pszContentType, pStream);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactProperties_SetLabels(self: *const T, pszArrayElementName: [*:0]const u16, dwFlags: u32, dwLabelCount: u32, ppszLabels: [*]*PWSTR) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactProperties.VTable, self.vtable).SetLabels(@ptrCast(*const IContactProperties, self), pszArrayElementName, dwFlags, dwLabelCount, ppszLabels);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactProperties_CreateArrayNode(self: *const T, pszArrayName: [*:0]const u16, dwFlags: u32, fAppend: BOOL, pszNewArrayElementName: [*:0]u16, cchNewArrayElementName: u32, pdwcchNewArrayElementNameRequired: *u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactProperties.VTable, self.vtable).CreateArrayNode(@ptrCast(*const IContactProperties, self), pszArrayName, dwFlags, fAppend, pszNewArrayElementName, cchNewArrayElementName, pdwcchNewArrayElementNameRequired);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactProperties_DeleteProperty(self: *const T, pszPropertyName: [*:0]const u16, dwFlags: u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactProperties.VTable, self.vtable).DeleteProperty(@ptrCast(*const IContactProperties, self), pszPropertyName, dwFlags);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactProperties_DeleteArrayNode(self: *const T, pszArrayElementName: [*:0]const u16, dwFlags: u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactProperties.VTable, self.vtable).DeleteArrayNode(@ptrCast(*const IContactProperties, self), pszArrayElementName, dwFlags);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactProperties_DeleteLabels(self: *const T, pszArrayElementName: [*:0]const u16, dwFlags: u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactProperties.VTable, self.vtable).DeleteLabels(@ptrCast(*const IContactProperties, self), pszArrayElementName, dwFlags);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactProperties_GetPropertyCollection(self: *const T, ppPropertyCollection: **IContactPropertyCollection, dwFlags: u32, pszMultiValueName: [*:0]const u16, dwLabelCount: u32, ppszLabels: [*]*PWSTR, fAnyLabelMatches: BOOL) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactProperties.VTable, self.vtable).GetPropertyCollection(@ptrCast(*const IContactProperties, self), ppPropertyCollection, dwFlags, pszMultiValueName, dwLabelCount, ppszLabels, fAnyLabelMatches);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

const IID_IContact_Value = @import("../zig.zig").Guid.initString("f941b671-bda7-4f77-884a-f46462f226a7");
pub const IID_IContact = &IID_IContact_Value;
pub const IContact = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        GetContactID: fn(
            self: *const IContact,
            pszContactID: [*:0]u16,
            cchContactID: u32,
            pdwcchContactIDRequired: *u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetPath: fn(
            self: *const IContact,
            pszPath: [*:0]u16,
            cchPath: u32,
            pdwcchPathRequired: *u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        CommitChanges: fn(
            self: *const IContact,
            dwCommitFlags: u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContact_GetContactID(self: *const T, pszContactID: [*:0]u16, cchContactID: u32, pdwcchContactIDRequired: *u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContact.VTable, self.vtable).GetContactID(@ptrCast(*const IContact, self), pszContactID, cchContactID, pdwcchContactIDRequired);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContact_GetPath(self: *const T, pszPath: [*:0]u16, cchPath: u32, pdwcchPathRequired: *u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContact.VTable, self.vtable).GetPath(@ptrCast(*const IContact, self), pszPath, cchPath, pdwcchPathRequired);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContact_CommitChanges(self: *const T, dwCommitFlags: u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContact.VTable, self.vtable).CommitChanges(@ptrCast(*const IContact, self), dwCommitFlags);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};

const IID_IContactPropertyCollection_Value = @import("../zig.zig").Guid.initString("ffd3adf8-fa64-4328-b1b6-2e0db509cb3c");
pub const IID_IContactPropertyCollection = &IID_IContactPropertyCollection_Value;
pub const IContactPropertyCollection = extern struct {
    pub const VTable = extern struct {
        base: IUnknown.VTable,
        Reset: fn(
            self: *const IContactPropertyCollection,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        Next: fn(
            self: *const IContactPropertyCollection,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetPropertyName: fn(
            self: *const IContactPropertyCollection,
            pszPropertyName: [*:0]u16,
            cchPropertyName: u32,
            pdwcchPropertyNameRequired: *u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetPropertyType: fn(
            self: *const IContactPropertyCollection,
            pdwType: *u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetPropertyVersion: fn(
            self: *const IContactPropertyCollection,
            pdwVersion: *u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetPropertyModificationDate: fn(
            self: *const IContactPropertyCollection,
            pftModificationDate: *FILETIME,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
        GetPropertyArrayElementID: fn(
            self: *const IContactPropertyCollection,
            pszArrayElementID: [*:0]u16,
            cchArrayElementID: u32,
            pdwcchArrayElementIDRequired: *u32,
        ) callconv(@import("std").os.windows.WINAPI) HRESULT,
    };
    vtable: *const VTable,
    pub fn MethodMixin(comptime T: type) type { return struct {
        pub usingnamespace IUnknown.MethodMixin(T);
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactPropertyCollection_Reset(self: *const T) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactPropertyCollection.VTable, self.vtable).Reset(@ptrCast(*const IContactPropertyCollection, self));
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactPropertyCollection_Next(self: *const T) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactPropertyCollection.VTable, self.vtable).Next(@ptrCast(*const IContactPropertyCollection, self));
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactPropertyCollection_GetPropertyName(self: *const T, pszPropertyName: [*:0]u16, cchPropertyName: u32, pdwcchPropertyNameRequired: *u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactPropertyCollection.VTable, self.vtable).GetPropertyName(@ptrCast(*const IContactPropertyCollection, self), pszPropertyName, cchPropertyName, pdwcchPropertyNameRequired);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactPropertyCollection_GetPropertyType(self: *const T, pdwType: *u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactPropertyCollection.VTable, self.vtable).GetPropertyType(@ptrCast(*const IContactPropertyCollection, self), pdwType);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactPropertyCollection_GetPropertyVersion(self: *const T, pdwVersion: *u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactPropertyCollection.VTable, self.vtable).GetPropertyVersion(@ptrCast(*const IContactPropertyCollection, self), pdwVersion);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactPropertyCollection_GetPropertyModificationDate(self: *const T, pftModificationDate: *FILETIME) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactPropertyCollection.VTable, self.vtable).GetPropertyModificationDate(@ptrCast(*const IContactPropertyCollection, self), pftModificationDate);
        }
        // NOTE: method is namespaced with interface name to avoid conflicts for now
        pub fn IContactPropertyCollection_GetPropertyArrayElementID(self: *const T, pszArrayElementID: [*:0]u16, cchArrayElementID: u32, pdwcchArrayElementIDRequired: *u32) callconv(.Inline) HRESULT {
            return @ptrCast(*const IContactPropertyCollection.VTable, self.vtable).GetPropertyArrayElementID(@ptrCast(*const IContactPropertyCollection, self), pszArrayElementID, cchArrayElementID, pdwcchArrayElementIDRequired);
        }
    };}
    pub usingnamespace MethodMixin(@This());
};


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
// Section: Imports (6)
//--------------------------------------------------------------------------------
const IStream = @import("structured_storage.zig").IStream;
const PWSTR = @import("system_services.zig").PWSTR;
const FILETIME = @import("windows_programming.zig").FILETIME;
const IUnknown = @import("com.zig").IUnknown;
const BOOL = @import("system_services.zig").BOOL;
const HRESULT = @import("com.zig").HRESULT;

test {
    const constant_export_count = 0;
    const type_export_count = 5;
    const enum_value_export_count = 0;
    const com_iface_id_export_count = 5;
    const com_class_id_export_count = 2;
    const func_export_count = 0;
    const unicode_alias_count = 0;
    const import_count = 6;
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