## API Report File for "@keymanapp/kmc-analyze"

> Do not edit this file. It is a report generated by [API Extractor](https://api-extractor.com/).

```ts

import { CompilerCallbacks } from '@keymanapp/common-types';
import { CompilerEvent } from '@keymanapp/common-types';
import { Osk } from '@keymanapp/common-types';

// @public (undocumented)
export class AnalyzeOskCharacterUse {
    // Warning: (ae-forgotten-export) The symbol "AnalyzeOskCharacterUseOptions" needs to be exported by the entry point index.d.ts
    constructor(callbacks: CompilerCallbacks, options?: AnalyzeOskCharacterUseOptions);
    analyze(file: string): Promise<boolean>;
    clear(): void;
    getStrings(format?: '.txt' | '.md' | '.json'): string[];
}

// @public (undocumented)
export class AnalyzeOskRewritePua {
    constructor(callbacks: CompilerCallbacks);
    // (undocumented)
    analyze(file: string, mapping: Osk.StringResult[]): Promise<boolean>;
    // (undocumented)
    clear(): void;
    // (undocumented)
    get data(): {
        [index: string]: Uint8Array;
    };
}

// @public (undocumented)
export class AnalyzerMessages {
    // (undocumented)
    static FATAL_UnexpectedException: number;
    // (undocumented)
    static Fatal_UnexpectedException: (o: {
        e: any;
    }) => CompilerEvent;
    // (undocumented)
    static INFO_ScanningFile: number;
    // (undocumented)
    static Info_ScanningFile: (o: {
        type: string;
        name: string;
    }) => CompilerEvent;
}

// (No @packageDocumentation comment for this package)

```