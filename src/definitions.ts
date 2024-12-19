export interface BackgroundDownloadPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
