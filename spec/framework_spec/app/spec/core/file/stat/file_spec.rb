require File.dirname(File.join(__rhoGetCurrentDir(), __FILE__)) + '/../../../spec_helper'
require File.dirname(File.join(__rhoGetCurrentDir(), __FILE__)) + '/../../../shared/file/file'
require File.dirname(File.join(__rhoGetCurrentDir(), __FILE__)) + '/fixtures/classes'

describe "File::Stat#file?" do
  it_behaves_like :file_file, :file?, FileStat
end
