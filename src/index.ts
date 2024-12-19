import { registerPlugin } from '@capacitor/core';

import type { BackgroundDownloadPlugin } from './definitions';

const BackgroundDownload = registerPlugin<BackgroundDownloadPlugin>('BackgroundDownload', {
  web: () => import('./web').then((m) => new m.BackgroundDownloadWeb()),
});

export * from './definitions';
export { BackgroundDownload };
