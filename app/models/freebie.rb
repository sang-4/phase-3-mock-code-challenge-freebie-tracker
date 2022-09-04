class Freebie < ActiveRecord::Base
    belongs_to :company
    belongs_to :dev

    def self.print_details
        Freebie.all.map do |freebie_row|
        "#{freebie_row.dev.name} owns a #{freebie_row.item_name} from #{freebie_row.company.name}"
    end

    def print_details
        "#{self.dev.name} owns a #{self.item_name} from  #{self.company.name}"
    end
end
