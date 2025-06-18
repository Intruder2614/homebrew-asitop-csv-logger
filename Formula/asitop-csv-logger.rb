class AsitopCsvLogger < Formula
  include Language::Python::Virtualenv

  desc "CSV logger for ASITOP on Apple Silicon"
  homepage "https://github.com/Intruder2614/asitop-csv-logger"
  url "https://github.com/Intruder2614/asitop-csv-logger/releases/download/v1.1.0.8/asitop_csv_logger-1.0.8.tar.gz"

  sha256 "9fb5d522c001877517782c0b95fecf416121ab745d27ebe783e14b7dd6438f40"
  license "MIT"

  depends_on "python@3.12"

  resource "psutil" do
    url "https://files.pythonhosted.org/packages/2a/80/336820c1ad9286a4ded7e845b2eccfcb27851ab8ac6abece774a6ff4d3de/psutil-7.0.0.tar.gz"
    sha256 "7be9c3eba38beccb6495ea33afd982a44074b78f28c434a1f51cc07fd315c456"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/asitop_csv_logger", "--help"
  end
end
