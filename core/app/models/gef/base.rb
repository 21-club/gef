# frozen_string_literal: true

module Gef
  class Base < ActiveRecord::Base
    self.abstract_class = true
  end
end
