class Gotop < Formula
  version "v4.0.0"
  desc "A terminal based graphical activity monitor inspired by gtop and vtop"
  homepage "https://github.com/xxxserxxx/gotop"
  url "https://github.com/xxxserxxx/gotop/releases/download/#{version}/gotop_#{version}_#{OS.linux? ? 'linux' : 'darwin'}_amd64.tgz"
  sha256 "323ecffc960e4a3d6e09caa0ee81e3a8179649a1ba68e2bf64abae7714531581"

  if OS.linux?
    sha256 "25296fb369fe977fd32fd6984a6b80b64fea29a32f35b22498c6c18716cf3b19"
  end

  def install
    bin.install "gotop"
  end
end
