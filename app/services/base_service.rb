class BaseService
  attr_reader :status, :errors, :response

  def initialize(params)
    @status   = false
    @response = nil
    @params   = params
    @errors   = []
  end

  def self.call(params)
    new(params).call
  end

  def call
    raise NotImplementedError
  end

  private

  attr_writer   :status, :errors, :response
  attr_accessor :params
end
