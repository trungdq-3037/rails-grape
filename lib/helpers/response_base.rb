module ResponseBase
  def greeting
    puts 'abc'
  end

  def response_in_success(payload, entity, status = :ok)
    status status
    present payload, entity
  end

  def response_in_failure(message, status = :bad_request)
    status status
    present message
  end
end
