class Besu < Formula
  desc "hyperledger besu ethereum client"
  homepage "https://github.com/hyperledger/besu"
  url "https://hyperledger.jfrog.io/artifactory/besu-binaries/besu/20.10.3/besu-20.10.3.zip"
  # update with: ./updateBesu.sh <new-version>
  sha256 "b5f46d945754dedcbbb1e5dd96bf2bfd13272ff09c6a66c0150b979a578f4389"

  depends_on "openjdk" => "11+"

  def install
    prefix.install "lib"
    bin.install "bin/besu"
  end

  test do
    system "#{bin}/besu" "--version"
  end
end
