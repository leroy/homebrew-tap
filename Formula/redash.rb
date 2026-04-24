class Redash < Formula
  desc "Command-line client for the Redash REST API (agent-first)"
  homepage "https://github.com/leroy/redash"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leroy/redash/releases/download/v1.0.0/redash_1.0.0_darwin_arm64.tar.gz"
      sha256 "eba68b6ce16931f0899ede06847873089063cceacc21b73bb6305e631e361a65"
    end
    on_intel do
      url "https://github.com/leroy/redash/releases/download/v1.0.0/redash_1.0.0_darwin_x86_64.tar.gz"
      sha256 "09cdf0e37065556b86e43ee15b2e1eff75a1e51a7232d9be95cb72a621a58041"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leroy/redash/releases/download/v1.0.0/redash_1.0.0_linux_arm64.tar.gz"
      sha256 "ff2030bc949be233c346cccf59f3e309034050f5e04da8c8e448748d7b43a204"
    end
    on_intel do
      url "https://github.com/leroy/redash/releases/download/v1.0.0/redash_1.0.0_linux_x86_64.tar.gz"
      sha256 "01bf797f3d7decebfb747b204ce555453d3c0ec47b05a9419eb12d055925430e"
    end
  end

  def install
    bin.install "redash"
  end

  test do
    assert_match "redash #{version}", shell_output("#{bin}/redash version")

    # The manual is compiled into the binary; verify it's reachable without
    # needing a live Redash instance.
    assert_match "Overview", shell_output("#{bin}/redash manual --list-topics")
  end
end
