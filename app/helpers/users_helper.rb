module UsersHelper
  def check_gender(user)
    if user.gender == "M"
      "Mr. #{user.name}"
    else
      "Ms. #{user.name}"
    end
  end
end
