module DownloadHelper
  TIMEOUT = 10
  PATH    = ("#{Dir.pwd}/features/downloads")

  extend self

  def downloads
    Dir[PATH.join("*")]
  end

  def download_path
    wait_for_download
    downloads.first
  end

  def download_content
    wait_for_download
    File.read(download_path)
  end

  def wait_for_download
    Timeout.timeout(TIMEOUT) do
      sleep 0.1 until downloaded?
    end
  end

  def downloaded?
    downloads.any? && !downloading?
  end

  def downloading?
    downloads.grep(/\.crdownload$/).any?
  end

  def clear_downloads
    FileUtils.rm_f(downloads)
  end

end

