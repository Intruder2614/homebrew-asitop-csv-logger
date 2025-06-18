class AsitopCsvLogger < Formula
  include Language::Python::Virtualenv

  desc "CSV logger for ASITOP on Apple Silicon"
  homepage "https://github.com/Intruder2614/homebrew-asitop-csv-logger"
  url "https://github.com/Intruder2614/asitop-csv-logger/releases/download/v1.1.0.8/asitop_csv_logger-1.0.8.tar.gz"

  sha256 "5bcfa0461f567bbdb06ee91a2ad81a4a423a0ad0beebbffcd861727ad6fa2fc7"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/asitop_csv_logger", "--help"
  end
end
