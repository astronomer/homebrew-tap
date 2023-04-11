# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Astro < Formula
  desc "To build and run Airflow DAGs locally via docker-compose and deploy DAGs to Astronomer-managed Airflow clusters and interact with the Astronomer API."
  homepage "https://astronomer.io"
  version "1.13.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.13.2/astro_1.13.2_darwin_arm64.tar.gz"
      sha256 "9d1865442c7e31cbc88dce28fded2f53ca47c728e2425d12b700f572e9b238d8"
    end
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.13.2/astro_1.13.2_darwin_amd64.tar.gz"
      sha256 "f3668f508b78cb83af501084fc35b0d8e192032dffebd8d964aa6a64fe88d097"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.13.2/astro_1.13.2_linux_arm64.tar.gz"
      sha256 "9635ea5df56b663ef82d1da0aeabb4393f042643d63203c8b7c3106211363cae"
    end
    if Hardware::CPU.intel?
      url "https://github.com/astronomer/astro-cli/releases/download/v1.13.2/astro_1.13.2_linux_amd64.tar.gz"
      sha256 "59176baf47f36a7197571c436bb8f76ded96904fb6d07d4a2e08ecb95b6525ec"
    end
  end

  def install
    bin.install "astro"
  end


  test do
    system "#{bin}/astro version"
  end
end
