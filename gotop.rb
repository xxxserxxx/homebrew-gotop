class Gotop < Formula
  version "3.3.2"
  desc "A terminal based graphical activity monitor inspired by gtop and vtop"
  homepage "https://github.com/xxxserxxx/gotop"
  url "https://github.com/xxxserxxx/gotop/releases/download/v#{version}/gotop_#{version}_darwin_amd64.tgz"
  sha256 "aaf63438179befa1b19515258910a64317126be9348040298e87162998645d46"

  if OS.linux?
    url "https://github.com/xxxserxxx/gotop/releases/download/v#{version}/gotop_#{version}_linux_amd64.tgz"
    sha256 "768766ed3a366f48412498314bbe1b341629dde09de18121f787b52d5f52775b"
  end

  def install
    bin.install "gotop"
  end
end
