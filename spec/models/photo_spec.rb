require 'rails_helper'

RSpec.describe Photo, type: :model do
  describe 'attributes' do
    it 'validates presence of `title`' do
      photo = Photo.new
      photo.validate
      expect(photo.errors[:title]).to include("can't be blank") # check for presence of error

      photo.title = 'hello world'
      photo.validate
      expect(photo.errors[:title]).to eq([])
    end
  end

  describe '#to_slug' do
    it 'creates a slug when saving' do
      photo = Photo.new(title: 'hello world')
      photo.save
      expect(photo.slug).to eq('hello-world')
    end
  end
end
