require 'spec_helper'

describe Book do
    before :each do
        @book = Book.new "Title", "Author", :category
    end

    describe "#new" do
        it "takes three parameters and returns a Book object" do
            expect(@book).to be_a Book 
        end
    end

    describe "#title" do
        it "returns the correct title" do
            @book.title { is_expected eql "Title" }
        end
    end

    describe "#author" do
        it "returns the correct author" do
            @book.author { is_expected eql "Author" }
        end
    end

    describe "#category" do
        it "returns the correct category" do
            @book.category { is_expected eql :category }
        end
    end
end
