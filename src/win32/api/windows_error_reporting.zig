//! NOTE: this file is autogenerated, DO NOT MODIFY
//--------------------------------------------------------------------------------
// Section: Constants (0)
//--------------------------------------------------------------------------------

//--------------------------------------------------------------------------------
// Section: Types (29)
//--------------------------------------------------------------------------------
pub const WER_REPORT_UI = extern enum(i32) {
    WerUIAdditionalDataDlgHeader = 1,
    WerUIIconFilePath = 2,
    WerUIConsentDlgHeader = 3,
    WerUIConsentDlgBody = 4,
    WerUIOnlineSolutionCheckText = 5,
    WerUIOfflineSolutionCheckText = 6,
    WerUICloseText = 7,
    WerUICloseDlgHeader = 8,
    WerUICloseDlgBody = 9,
    WerUICloseDlgButtonText = 10,
    WerUIMax = 11,
};
pub const WerUIAdditionalDataDlgHeader = WER_REPORT_UI.WerUIAdditionalDataDlgHeader;
pub const WerUIIconFilePath = WER_REPORT_UI.WerUIIconFilePath;
pub const WerUIConsentDlgHeader = WER_REPORT_UI.WerUIConsentDlgHeader;
pub const WerUIConsentDlgBody = WER_REPORT_UI.WerUIConsentDlgBody;
pub const WerUIOnlineSolutionCheckText = WER_REPORT_UI.WerUIOnlineSolutionCheckText;
pub const WerUIOfflineSolutionCheckText = WER_REPORT_UI.WerUIOfflineSolutionCheckText;
pub const WerUICloseText = WER_REPORT_UI.WerUICloseText;
pub const WerUICloseDlgHeader = WER_REPORT_UI.WerUICloseDlgHeader;
pub const WerUICloseDlgBody = WER_REPORT_UI.WerUICloseDlgBody;
pub const WerUICloseDlgButtonText = WER_REPORT_UI.WerUICloseDlgButtonText;
pub const WerUIMax = WER_REPORT_UI.WerUIMax;

pub const WER_REGISTER_FILE_TYPE = extern enum(i32) {
    WerRegFileTypeUserDocument = 1,
    WerRegFileTypeOther = 2,
    WerRegFileTypeMax = 3,
};
pub const WerRegFileTypeUserDocument = WER_REGISTER_FILE_TYPE.WerRegFileTypeUserDocument;
pub const WerRegFileTypeOther = WER_REGISTER_FILE_TYPE.WerRegFileTypeOther;
pub const WerRegFileTypeMax = WER_REGISTER_FILE_TYPE.WerRegFileTypeMax;

pub const WER_FILE_TYPE = extern enum(i32) {
    WerFileTypeMicrodump = 1,
    WerFileTypeMinidump = 2,
    WerFileTypeHeapdump = 3,
    WerFileTypeUserDocument = 4,
    WerFileTypeOther = 5,
    WerFileTypeTriagedump = 6,
    WerFileTypeCustomDump = 7,
    WerFileTypeAuxiliaryDump = 8,
    WerFileTypeEtlTrace = 9,
    WerFileTypeMax = 10,
};
pub const WerFileTypeMicrodump = WER_FILE_TYPE.WerFileTypeMicrodump;
pub const WerFileTypeMinidump = WER_FILE_TYPE.WerFileTypeMinidump;
pub const WerFileTypeHeapdump = WER_FILE_TYPE.WerFileTypeHeapdump;
pub const WerFileTypeUserDocument = WER_FILE_TYPE.WerFileTypeUserDocument;
pub const WerFileTypeOther = WER_FILE_TYPE.WerFileTypeOther;
pub const WerFileTypeTriagedump = WER_FILE_TYPE.WerFileTypeTriagedump;
pub const WerFileTypeCustomDump = WER_FILE_TYPE.WerFileTypeCustomDump;
pub const WerFileTypeAuxiliaryDump = WER_FILE_TYPE.WerFileTypeAuxiliaryDump;
pub const WerFileTypeEtlTrace = WER_FILE_TYPE.WerFileTypeEtlTrace;
pub const WerFileTypeMax = WER_FILE_TYPE.WerFileTypeMax;

