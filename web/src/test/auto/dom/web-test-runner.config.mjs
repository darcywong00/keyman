// @ts-check
import { devices, playwrightLauncher } from '@web/test-runner-playwright';
import { defaultReporter, summaryReporter } from '@web/test-runner';
import teamcityReporter from '@keymanapp/common-test-resources/test-runner-TC-reporter.mjs';
import { LauncherWrapper, sessionStabilityReporter } from '@keymanapp/common-test-resources/test-runner-stability-reporter.mjs';
import { importMapsPlugin } from '@web/dev-server-import-maps';
import { dirname, resolve } from 'path';
import { fileURLToPath } from 'url';
import { esbuildPlugin } from '@web/dev-server-esbuild';

const dir = dirname(fileURLToPath(import.meta.url));
const KEYMAN_ROOT = resolve(dir, '../../../../../');

/** @type {import('@web/test-runner').TestRunnerConfig} */
export default {
  // debug: true,
  browsers: [
    new LauncherWrapper(playwrightLauncher({ product: 'chromium' })),
    new LauncherWrapper(playwrightLauncher({ product: 'firefox' })),
    new LauncherWrapper(playwrightLauncher({ product: 'webkit', concurrency: 1 }))
  ],
  concurrency: 10,
  nodeResolve: true,
  // // Top-level, implicit 'default' group
  files: [
    'src/test/auto/dom/test_init_check.spec.ts',
    // '**/*.spec.html'
  ],
  groups: [
    {
      name: 'engine/attachment',
      // Relative, from the containing package.json
      files: [
        'src/test/auto/dom/cases/attachment/**/*.spec.html',
        'src/test/auto/dom/cases/attachment/**/*.spec.ts'
      ]
    },
    {
      name: 'app/browser',
      // Relative, from the containing package.json
      files: ['src/test/auto/dom/cases/browser/**/*.spec.ts']
    },
    {
      name: 'engine/dom-utils',
      // Relative, from the containing package.json
      files: ['src/test/auto/dom/cases/dom-utils/**/*.spec.ts']
    },
    {
      name: 'engine/element-wrappers',
      // Relative, from the containing package.json
      files: ['src/test/auto/dom/cases/element-wrappers/**/*.spec.ts']
    },
    {
      name: 'engine/osk',
      // Relative, from the containing package.json
      files: ['src/test/auto/dom/cases/osk/**/*.spec.ts']
    },
    {
      name: 'engine/package-cache',
      // Relative, from the containing package.json
      files: ['src/test/auto/dom/cases/packages/**/*.spec.ts']
    }
  ],
  middleware: [
    // Rewrites short-hand paths for test resources, making them fully relative to the repo root.
    function rewriteResourcePath(context, next) {
      if(context.url.startsWith('/resources/')) {
        context.url = '/web/src/test/auto' + context.url;
      }

      return next();
    }
  ],
  plugins: [
    esbuildPlugin({ts: true}),
    importMapsPlugin({
      inject: {
        importMap: {
          // Redirects `eventemitter3` imports to the bundled ESM library.  The standard import is an
          // ESM wrapper around the CommonJS implementation, and WTR fails when it hits the CommonJS.
          imports: {
            'eventemitter3': '/node_modules/eventemitter3/dist/eventemitter3.esm.js'
          }
        }
      }
    })
  ],
  reporters: [
    summaryReporter({}), /* local-dev mocha-style */
    sessionStabilityReporter({}),
    defaultReporter()
  ],
  // open: true,
  // manual: true,
  rootDir: KEYMAN_ROOT
}