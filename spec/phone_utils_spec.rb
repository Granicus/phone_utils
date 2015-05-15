require 'spec_helper'

describe PhoneUtils do
  describe "#normalize_phone" do
    it "gets rid of extra characters in phone number" do
      result = PhoneUtils.normalize_number('+16661231234')
      expect(result).to eq('16661231234')
    end
  end

  describe "#denormalize_phone" do
    it "adds a + to the phone number" do
      result = PhoneUtils.denormalize_number('16661231234')
      expect(result).to eq('+16661231234')
    end

    it "gets rid of dashes and parentheses" do
      result = PhoneUtils.denormalize_number('1(666)123-1234')
      expect(result).to eq('+16661231234')
    end

    it "gets rid of whitespace" do
      result = PhoneUtils.denormalize_number('+1666 123 1234')
      expect(result).to eq('+16661231234')
    end
  end
end