pub const WER_SUBMIT_RESULT = extern enum(i32) {
    WerReportQueued = 1,
    WerReportUploaded = 2,
    WerReportDebug = 3,
    WerReportFailed = 4,
    WerDisabled = 5,
    WerReportCancelled = 6,
    WerDisabledQueue = 7,
    WerReportAsync = 8,
    WerCustomAction = 9,
    WerThrottled = 10,
    WerReportUploadedCab = 11,
    WerStorageLocationNotFound = 12,
    WerSubmitResultMax = 13,
};
pub const WerReportQueued = WER_SUBMIT_RESULT.WerReportQueued;
pub const WerReportUploaded = WER_SUBMIT_RESULT.WerReportUploaded;
pub const WerReportDebug = WER_SUBMIT_RESULT.WerReportDebug;
pub const WerReportFailed = WER_SUBMIT_RESULT.WerReportFailed;
pub const WerDisabled = WER_SUBMIT_RESULT.WerDisabled;
pub const WerReportCancelled = WER_SUBMIT_RESULT.WerReportCancelled;
pub const WerDisabledQueue = WER_SUBMIT_RESULT.WerDisabledQueue;
pub const WerReportAsync = WER_SUBMIT_RESULT.WerReportAsync;
pub const WerCustomAction = WER_SUBMIT_RESULT.WerCustomAction;
pub const WerThrottled = WER_SUBMIT_RESULT.WerThrottled;
pub const WerReportUploadedCab = WER_SUBMIT_RESULT.WerReportUploadedCab;
pub const WerStorageLocationNotFound = WER_SUBMIT_RESULT.WerStorageLocationNotFound;
pub const WerSubmitResultMax = WER_SUBMIT_RESULT.WerSubmitResultMax;

pub const WER_REPORT_TYPE = extern enum(i32) {
    WerReportNonCritical = 0,
    WerReportCritical = 1,
    WerReportApplicationCrash = 2,
    WerReportApplicationHang = 3,
    WerReportKernel = 4,
    WerReportInvalid = 5,
};
pub const WerReportNonCritical = WER_REPORT_TYPE.WerReportNonCritical;
pub const WerReportCritical = WER_REPORT_TYPE.WerReportCritical;
pub const WerReportApplicationCrash = WER_REPORT_TYPE.WerReportApplicationCrash;
pub const WerReportApplicationHang = WER_REPORT_TYPE.WerReportApplicationHang;
pub const WerReportKernel = WER_REPORT_TYPE.WerReportKernel;
pub const WerReportInvalid = WER_REPORT_TYPE.WerReportInvalid;

pub const WER_REPORT_INFORMATION = extern struct {
    dwSize: u32,
    hProcess: HANDLE,
    wzConsentKey: [64]u16,
    wzFriendlyEventName: [128]u16,
    wzApplicationName: [128]u16,
    wzApplicationPath: [260]u16,
    wzDescription: [512]u16,
    hwndParent: HWND,
};

pub const WER_REPORT_INFORMATION_V3 = extern struct {
    dwSize: u32,
    hProcess: HANDLE,
    wzConsentKey: [64]u16,
    wzFriendlyEventName: [128]u16,
    wzApplicationName: [128]u16,
    wzApplicationPath: [260]u16,
    wzDescription: [512]u16,
    hwndParent: HWND,
    wzNamespacePartner: [64]u16,
    wzNamespaceGroup: [64]u16,
};

