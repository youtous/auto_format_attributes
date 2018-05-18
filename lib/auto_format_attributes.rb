require "auto_format_attributes/version"

module AutoFormatAttributes
  def auto_titleize_attributes(*attributes)
    auto_modify_attributes(attributes, :titleize)
  end

  def auto_upcase_attributes(*attributes)
    auto_modify_attributes(attributes, :upcase)
  end

  def auto_downcase_attributes(*attributes)
    auto_modify_attributes(attributes, :downcase)
  end

  def auto_capitalize_attributes(*attributes)
    auto_modify_attributes(attributes, :capitalize)
  end

  private

  def auto_modify_attributes(attributes, method)
    attributes.each do |attribute|
      before_validation do |record|
        if record[attribute].respond_to? method
          record[attribute] = record[attribute].method(method).call
        end
      end
    end
  end
end

#ActiveRecord::Base.send(:extend, AutoStripAttributes) if defined? ActiveRecord
ActiveSupport.on_load(:active_record) do
  extend AutoFormatAttributes
end