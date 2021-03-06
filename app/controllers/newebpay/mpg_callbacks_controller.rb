# frozen_string_literal: true

require_dependency 'newebpay/application_controller'

module Newebpay
  class MPGCallbacksController < ApplicationController
    skip_before_action :verify_authenticity_token

    def newebpay_response
      @newebpay_response ||= Newebpay::MPG::Response.new(params['TradeInfo'])
    end

    def proceed
      unless Newebpay.config.mpg_callback.is_a? Proc
        raise NotImplementedError, 'Newebpay.config.mpg_callback is not a proc.'
      end
      raise InvalidResponseError if params['TradeInfo'].blank?

      instance_exec(Newebpay::MPG::Response.new(params['TradeInfo']), self, ::Rails.application.routes.url_helpers, &Newebpay.config.mpg_callback)
      redirect_to '/' unless performed?
    end
  end
end
