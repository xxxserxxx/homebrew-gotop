class Gotop < Formula
  version "v3.5.0"
  desc "A terminal based graphical activity monitor inspired by gtop and vtop"
  homepage "https://github.com/xxxserxxx/gotop"
  url "https://github.com/xxxserxxx/gotop/releases/download/vv3.5.0/gotop_v3.5.0_darwin_amd64.tgz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  if OS.linux?
    url "https://github.com/xxxserxxx/gotop/releases/download/vv3.5.0/gotop_v3.5.0_linux_amd64.tgz"
    sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  end

  def install
    bin.install "gotop"
  end
end