pub const WER_DUMP_CUSTOM_OPTIONS = extern struct {
    dwSize: u32,
    dwMask: u32,
    dwDumpFlags: u32,
    bOnlyThisThread: BOOL,
    dwExceptionThreadFlags: u32,
    dwOtherThreadFlags: u32,
    dwExceptionThreadExFlags: u32,
    dwOtherThreadExFlags: u32,
    dwPreferredModuleFlags: u32,
    dwOtherModuleFlags: u32,
    wzPreferredModuleList: [256]u16,
};

pub const WER_DUMP_CUSTOM_OPTIONS_V2 = extern struct {
    dwSize: u32,
    dwMask: u32,
    dwDumpFlags: u32,
    bOnlyThisThread: BOOL,
    dwExceptionThreadFlags: u32,
    dwOtherThreadFlags: u32,
    dwExceptionThreadExFlags: u32,
    dwOtherThreadExFlags: u32,
    dwPreferredModuleFlags: u32,
    dwOtherModuleFlags: u32,
    wzPreferredModuleList: [256]u16,
    dwPreferredModuleResetFlags: u32,
    dwOtherModuleResetFlags: u32,
};

pub const WER_REPORT_INFORMATION_V4 = extern struct {
    dwSize: u32,
    hProcess: HANDLE,
    wzConsentKey: [64]u16,
    wzFriendlyEventName: [128]u16,
    wzApplicationName: [128]u16,
    wzApplicationPath: [260]u16,
    wzDescription: [512]u16,
    hwndParent: HWND,
    wzNamespacePartner: [64]u16,
    wzNamespaceGroup: [64]u16,
    rgbApplicationIdentity: [16]u8,
    hSnapshot: HANDLE,
    hDeleteFilesImpersonationToken: HANDLE,
};

pub const WER_REPORT_INFORMATION_V5 = extern struct {
    dwSize: u32,
    hProcess: HANDLE,
    wzConsentKey: [64]u16,
    wzFriendlyEventName: [128]u16,
    wzApplicationName: [128]u16,
    wzApplicationPath: [260]u16,
    wzDescription: [512]u16,
    hwndParent: HWND,
    wzNamespacePartner: [64]u16,
    wzNamespaceGroup: [64]u16,
    rgbApplicationIdentity: [16]u8,
    hSnapshot: HANDLE,
    hDeleteFilesImpersonationToken: HANDLE,
    submitResultMax: WER_SUBMIT_RESULT,
};

pub const WER_DUMP_CUSTOM_OPTIONS_V3 = extern struct {
    dwSize: u32,
    dwMask: u32,
    dwDumpFlags: u32,
    bOnlyThisThread: BOOL,
    dwExceptionThreadFlags: u32,
    dwOtherThreadFlags: u32,
    dwExceptionThreadExFlags: u32,
    dwOtherThreadExFlags: u32,
    dwPreferredModuleFlags: u32,
    dwOtherModuleFlags: u32,
    wzPreferredModuleList: [256]u16,
    dwPreferredModuleResetFlags: u32,
    dwOtherModuleResetFlags: u32,
    pvDumpKey: *c_void,
    hSnapshot: HANDLE,
    dwThreadID: u32,
};

pub const WER_EXCEPTION_INFORMATION = extern struct {
    pExceptionPointers: *EXCEPTION_POINTERS,
    bClientPointers: BOOL,
};

pub const WER_CONSENT = extern enum(i32) {
    WerConsentNotAsked = 1,
    WerConsentApproved = 2,
    WerConsentDenied = 3,
    WerConsentAlwaysPrompt = 4,
    WerConsentMax = 5,
};
pub const WerConsentNotAsked = WER_CONSENT.WerConsentNotAsked;
pub const WerConsentApproved = WER_CONSENT.WerConsentApproved;
pub const WerConsentDenied = WER_CONSENT.WerConsentDenied;
pub const WerConsentAlwaysPrompt = WER_CONSENT.WerConsentAlwaysPrompt;
pub const WerConsentMax = WER_CONSENT.WerConsentMax;

