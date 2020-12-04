class WorkoutService
  def self.create_new(params)
    Workout.new(build_params(params))
  end

  def self.update(workout, params)
    workout.update(build_params(params))
  end

  private_class_method def self.build_params(params)
    # update_params = params.except(:photo_cloudinary_data)
    # photo_params = params[:photo_cloudinary_data]
    #
    # update_params[:photo_id] =
    #   if photo_params.present?
    #     look_up_photo_id(JSON.parse(photo_params))
    #   else
    #     params[:photo_id]
    #   end
    #
    # update_params

    update_params = params

    update_params
  end
end
