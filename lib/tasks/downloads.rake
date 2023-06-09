# frozen_string_literal: true

desc "find newest mac and windows binary downloads"
task downloads: %i[windows_downloads mac_downloads]

desc "find latest windows version"
task windows_downloads: :environment do
  Rails.logger = Logger.new($stdout)
  DownloadService.download_windows_versions
end

desc "find latest mac version"
task mac_downloads: :environment do
  Rails.logger = Logger.new($stdout)
  DownloadService.download_mac_versions
end
