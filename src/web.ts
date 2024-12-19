import { WebPlugin } from '@capacitor/core';

import type { BackgroundDownloadPlugin } from './definitions';

export class BackgroundDownloadWeb extends WebPlugin implements BackgroundDownloadPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
