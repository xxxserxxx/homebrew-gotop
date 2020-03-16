class Gotop < Formula
  version "3.5.0"
  desc "A terminal based graphical activity monitor inspired by gtop and vtop"
  homepage "https://github.com/xxxserxxx/gotop"
  url "https://github.com/xxxserxxx/gotop/releases/download/v#{version}/gotop_v#{version}_darwin_amd64.tgz"
  sha256 "caefde24a2b8534bb9a6a05d8b886bcd32216761384026b399da1a713a22070e"

  if OS.linux?
    url "https://github.com/xxxserxxx/gotop/releases/download/v#{version}/gotop_v#{version}_linux_amd64.tgz"
    sha256 "90fd3c4b451f873a009da08b93f8dd908f1236e69adf4d91159e01136d323cd1"
  end

  def install
    mv "gotop_v#{version}_darwin_amd64", "gotop"
    bin.install "gotop"
  end
end
