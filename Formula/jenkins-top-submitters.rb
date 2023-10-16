# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class JenkinsTopSubmitters < Formula
  desc "Jenkins Submitter Pivot Table analyzer."
  homepage "https://github.com/jmMeessen/jenkins-top-submitters"
  version "1.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jmMeessen/jenkins-top-submitters/releases/download/v1.2.4/jenkins-top-submitters_1.2.4_darwin_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "7894e5b2fabdfb69f27fce811ef8126f0102fc8c37299cf4ceb6a1b314c766dd"

      def install
        bin.install "jenkins-top-submitters"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jmMeessen/jenkins-top-submitters/releases/download/v1.2.4/jenkins-top-submitters_1.2.4_darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "7fea7ba8518000f6dea85cc229291c6c4dd57f001357ce6ebe6cf2a3bb8f813f"

      def install
        bin.install "jenkins-top-submitters"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/jmMeessen/jenkins-top-submitters/releases/download/v1.2.4/jenkins-top-submitters_1.2.4_linux_amd64.tar.gz", using: CurlDownloadStrategy
      sha256 "e67ee3a93bd48ccd59e644da870952a578f3419043c49cf32024ecf50913e19d"

      def install
        bin.install "jenkins-top-submitters"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/jmMeessen/jenkins-top-submitters/releases/download/v1.2.4/jenkins-top-submitters_1.2.4_linux_armv6.tar.gz", using: CurlDownloadStrategy
      sha256 "7edea5d60c63c5145ef96677133d5b593cb99c080b2d4fd221237366237fbe10"

      def install
        bin.install "jenkins-top-submitters"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/jmMeessen/jenkins-top-submitters/releases/download/v1.2.4/jenkins-top-submitters_1.2.4_linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "bb091a41707ff9b459c36120836228a0eead29daea3542d9f78387e7336a2021"

      def install
        bin.install "jenkins-top-submitters"
      end
    end
  end

  test do
    system "#{bin}/jenkins-top-submitters version -d"
  end
end
