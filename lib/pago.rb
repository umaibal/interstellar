require 'ostruct'
class Pago
    def self.make_payment(order_id:,
                        payment_method:,
                        payment_details:)
        
        case payment_method
        when :credit_card 
            Rails.logger.info "Processing credit_card: " +
                payment_details.fetch(:cc_number).to_s + "/" +
                payment_details.fetch(:expiration_month).to_s + "/" +
                payment_details.fetch(:expiration_year).to_s
        when :debit_card 
            Rails.logger.info "Processing credit_card: " +
                payment_details.fetch(:dc_num).to_s + "/" +
                payment_details.fetch(:expiration_month).to_s + "/" +
                payment_details.fetch(:expiration_year).to_s
        when :po
            Rails.logger.info "Processing purchase order: " +
                payment_details.fetch(:username) + 
                payment_details.fetch(:password) 
        else 
            raise "Unknown payment_method #{payment_method}"
        end 
        sleep 3 unless Rails.env.test?
        Rails.logger.info "Done Processing Payment" 
        OpenStruct.new(succeeded?: true)
    end
end