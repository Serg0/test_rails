class BaseService
  attr_reader :status

  def initialize(params)
    @status   = false
    @response = nil
    @params   = params
  end

  private

  attr_writer   :status
  attr_accessor :params
end