pub const WER_DUMP_TYPE = extern enum(i32) {
    WerDumpTypeNone = 0,
    WerDumpTypeMicroDump = 1,
    WerDumpTypeMiniDump = 2,
    WerDumpTypeHeapDump = 3,
    WerDumpTypeTriageDump = 4,
    WerDumpTypeMax = 5,
};
pub const WerDumpTypeNone = WER_DUMP_TYPE.WerDumpTypeNone;
pub const WerDumpTypeMicroDump = WER_DUMP_TYPE.WerDumpTypeMicroDump;
pub const WerDumpTypeMiniDump = WER_DUMP_TYPE.WerDumpTypeMiniDump;
pub const WerDumpTypeHeapDump = WER_DUMP_TYPE.WerDumpTypeHeapDump;
pub const WerDumpTypeTriageDump = WER_DUMP_TYPE.WerDumpTypeTriageDump;
pub const WerDumpTypeMax = WER_DUMP_TYPE.WerDumpTypeMax;

pub const WER_RUNTIME_EXCEPTION_INFORMATION = extern struct {
    dwSize: u32,
    hProcess: HANDLE,
    hThread: HANDLE,
    exceptionRecord: EXCEPTION_RECORD,
    context: CONTEXT,
    pwszReportId: [*:0]const u16,
    bIsFatal: BOOL,
    dwReserved: u32,
};

