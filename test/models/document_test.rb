require 'test_helper'

class DocumentTest < ActiveSupport::TestCase
  test "document attributes must not be empty" do
    document = Document.new
    assert document.invalid?
    assert document.errors[:document_type].any?
    assert document.errors[:expiration_date].any?
  end
end
