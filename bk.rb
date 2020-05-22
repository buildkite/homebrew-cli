# Generated by https://github.com/buildkite/cli/blob/master/.github/tap-release.yml

class Bk < Formula
  homepage "https://github.com/buildkite/cli"
  desc "A command line interface for Buildkite."
  url "$STABLE_ASSET_URL"
  version "$STABLE_ASSET_SHA256"
  sha256 "580e595c67be43d95ecfd4525c0d0070ea85e8d288370af56ae6d3163c5164f3"

  def install
    mv "bk-darwin-amd64-1.1.0", "bk"
    bin.install "bk"
  end

  test do
    assert_match "bk #{version}", shell_output("#{bin}/bk --version 2>&1")
  end
end
