class AsitopCsvLogger < Formula
  include Language::Python::Virtualenv

  desc "CSV logger for ASITOP on Apple Silicon"
  homepage "https://github.com/Intruder2614/homebrew-asitop-csv-logger"
  url "https://github.com/Intruder2614/asitop-csv-logger/archive/refs/tags/v1.1.0.8.tar.gz"

  sha256 "004ae925fe226282fa3320b04f8860ecf2d602ab99b6b842ed37e0ab4c2978bd"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/asitop_csv_logger", "--help"
  end
end
