class AsitopCsvLogger < Formula
  include Language::Python::Virtualenv

  desc "CSV logger for ASITOP on Apple Silicon"
  homepage "https://github.com/Intruder2614/homebrew-asitop-csv-logger"
  url "https://github.com/Intruder2614/homebrew-asitop-csv-logger/releases/download/v1.0.8/asitop_csv_logger-1.0.8.tar.gz"
  sha256 "c250fa450d85cd866b36bcf7c2804ab8831084c09d160c4dc4c5a40746a7be66"
  license "MIT"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/asitop_csv_logger", "--help"
  end
end
