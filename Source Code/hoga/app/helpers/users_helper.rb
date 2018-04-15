module UsersHelper

  def check_data(avg_score)
    avg_score < 95 ? 'danger' : 'test'
  end

  def check_data_ac(data)
      data == 'Below Basic' ? 'danger' : 'test'
  end
end
