# frozen_string_literal: true

module Newebpay::QueryTrade
  class Response
    attr_reader :status, :message, :result
    def initialize(response_params)
      response_data = JSON.parse(response_params)
      @status = response_data['Status']
      @message = response_data['Message']
      @result = response_data['Result']

      @result.each do |key, values|
        define_singleton_method(key.underscore) do
          values
        end
      end
    end

    def success?
      status == 'SUCCESS'
    end

    def valid?
      check_code == expected_check_code
    end

    def expected_check_code
      Newebpay::NewebpayHelper.create_check_code(check_data_raw)
    end

    def check_data_raw
      @check_data_raw ||= URI.encode_www_form(@result.slice('Amt', 'MerchantID', 'MerchantOrderNo', 'TradeNo').sort)
    end
  end
end
