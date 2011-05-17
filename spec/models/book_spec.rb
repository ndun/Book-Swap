require 'spec_helper'

describe Book do
#  pending "add some examples to (or delete) #{__FILE__}"
  before do
    @valid_attributes = {:Title => "Oliver Twist", :Author => "Charles Dickens"}
  end

  it "can be created with a title and a author" do
#    Book.create!(:Title => 'Oliver Twist', :Author => 'Charles Dickens')
    Book.create!(@valid_attributes)
  end
  
  it "should require a title" do
    @invalid = @valid_attributes
    @invalid.delete(:Title)
    b = Book.new(@invalid)
    b.should_not be_valid
  end
  
  it "should require an author" do
    @invalid = @valid_attributes
    @invalid.delete(:Author)
    b = Book.new(@invalid)
    b.should_not be_valid
  end
end
