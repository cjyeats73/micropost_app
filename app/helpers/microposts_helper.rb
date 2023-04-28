module MicropostsHelper
    def username_for(user_id)
        @user = User.find_by_id(user_id)
        if !user.nil?
            @user.name
        else
            "orphan"
        end
    end
end