pub const PFN_WER_RUNTIME_EXCEPTION_EVENT = fn(
    pContext: *c_void,
    pExceptionInformation: *const WER_RUNTIME_EXCEPTION_INFORMATION,
    pbOwnershipClaimed: *BOOL,
    pwszEventName: [*:0]u16,
    pchSize: *u32,
    pdwSignatureCount: *u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub const PFN_WER_RUNTIME_EXCEPTION_EVENT_SIGNATURE = fn(
    pContext: *c_void,
    pExceptionInformation: *const WER_RUNTIME_EXCEPTION_INFORMATION,
    dwIndex: u32,
    pwszName: [*:0]u16,
    pchName: *u32,
    pwszValue: [*:0]u16,
    pchValue: *u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub const PFN_WER_RUNTIME_EXCEPTION_DEBUGGER_LAUNCH = fn(
    pContext: *c_void,
    pExceptionInformation: *const WER_RUNTIME_EXCEPTION_INFORMATION,
    pbIsCustomDebugger: *BOOL,
    pwszDebuggerLaunch: [*:0]u16,
    pchDebuggerLaunch: *u32,
    pbIsDebuggerAutolaunch: *BOOL,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub const REPORT_STORE_TYPES = extern enum(i32) {
    E_STORE_USER_ARCHIVE = 0,
    E_STORE_USER_QUEUE = 1,
    E_STORE_MACHINE_ARCHIVE = 2,
    E_STORE_MACHINE_QUEUE = 3,
    E_STORE_INVALID = 4,
};
pub const E_STORE_USER_ARCHIVE = REPORT_STORE_TYPES.E_STORE_USER_ARCHIVE;
pub const E_STORE_USER_QUEUE = REPORT_STORE_TYPES.E_STORE_USER_QUEUE;
pub const E_STORE_MACHINE_ARCHIVE = REPORT_STORE_TYPES.E_STORE_MACHINE_ARCHIVE;
pub const E_STORE_MACHINE_QUEUE = REPORT_STORE_TYPES.E_STORE_MACHINE_QUEUE;
pub const E_STORE_INVALID = REPORT_STORE_TYPES.E_STORE_INVALID;

pub const WER_REPORT_PARAMETER = extern struct {
    Name: [129]u16,
    Value: [260]u16,
};

pub const WER_REPORT_SIGNATURE = extern struct {
    EventName: [65]u16,
    Parameters: [10]WER_REPORT_PARAMETER,
};

pub const WER_REPORT_METADATA_V2 = extern struct {
    Signature: WER_REPORT_SIGNATURE,
    BucketId: Guid,
    ReportId: Guid,
    CreationTime: FILETIME,
    SizeInBytes: u64,
    CabId: [260]u16,
    ReportStatus: u32,
    ReportIntegratorId: Guid,
    NumberOfFiles: u32,
    SizeOfFileNames: u32,
    FileNames: PWSTR,
};

pub const WER_REPORT_METADATA_V3 = extern struct {
    Signature: WER_REPORT_SIGNATURE,
    BucketId: Guid,
    ReportId: Guid,
    CreationTime: FILETIME,
    SizeInBytes: u64,
    CabId: [260]u16,
    ReportStatus: u32,
    ReportIntegratorId: Guid,
    NumberOfFiles: u32,
    SizeOfFileNames: u32,
    FileNames: PWSTR,
    FriendlyEventName: [128]u16,
    ApplicationName: [128]u16,
    ApplicationPath: [260]u16,
    Description: [512]u16,
    BucketIdString: [260]u16,
    LegacyBucketId: u64,
};

pub const WER_REPORT_METADATA_V1 = extern struct {
    Signature: WER_REPORT_SIGNATURE,
    BucketId: Guid,
    ReportId: Guid,
    CreationTime: FILETIME,
    SizeInBytes: u64,
};

pub const EFaultRepRetVal = extern enum(i32) {
    frrvOk = 0,
    frrvOkManifest = 1,
    frrvOkQueued = 2,
    frrvErr = 3,
    frrvErrNoDW = 4,
    frrvErrTimeout = 5,
    frrvLaunchDebugger = 6,
    frrvOkHeadless = 7,
    frrvErrAnotherInstance = 8,
    frrvErrNoMemory = 9,
    frrvErrDoubleFault = 10,
};
pub const frrvOk = EFaultRepRetVal.frrvOk;
pub const frrvOkManifest = EFaultRepRetVal.frrvOkManifest;
pub const frrvOkQueued = EFaultRepRetVal.frrvOkQueued;
pub const frrvErr = EFaultRepRetVal.frrvErr;
pub const frrvErrNoDW = EFaultRepRetVal.frrvErrNoDW;
pub const frrvErrTimeout = EFaultRepRetVal.frrvErrTimeout;
pub const frrvLaunchDebugger = EFaultRepRetVal.frrvLaunchDebugger;
pub const frrvOkHeadless = EFaultRepRetVal.frrvOkHeadless;
pub const frrvErrAnotherInstance = EFaultRepRetVal.frrvErrAnotherInstance;
pub const frrvErrNoMemory = EFaultRepRetVal.frrvErrNoMemory;
pub const frrvErrDoubleFault = EFaultRepRetVal.frrvErrDoubleFault;

pub const pfn_REPORTFAULT = fn(
    param0: *EXCEPTION_POINTERS,
    param1: u32,
) callconv(@import("std").os.windows.WINAPI) EFaultRepRetVal;

pub const pfn_ADDEREXCLUDEDAPPLICATIONA = fn(
    param0: [*:0]const u8,
) callconv(@import("std").os.windows.WINAPI) EFaultRepRetVal;

pub const pfn_ADDEREXCLUDEDAPPLICATIONW = fn(
    param0: [*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) EFaultRepRetVal;


//--------------------------------------------------------------------------------
// Section: Functions (41)
//--------------------------------------------------------------------------------
pub extern "wer" fn WerReportCreate(
    pwzEventType: [*:0]const u16,
    repType: WER_REPORT_TYPE,
    pReportInformation: ?*WER_REPORT_INFORMATION,
    phReportHandle: *?*c_void,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerReportSetParameter(
    hReportHandle: ?*c_void,
    dwparamID: u32,
    pwzName: ?[*:0]const u16,
    pwzValue: [*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerReportAddFile(
    hReportHandle: ?*c_void,
    pwzPath: [*:0]const u16,
    repFileType: WER_FILE_TYPE,
    dwFileFlags: u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerReportSetUIOption(
    hReportHandle: ?*c_void,
    repUITypeID: WER_REPORT_UI,
    pwzValue: [*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerReportSubmit(
    hReportHandle: ?*c_void,
    consent: WER_CONSENT,
    dwFlags: u32,
    pSubmitResult: ?*WER_SUBMIT_RESULT,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerReportAddDump(
    hReportHandle: ?*c_void,
    hProcess: HANDLE,
    hThread: HANDLE,
    dumpType: WER_DUMP_TYPE,
    pExceptionParam: ?*WER_EXCEPTION_INFORMATION,
    pDumpCustomOptions: ?*WER_DUMP_CUSTOM_OPTIONS,
    dwFlags: u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerReportCloseHandle(
    hReportHandle: ?*c_void,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerRegisterFile(
    pwzFile: [*:0]const u16,
    regFileType: WER_REGISTER_FILE_TYPE,
    dwFlags: u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerUnregisterFile(
    pwzFilePath: [*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerRegisterMemoryBlock(
    pvAddress: *c_void,
    dwSize: u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerUnregisterMemoryBlock(
    pvAddress: *c_void,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerRegisterExcludedMemoryBlock(
    address: *const c_void,
    size: u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerUnregisterExcludedMemoryBlock(
    address: *const c_void,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerRegisterCustomMetadata(
    key: [*:0]const u16,
    value: [*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerUnregisterCustomMetadata(
    key: [*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerRegisterAdditionalProcess(
    processId: u32,
    captureExtraInfoForThreadId: u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerUnregisterAdditionalProcess(
    processId: u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerRegisterAppLocalDump(
    localAppDataRelativePath: [*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerUnregisterAppLocalDump(
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerSetFlags(
    dwFlags: u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerGetFlags(
    hProcess: HANDLE,
    pdwFlags: *u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerAddExcludedApplication(
    pwzExeName: [*:0]const u16,
    bAllUsers: BOOL,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerRemoveExcludedApplication(
    pwzExeName: [*:0]const u16,
    bAllUsers: BOOL,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerRegisterRuntimeExceptionModule(
    pwszOutOfProcessCallbackDll: [*:0]const u16,
    pContext: *c_void,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "KERNEL32" fn WerUnregisterRuntimeExceptionModule(
    pwszOutOfProcessCallbackDll: [*:0]const u16,
    pContext: *c_void,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerStoreOpen(
    repStoreType: REPORT_STORE_TYPES,
    phReportStore: **c_void,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerStoreClose(
    hReportStore: ?*c_void,
) callconv(@import("std").os.windows.WINAPI) void;

pub extern "wer" fn WerStoreGetFirstReportKey(
    hReportStore: *c_void,
    ppszReportKey: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerStoreGetNextReportKey(
    hReportStore: *c_void,
    ppszReportKey: ?*?PWSTR,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerStoreQueryReportMetadataV2(
    hReportStore: *c_void,
    pszReportKey: [*:0]const u16,
    pReportMetadata: *WER_REPORT_METADATA_V2,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerStoreQueryReportMetadataV3(
    hReportStore: *c_void,
    pszReportKey: [*:0]const u16,
    pReportMetadata: *WER_REPORT_METADATA_V3,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerFreeString(
    pwszStr: [*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) void;

pub extern "wer" fn WerStorePurge(
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerStoreGetReportCount(
    hReportStore: *c_void,
    pdwReportCount: *u32,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerStoreGetSizeOnDisk(
    hReportStore: *c_void,
    pqwSizeInBytes: *u64,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerStoreQueryReportMetadataV1(
    hReportStore: *c_void,
    pszReportKey: [*:0]const u16,
    pReportMetadata: *WER_REPORT_METADATA_V1,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "wer" fn WerStoreUploadReport(
    hReportStore: *c_void,
    pszReportKey: [*:0]const u16,
    dwFlags: u32,
    pSubmitResult: ?*WER_SUBMIT_RESULT,
) callconv(@import("std").os.windows.WINAPI) HRESULT;

pub extern "faultrep" fn ReportFault(
    pep: *EXCEPTION_POINTERS,
    dwOpt: u32,
) callconv(@import("std").os.windows.WINAPI) EFaultRepRetVal;

pub extern "faultrep" fn AddERExcludedApplicationA(
    szApplication: [*:0]const u8,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "faultrep" fn AddERExcludedApplicationW(
    wszApplication: [*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) BOOL;

pub extern "faultrep" fn WerReportHang(
    hwndHungApp: HWND,
    pwzHungApplicationName: ?[*:0]const u16,
) callconv(@import("std").os.windows.WINAPI) HRESULT;


//--------------------------------------------------------------------------------
// Section: Unicode Aliases (2)
//--------------------------------------------------------------------------------
pub usingnamespace switch (@import("../zig.zig").unicode_mode) {
    .ansi => struct {
        pub const pfn_ADDEREXCLUDEDAPPLICATION = pfn_ADDEREXCLUDEDAPPLICATIONA;
        pub const AddERExcludedApplication = AddERExcludedApplicationA;
    },
    .wide => struct {
        pub const pfn_ADDEREXCLUDEDAPPLICATION = pfn_ADDEREXCLUDEDAPPLICATIONW;
        pub const AddERExcludedApplication = AddERExcludedApplicationW;
    },
    .unspecified => if (@import("builtin").is_test) struct {
        pub const pfn_ADDEREXCLUDEDAPPLICATION = *opaque{};
        pub const AddERExcludedApplication = *opaque{};
    } else struct {
        pub const pfn_ADDEREXCLUDEDAPPLICATION = @compileError("'pfn_ADDEREXCLUDEDAPPLICATION' requires that UNICODE be set to true or false in the root module");
        pub const AddERExcludedApplication = @compileError("'AddERExcludedApplication' requires that UNICODE be set to true or false in the root module");
    },
};
//--------------------------------------------------------------------------------
// Section: Imports (11)
//--------------------------------------------------------------------------------
const Guid = @import("../zig.zig").Guid;
const PWSTR = @import("system_services.zig").PWSTR;
const FILETIME = @import("windows_programming.zig").FILETIME;
const HRESULT = @import("com.zig").HRESULT;
const CONTEXT = @import("debug.zig").CONTEXT;
const HANDLE = @import("system_services.zig").HANDLE;
const EXCEPTION_POINTERS = @import("debug.zig").EXCEPTION_POINTERS;
const PSTR = @import("system_services.zig").PSTR;
const BOOL = @import("system_services.zig").BOOL;
const HWND = @import("windows_and_messaging.zig").HWND;
const EXCEPTION_RECORD = @import("debug.zig").EXCEPTION_RECORD;

test {
    // The following '_ = <FuncPtrType>' lines are a workaround for https://github.com/ziglang/zig/issues/4476
    _ = PFN_WER_RUNTIME_EXCEPTION_EVENT;
    _ = PFN_WER_RUNTIME_EXCEPTION_EVENT_SIGNATURE;
    _ = PFN_WER_RUNTIME_EXCEPTION_DEBUGGER_LAUNCH;
    _ = pfn_REPORTFAULT;
    _ = pfn_ADDEREXCLUDEDAPPLICATIONA;
    _ = pfn_ADDEREXCLUDEDAPPLICATIONW;

    const constant_export_count = 0;
    const type_export_count = 29;
    const enum_value_export_count = 70;
    const com_iface_id_export_count = 0;
    const com_class_id_export_count = 0;
    const func_export_count = 41;
    const unicode_alias_count = 2;
    const import_count = 11;
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