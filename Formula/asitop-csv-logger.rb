class AsitopCsvLogger < Formula
  include Language::Python::Virtualenv

  desc "CSV logger for ASITOP on Apple Silicon"
  homepage "https://github.com/Intruder2614/asitop-csv-logger"
  url "https://github.com/Intruder2614/asitop-csv-logger/releases/download/v1.1.0.8/asitop_csv_logger-1.0.8.tar.gz"

  sha256 "5bcfa0461f567bbdb06ee91a2ad81a4a423a0ad0beebbffcd861727ad6fa2fc7"
  license "MIT"

  depends_on "python@3.12"

   resource "psutil" do
    url "https://files.pythonhosted.org/packages/31/cf/66a6c83d1aa83a7c67d694bb498878e3d6b7a5116f9c64b3b060d6d53f27/psutil-5.9.8.tar.gz"
    sha256 "29e1e46cd2e32c4cce9f05ce71cbf4a759a05fe269f007f39c2a0df5d57380a0"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/asitop_csv_logger", "--help"
  end
end
