## API Report File for "@keymanapp/kmc-kmn"

> Do not edit this file. It is a report generated by [API Extractor](https://api-extractor.com/).

```ts

import { CompilerCallbacks } from '@keymanapp/common-types';
import { CompilerEvent } from '@keymanapp/common-types';
import { CompilerOptions } from '@keymanapp/common-types';
import { KeymanCompiler } from '@keymanapp/common-types';
import { KeymanCompilerArtifactOptional } from '@keymanapp/common-types';
import { KeymanCompilerArtifacts } from '@keymanapp/common-types';
import { KeymanCompilerResult } from '@keymanapp/common-types';
import { Osk } from '@keymanapp/common-types';
import { UnicodeSet } from '@keymanapp/common-types';
import { UnicodeSetParser } from '@keymanapp/common-types';

// @public (undocumented)
export class CompilerMessages {
    // (undocumented)
    static ERROR_FileNotFound: number;
    // (undocumented)
    static Error_FileNotFound: (o: {
        filename: string;
    }) => CompilerEvent;
    // (undocumented)
    static ERROR_InvalidDisplayMapFile: number;
    // (undocumented)
    static Error_InvalidDisplayMapFile: (o: {
        filename: string;
        e: any;
    }) => CompilerEvent;
    // (undocumented)
    static ERROR_InvalidKvkFile: number;
    // (undocumented)
    static Error_InvalidKvkFile: (o: {
        filename: string;
        e: any;
    }) => CompilerEvent;
    // (undocumented)
    static ERROR_InvalidKvksFile: number;
    // (undocumented)
    static Error_InvalidKvksFile: (o: {
        filename: string;
        e: any;
    }) => CompilerEvent;
    // (undocumented)
    static ERROR_UnicodeSetHasProperties: number;
    // (undocumented)
    static Error_UnicodeSetHasProperties: () => CompilerEvent;
    // (undocumented)
    static ERROR_UnicodeSetHasStrings: number;
    // (undocumented)
    static Error_UnicodeSetHasStrings: () => CompilerEvent;
    // (undocumented)
    static ERROR_UnicodeSetSyntaxError: number;
    // (undocumented)
    static Error_UnicodeSetSyntaxError: () => CompilerEvent;
    // (undocumented)
    static FATAL_CallbacksNotSet: number;
    // (undocumented)
    static Fatal_CallbacksNotSet: () => CompilerEvent;
    // (undocumented)
    static FATAL_MissingWasmModule: number;
    // (undocumented)
    static Fatal_MissingWasmModule: (o: {
        e?: any;
    }) => CompilerEvent;
    // (undocumented)
    static FATAL_UnableToSetCompilerOptions: number;
    // (undocumented)
    static Fatal_UnableToSetCompilerOptions: () => CompilerEvent;
    // (undocumented)
    static FATAL_UnexpectedException: number;
    // (undocumented)
    static Fatal_UnexpectedException: (o: {
        e: any;
    }) => CompilerEvent;
    // (undocumented)
    static FATAL_UnicodeSetOutOfRange: number;
    // (undocumented)
    static Fatal_UnicodeSetOutOfRange: () => CompilerEvent;
    // (undocumented)
    static WARN_InvalidVkeyInKvksFile: number;
    // (undocumented)
    static Warn_InvalidVkeyInKvksFile: (o: {
        filename: string;
        invalidVkey: string;
    }) => CompilerEvent;
}

// @public (undocumented)
export class KmnCompiler implements KeymanCompiler, UnicodeSetParser {
    constructor();
    static fixNewPattern(pattern: string): string;
    // Warning: (ae-forgotten-export) The symbol "KmnCompilerOptions" needs to be exported by the entry point main.d.ts
    //
    // (undocumented)
    init(callbacks: CompilerCallbacks, options: KmnCompilerOptions): Promise<boolean>;
    // (undocumented)
    parseUnicodeSet(pattern: string, rangeCount: number): UnicodeSet | null;
    // Warning: (ae-forgotten-export) The symbol "KmnCompilerResult" needs to be exported by the entry point main.d.ts
    //
    // (undocumented)
    run(infile: string, outfile: string): Promise<KmnCompilerResult>;
    // (undocumented)
    sizeUnicodeSet(pattern: string): number;
    // (undocumented)
    testSentry(): any;
    verifyInitialized(): boolean;
    // Warning: (ae-forgotten-export) The symbol "KmnCompilerArtifacts" needs to be exported by the entry point main.d.ts
    //
    // (undocumented)
    write(artifacts: KmnCompilerArtifacts): Promise<boolean>;
}

// @public
export class KmnCompilerMessages {
    // (undocumented)
    static ERROR_140FeatureOnlyContextAndNotAnyWeb: number;
    // (undocumented)
    static ERROR_501FeatureOnly_Call: number;
    // (undocumented)
    static ERROR_60FeatureOnly_Contextn: number;
    // (undocumented)
    static ERROR_60FeatureOnly_EthnologueCode: number;
    // (undocumented)
    static ERROR_60FeatureOnly_MnemonicLayout: number;
    // (undocumented)
    static ERROR_60FeatureOnly_NamedCodes: number;
    // (undocumented)
    static ERROR_60FeatureOnly_OldCharPosMatching: number;
    // (undocumented)
    static ERROR_60FeatureOnly_VirtualCharKey: number;
    // (undocumented)
    static ERROR_70FeatureOnly: number;
    // (undocumented)
    static ERROR_80FeatureOnly: number;
    // (undocumented)
    static ERROR_90FeatureOnly_IfSystemStores: number;
    // (undocumented)
    static ERROR_90FeatureOnly_SetSystemStores: number;
    // (undocumented)
    static ERROR_90FeatureOnlyEmbedCSS: number;
    // (undocumented)
    static ERROR_90FeatureOnlyKeyboardVersion: number;
    // (undocumented)
    static ERROR_90FeatureOnlyLayoutFile: number;
    // (undocumented)
    static ERROR_90FeatureOnlyTargets: number;
    // (undocumented)
    static ERROR_90FeatureOnlyVirtualKeyDictionary: number;
    // (undocumented)
    static ERROR_AnyInVirtualKeySection: number;
    // (undocumented)
    static ERROR_BeepInVirtualKeySection: number;
    // (undocumented)
    static ERROR_CallInVirtualKeySection: number;
    // (undocumented)
    static ERROR_CannotLoadIncludeFile: number;
    // (undocumented)
    static ERROR_CannotReadBitmapFile: number;
    // (undocumented)
    static ERROR_CannotReadInfile: number;
    // (undocumented)
    static ERROR_CannotUseReadWriteGroupFromReadonlyGroup: number;
    // (undocumented)
    static ERROR_CasedKeysMustContainOnlyVirtualKeys: number;
    // (undocumented)
    static ERROR_CasedKeysMustNotIncludeShiftStates: number;
    // (undocumented)
    static ERROR_CasedKeysNotSupportedWithMnemonicLayout: number;
    // (undocumented)
    static ERROR_CharacterExpansionMustBeFollowedByCharacter: number;
    // (undocumented)
    static ERROR_CodeInvalidInKeyStore: number;
    // (undocumented)
    static ERROR_CodeInvalidInThisSection: number;
    // (undocumented)
    static ERROR_ContextAndIndexInvalidInMatchNomatch: number;
    // (undocumented)
    static ERROR_ContextExHasInvalidOffset: number;
    // (undocumented)
    static ERROR_ContextInVirtualKeySection: number;
    // (undocumented)
    static ERROR_DuplicateGroup: number;
    // (undocumented)
    static ERROR_DuplicateStore: number;
    // (undocumented)
    static ERROR_ExpansionMustBePositive: number;
    // (undocumented)
    static ERROR_ExpansionMustFollowCharacterOrVKey: number;
    // (undocumented)
    static ERROR_GroupDoesNotExist: number;
    // (undocumented)
    static ERROR_IfSystemStore_NotFound: number;
    // (undocumented)
    static ERROR_IndexDoesNotPointToAny: number;
    // (undocumented)
    static ERROR_IndexInVirtualKeySection: number;
    // (undocumented)
    static ERROR_InfileNotExist: number;
    // (undocumented)
    static ERROR_InvalidAny: number;
    // (undocumented)
    static ERROR_InvalidBegin: number;
    // (undocumented)
    static ERROR_InvalidBitmapLine: number;
    // (undocumented)
    static ERROR_InvalidCall: number;
    // (undocumented)
    static ERROR_InvalidCharacter: number;
    // (undocumented)
    static ERROR_InvalidCodeInKeyPartOfRule: number;
    // (undocumented)
    static ERROR_InvalidCopyright: number;
    // (undocumented)
    static ERROR_InvalidDeadkey: number;
    // (undocumented)
    static ERROR_InvalidEthnologueCode: number;
    // (undocumented)
    static ERROR_InvalidGroupLine: number;
    // (undocumented)
    static ERROR_InvalidIf: number;
    // (undocumented)
    static ERROR_InvalidIndex: number;
    // (undocumented)
    static ERROR_InvalidInVirtualKeySection: number;
    // (undocumented)
    static ERROR_InvalidKeyCode: number;
    // (undocumented)
    static ERROR_InvalidLanguageLine: number;
    // (undocumented)
    static ERROR_InvalidLanguageName: number;
    // (undocumented)
    static ERROR_InvalidLayoutLine: number;
    // (undocumented)
    static ERROR_InvalidLineContinuation: number;
    // (undocumented)
    static ERROR_InvalidMessage: number;
    // (undocumented)
    static ERROR_InvalidName: number;
    // (undocumented)
    static ERROR_InvalidNamedCode: number;
    // (undocumented)
    static ERROR_InvalidOuts: number;
    // (undocumented)
    static ERROR_InvalidReset: number;
    // (undocumented)
    static ERROR_InvalidSave: number;
    // (undocumented)
    static ERROR_InvalidSet: number;
    // (undocumented)
    static ERROR_InvalidStoreLine: number;
    // (undocumented)
    static ERROR_InvalidSwitch: number;
    // (undocumented)
    static ERROR_InvalidSystemStore: number;
    // (undocumented)
    static ERROR_InvalidToken: number;
    // (undocumented)
    static ERROR_InvalidTouchLayoutFile: number;
    // (undocumented)
    static ERROR_InvalidUse: number;
    // (undocumented)
    static ERROR_InvalidValue: number;
    // (undocumented)
    static ERROR_InvalidVersion: number;
    // (undocumented)
    static ERROR_KeyboardVersionFormatInvalid: number;
    // (undocumented)
    static ERROR_LayoutButNoLanguage: number;
    // (undocumented)
    static ERROR_LineTooLong: number;
    // (undocumented)
    static ERROR_NewContextGroupMustBeReadonly: number;
    // (undocumented)
    static ERROR_NoTokensFound: number;
    // (undocumented)
    static ERROR_NotSupportedInKeymanWebContext: number;
    // (undocumented)
    static ERROR_NotSupportedInKeymanWebOutput: number;
    // (undocumented)
    static ERROR_NotSupportedInKeymanWebStore: number;
    // (undocumented)
    static ERROR_NoVersionLine: number;
    // (undocumented)
    static ERROR_OutputInReadonlyGroup: number;
    // (undocumented)
    static ERROR_OutsInVirtualKeySection: number;
    // (undocumented)
    static ERROR_PostKeystrokeGroupMustBeReadonly: number;
    // (undocumented)
    static ERROR_RepeatedBegin: number;
    // (undocumented)
    static ERROR_ReservedCharacter: number;
    // (undocumented)
    static ERROR_SetSystemStore_NotFound: number;
    // (undocumented)
    static ERROR_StatementNotPermittedInReadonlyGroup: number;
    // (undocumented)
    static ERROR_StoreDoesNotExist: number;
    // (undocumented)
    static ERROR_StringInVirtualKeySection: number;
    // (undocumented)
    static ERROR_TooManyIndexToKeyRefs: number;
    // (undocumented)
    static ERROR_TouchLayoutInvalidIdentifier: number;
    // (undocumented)
    static ERROR_UnterminatedString: number;
    // (undocumented)
    static ERROR_VersionAlreadyIncluded: number;
    // (undocumented)
    static ERROR_VirtualCharacterKeysNotSupportedInKeymanWeb: number;
    // (undocumented)
    static ERROR_VirtualKeyInContext: number;
    // (undocumented)
    static ERROR_VirtualKeyNotAllowedHere: number;
    // (undocumented)
    static ERROR_VirtualKeysNotValidForMnemonicLayouts: number;
    // (undocumented)
    static ERROR_VKeyExpansionMustBeFollowedByVKey: number;
    // (undocumented)
    static ERROR_VKeyExpansionMustUseConsistentShift: number;
    // (undocumented)
    static ERROR_ZeroLengthString: number;
    // (undocumented)
    static FATAL_BadCallParams: number;
    // (undocumented)
    static FATAL_Break: number;
    // (undocumented)
    static FATAL_BufferOverflow: number;
    // (undocumented)
    static FATAL_CannotAllocateMemory: number;
    // (undocumented)
    static FATAL_CannotCreateTempfile: number;
    // (undocumented)
    static FATAL_SomewhereIGotItWrong: number;
    // (undocumented)
    static FATAL_UnableToWriteFully: number;
    // (undocumented)
    static HINT_NonUnicodeFile: number;
    // (undocumented)
    static HINT_UnreachableKeyCode: number;
    // (undocumented)
    static HINT_UnreachableRule: number;
    // (undocumented)
    static INFO_EndOfFile: number;
    // (undocumented)
    static INFO_Info: number;
    // (undocumented)
    static INFO_None: number;
    // (undocumented)
    static WARN_ANSIInUnicodeGroup: number;
    // (undocumented)
    static WARN_BitmapNotUsed: number;
    // (undocumented)
    static WARN_CouldNotCopyJsonFile: number;
    // (undocumented)
    static WARN_CustomLanguagesNotSupported: number;
    // (undocumented)
    static WARN_DontMixChiralAndNonChiralModifiers: number;
    // (undocumented)
    static WARN_EmbedJsFileMissing: number;
    // (undocumented)
    static WARN_ExtendedShiftFlagsNotSupportedInKeymanWeb: number;
    // (undocumented)
    static WARN_HeaderStatementIsDeprecated: number;
    // (undocumented)
    static WARN_HelpFileMissing: number;
    // (undocumented)
    static WARN_HotkeyHasInvalidModifier: number;
    // (undocumented)
    static WARN_IfShouldBeAtStartOfContext: number;
    // (undocumented)
    static WARN_IndexStoreShort: number;
    // (undocumented)
    static WARN_InvalidJSONMetadataFile: number;
    // (undocumented)
    static WARN_JSONMetadataOSKFontShouldMatchTouchFont: number;
    // (undocumented)
    static WARN_KeyBadLength: number;
    // (undocumented)
    static WARN_KeyShouldIncludeNCaps: number;
    // (undocumented)
    static WARN_KVKFileIsInSourceFormat: number;
    // (undocumented)
    static WARN_LanguageHeadersDeprecatedInKeyman10: number;
    // (undocumented)
    static WARN_MixingLeftAndRightModifiers: number;
    // (undocumented)
    static WARN_NulNotFirstStatementInContext: number;
    // (undocumented)
    static WARN_OldVersion: number;
    // (undocumented)
    static WARN_OptionStoreNameInvalid: number;
    // (undocumented)
    static WARN_PlatformNotInTargets: number;
    // (undocumented)
    static WARN_PunctuationInEthnologueCode: number;
    // (undocumented)
    static WARN_ReservedCharacter: number;
    // (undocumented)
    static WARN_StoreAlreadyUsedAsOptionOrCall: number;
    // (undocumented)
    static WARN_StoreAlreadyUsedAsStoreOrCall: number;
    // (undocumented)
    static WARN_StoreAlreadyUsedAsStoreOrOption: number;
    // (undocumented)
    static WARN_TooManyErrorsOrWarnings: number;
    // (undocumented)
    static WARN_TooManyWarnings: number;
    // (undocumented)
    static WARN_TouchLayoutCustomKeyNotDefined: number;
    // (undocumented)
    static WARN_TouchLayoutFileMissing: number;
    // (undocumented)
    static WARN_TouchLayoutFontShouldBeSameForAllPlatforms: number;
    // (undocumented)
    static WARN_TouchLayoutMissingLayer: number;
    // (undocumented)
    static WARN_TouchLayoutMissingRequiredKeys: number;
    // (undocumented)
    static WARN_TouchLayoutSpecialLabelOnNormalKey: number;
    // (undocumented)
    static WARN_TouchLayoutUnidentifiedKey: number;
    // (undocumented)
    static WARN_UnicodeInANSIGroup: number;
    // (undocumented)
    static WARN_UnicodeSurrogateUsed: number;
    // (undocumented)
    static WARN_UseNotLastStatementInRule: number;
    // (undocumented)
    static WARN_VirtualCharKeyWithPositionalLayout: number;
    // (undocumented)
    static WARN_VirtualKeyInOutput: number;
    // (undocumented)
    static WARN_VirtualKeyWithMnemonicLayout: number;
    // (undocumented)
    static WARN_VisualKeyboardFileMissing: number;
}

// @public (undocumented)
export class KmwCompilerMessages extends KmnCompilerMessages {
    // (undocumented)
    static Error_InvalidBegin: () => CompilerEvent;
    // (undocumented)
    static Error_InvalidKeyCode: (o: {
        keyId: string;
    }) => CompilerEvent;
    // (undocumented)
    static Error_InvalidTouchLayoutFile: (o: {
        filename: string;
    }) => CompilerEvent;
    // (undocumented)
    static ERROR_InvalidTouchLayoutFileFormat: number;
    // (undocumented)
    static Error_InvalidTouchLayoutFileFormat: (o: {
        msg: string;
    }) => CompilerEvent;
    // (undocumented)
    static ERROR_NotAnyRequiresVersion14: number;
    // (undocumented)
    static Error_NotAnyRequiresVersion14: (o: {
        line: number;
    }) => CompilerEvent;
    // (undocumented)
    static Error_NotSupportedInKeymanWebContext: (o: {
        line: number;
        code: String;
    }) => CompilerEvent;
    // (undocumented)
    static Error_NotSupportedInKeymanWebOutput: (o: {
        line: number;
        code: string;
    }) => CompilerEvent;
    // (undocumented)
    static Error_NotSupportedInKeymanWebStore: (o: {
        code: string;
        store: string;
    }) => CompilerEvent;
    // (undocumented)
    static ERROR_TouchLayoutFileDoesNotExist: number;
    // (undocumented)
    static Error_TouchLayoutFileDoesNotExist: (o: {
        filename: string;
    }) => CompilerEvent;
    // (undocumented)
    static ERROR_TouchLayoutIdentifierRequires15: number;
    // (undocumented)
    static Error_TouchLayoutIdentifierRequires15: (o: {
        keyId: string;
        platformName: string;
        layerId: string;
    }) => CompilerEvent;
    // (undocumented)
    static Error_TouchLayoutInvalidIdentifier: (o: {
        keyId: string;
        platformName: string;
        layerId: string;
    }) => CompilerEvent;
    // (undocumented)
    static Error_VirtualCharacterKeysNotSupportedInKeymanWeb: (o: {
        line: number;
    }) => CompilerEvent;
    // (undocumented)
    static Error_VirtualKeysNotValidForMnemonicLayouts: (o: {
        line: number;
    }) => CompilerEvent;
    // (undocumented)
    static HINT_TouchLayoutUsesUnsupportedGesturesDownlevel: number;
    // (undocumented)
    static Hint_TouchLayoutUsesUnsupportedGesturesDownlevel: (o: {
        keyId: string;
    }) => CompilerEvent;
    // (undocumented)
    static Hint_UnreachableKeyCode: (o: {
        line: number;
        key: string;
    }) => CompilerEvent;
    // (undocumented)
    static Warn_DontMixChiralAndNonChiralModifiers: () => CompilerEvent;
    // (undocumented)
    static Warn_EmbedJsFileMissing: (o: {
        line: number;
        jsFilename: string;
        e: any;
    }) => CompilerEvent;
    // (undocumented)
    static Warn_ExtendedShiftFlagsNotSupportedInKeymanWeb: (o: {
        line: number;
        flags: string;
    }) => CompilerEvent;
    // (undocumented)
    static Warn_HelpFileMissing: (o: {
        line: number;
        helpFilename: string;
        e: any;
    }) => CompilerEvent;
    // (undocumented)
    static Warn_OptionStoreNameInvalid: (o: {
        name: string;
    }) => CompilerEvent;
    // (undocumented)
    static Warn_TouchLayoutCustomKeyNotDefined: (o: {
        keyId: string;
        platformName: string;
        layerId: string;
    }) => CompilerEvent;
    // (undocumented)
    static Warn_TouchLayoutFontShouldBeSameForAllPlatforms: () => CompilerEvent;
    // (undocumented)
    static Warn_TouchLayoutMissingLayer: (o: {
        keyId: string;
        platformName: string;
        layerId: string;
        nextLayer: string;
    }) => CompilerEvent;
    // (undocumented)
    static Warn_TouchLayoutMissingRequiredKeys: (o: {
        layerId: string;
        platformName: string;
        missingKeys: string;
    }) => CompilerEvent;
    // (undocumented)
    static Warn_TouchLayoutSpecialLabelOnNormalKey: (o: {
        keyId: string;
        platformName: string;
        layerId: string;
        label: string;
    }) => CompilerEvent;
    // (undocumented)
    static Warn_TouchLayoutUnidentifiedKey: (o: {
        layerId: string;
    }) => CompilerEvent;
}

// (No @packageDocumentation comment for this package)

```