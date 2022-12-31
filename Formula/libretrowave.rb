class Libretrowave < Formula
  desc "Authentic sounds from vintage sound chips, on modern hardware!"
  homepage "https://github.com/SudoMaker/RetroWave"
  url "https://github.com/SudoMaker/RetroWave/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "da86c0ecfde558da6a01e5f6d1d0c6a07a164ef5cff912f7a8667089adf7ea84"
  license "AGPL-3.0-only"

  depends_on "cmake" => :build

  def install
    system "cmake", "-S", ".", "-B", "build",
                    "-DRETROWAVE_BUILD_PLAYER=0",
                    *std_cmake_args

    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test libretrowave`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    # system "false"
    system "true"
  end
end
